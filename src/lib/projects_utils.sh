#!/bin/bash

## Define default value for variable, take two arguments, $1 variable name,
## $2 default variable value, if the variable is not already define define it
## with default value.
function define_default_value()
{
	VAR_NAME="${1}"
	DEFAULT_VALUE="${2}"

	[ -z "${!VAR_NAME}" ] && export ${VAR_NAME}="${DEFAULT_VALUE}"
}

## Each project must define an unique positive integer ID and stick to that for
## it's whole lifetime, changing a project ID will result in all sort of
## unexpected problems, such as broken links.
define_default_value PROJECT_ID 0

## This will influence sorting orger of projects, higher priority means the
## project will be presented to the visitors before others project with less
## priority, if two projects have the same priority which one will be presented
## before is non-deterministic.
define_default_value PROJECT_DISPLAY_PRIORITY 0

define_default_value PROJECT_TITLE ""
define_default_value PROJECT_CATEGORY "photography" # photography | communication
define_default_value COVER_IMAGE "UNDEFINED COVER IMAGE"
define_default_value IMAGES_SOURCE_DIR "UNDEFINED IMAGE SOURCE DIR"

## Tell Astro to use specific format for the images of the current project,
## instead of relying on Astro criteria. As example some drawings may display
## much better with a lossless compression format such as PNG.
define_default_value IMAGES_CUSTOM_FORMAT ""

export PROJECT_UTILS_SRC_DIR="$(realpath $(dirname $BASH_SOURCE)/)"
export PROJECT_UTILS_IMAGES_LIST_OUTPUT=()

function projectsMdDir()
{
	realpath "${PROJECT_UTILS_SRC_DIR}/../content/${PROJECT_CATEGORY}/"
}

function projectsImagesDir()
{
	realpath "${PROJECT_UTILS_SRC_DIR}/../images/${PROJECT_CATEGORY}/"
}

function imagesList()
{
	echo "Your project miss implementation for imagesList"
}

function projectText()
{
	echo "Il testo lungo va qui"
}

function sanitizeForFileName()
{
	# Print without new line at end
	# Convert unicode character to ASCII similar è -> e. Requires *GNU* iconv
	#   see https://stackoverflow.com/a/27052276
	# Convert all non alfanumerical to _ avoiding _ duplication
	echo -n $@ | iconv -f utf-8 -t ascii//translit | tr --complement --squeeze-repeats '[:alnum:]' '_'
}

function projectFileName()
{
	echo -n $(printf '%04d' $PROJECT_ID)-$(sanitizeForFileName $PROJECT_TITLE)
}

function collectionDir()
{
	echo "$(projectsImagesDir)/$(projectFileName)/"
}

function compressImage()
{
	local sourceImage="$1"
	local destImage="$2"

	# Use convert from imagemagick to:
	# - autorotate image to not rely on EXIF metadata
	# - resize to maximum size of 1500px keeping aspect ratio
	# - set DPI as per submission specification
	# - strip metadata
	# - output progressive JPG
	# - Set JPG maximum file size
	convert \
		-verbose \
		-auto-orient \
		-resize '1500x1500' \
		-density 72 \
		-strip \
		-interlace plane \
		-define jpeg:extent=$IMAGES_MAX_FILE_SIZE \
		"$sourceImage" "$destImage"
}


function imagesPathsList()
{
	for mImage in $(imagesList) ; do
		echo "../../images/${PROJECT_CATEGORY}/${IMAGES_SOURCE_DIR}/${mImage}"
	done
}

function listToAstroArray()
{
	echo -n [
	while read mLine ; do
		printf "%s," "$mLine"
	# sed removes last char which is a superflous comma that make astro mad
	done | sed '$ s/.$//'
	echo -n ]
}

function bashArrayToAstro()
{
	declare -n bashArrayName="$1"

	echo -n [
	# sed removes last char which is a superflous comma that make astro mad
	printf "%s," "${bashArrayName[@]}" | sed '$ s/.$//'
	echo -n ]
}

function checkFileNameLenght()
{
	local pFileName="$1"

	# Github deploy action fail with long file names, even if it works on your
	# local computer. Use this function to prevent ENAMETOOLONG error with each
	# image or file you want to embad on your website.
	#
	# example error:
	# 21:01:14 [build] Building static entrypoints...
	# Error: 1 [ERROR] [vite] x Build failed in 6.09s
	# ENAMETOOLONG: name too long, open '/home/runner/work/letiziachi.github.io/letiziachi.github.io/dist/_astro/24-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opere-buffet-gourmet-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.BhbnOnik.JPG'
	#   Location:
	#     /home/runner/work/letiziachi.github.io/letiziachi.github.io/node_modules/.pnpm/rollup@4.49.0/node_modules/rollup/dist/es/shared/node-entry.js:22505:32
	#   Stack trace:
	#     at async open (node:internal/fs/promises:639:25)
	#     at async Queue.work (file:///home/runner/work/letiziachi.github.io/letiziachi.github.io/node_modules/.pnpm/rollup@4.49.0/node_modules/rollup/dist/es/shared/node-entry.js:22505:32)
	#  ELIFECYCLE  Command failed with exit code 1.
	# Error: Process completed with exit code 1.

	# Determined via trial and error, don't edit before thinking twice
	local GITHUB_DEPLOY_MAX_FILE_NAME_SAFE_LENGHT=239

	local mNameLength="$(echo "$pFileName" | wc -c)"
	[  "$mNameLength" -gt "$GITHUB_DEPLOY_MAX_FILE_NAME_SAFE_LENGHT" ] &&
	{
		echo "Nome del file troppo lungo $mNameLength > $GITHUB_DEPLOY_MAX_FILE_NAME_SAFE_LENGHT:"
		echo "$pFileName"
		return 36 # ENAMETOOLONG
	}

	return 0
}

function checkMaxFileSize()
{
	# Cloudflare Pages free plan doesn't accept files bigger then 25MB
	# Fail early to not waste time and aveid later wrangler reporting
	# Error: Pages only supports files up to 25 MiB in size
	local CLOUDFLARE_PAGES_MAX_FILE_SIZE=$((25*1024*1024))
	local mFile="$1"

	local mFileSize=$(wc -c < "$file") || return $?
	[ "0$mFileSize" -gt "$CLOUDFLARE_PAGES_MAX_FILE_SIZE" ] &&
	{
		echo "File troppo grande $mFileSize > $CLOUDFLARE_PAGES_MAX_FILE_SIZE (25MB):"
		echo "$mFile"
		return 27 # EFBIG
	}

	return 0
}

function projectIdValid()
{
	# Check projectId is a positive integer
	[[ $PROJECT_ID == +([0-9]) ]] && [[ $PROJECT_ID -gt 0 ]] && return 0

	echo "PROJECT_ID must be a positive integer got: $PROJECT_ID"
	return 1
}


function projectIdUnique()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"
	local unsortedIdes="$(
		for mProj in *.sh ;  do
			source $mProj
			echo $PROJECT_ID
		done
	)"
	popd

	local iSorted="$( echo "$unsortedIdes" | sort -n)"
	local iSortedUnique="$( echo "$unsortedIdes" | sort -n -u)"

	[ "$iSorted" != "$iSortedUnique" ] || return 0

	echo "PROJECT_ID: $PROJECT_ID is duplicated, must be unique."
	return 99 # EADDRNOTAVAIL
}

function projectChecks()
{
	projectIdValid || return $?
	projectIdUnique || return $?

	checkFileNameLenght "$COVER_IMAGE" || return $?
	checkMaxFileSize "$COVER_IMAGE" || return $?

	imagesList | while read mLine; do
		checkFileNameLenght $mLine || return $?
		checkMaxFileSize $mLine || return $?
	done
}

function updateProjectFile()
{
	cat << EOF > "$(projectsMdDir)/$(projectFileName).md"
---
title: "$PROJECT_TITLE"
description: ""
updatedDate: "$(LC_TIME=en_US.utf8 date "+%b %d %Y")"
coverImage: "../../images/${PROJECT_CATEGORY}/${IMAGES_SOURCE_DIR}/${COVER_IMAGE}"
images: $(imagesPathsList | listToAstroArray)
customImageFormat: "$IMAGES_CUSTOM_FORMAT"
badge: ""
customCssClass: ""
displayPriority: $PROJECT_DISPLAY_PRIORITY
projectId: $PROJECT_ID
---

$(projectText)
EOF
}

function cleanId()
{
	local pId="$1"
	rm -fv "$(projectsMdDir)"/$(printf '%04d' $PROJECT_ID)*.md
}

function generateProject()
{
	projectChecks || exit $?
	cleanId
	updateProjectFile
}

function idReport()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"
	for mProj in *.sh ;  do
		source $mProj
		echo $(printf '\n%04d' $PROJECT_ID) $PROJECT_TITLE $mProj
	done | sort --numeric-sort --reverse
	popd
}

function usedIds()
{
	pushd ${PROJECT_CATEGORY}
	for mProj in "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"/*.sh ;  do
		source $mProj
		echo $(printf '\n%04d' $PROJECT_ID)
	done | sort -n -u
	popd
}

function updateAllProjects()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"
	for mProj in *.sh ;  do
		./$mProj
	done
	popd
}

function priorityReport()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"
	for mProj in *.sh ;  do
		source $mProj
		echo $(printf '\n%04d' $PROJECT_DISPLAY_PRIORITY) $PROJECT_TITLE $mProj
	done | sort --numeric-sort --reverse
	popd
}
