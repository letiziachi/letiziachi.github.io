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

define_default_value PROJECT_INDEX 0
define_default_value PROJECT_TITLE ""
define_default_value PROJECT_CATEGORY "photography" # photography | communication
define_default_value COVER_IMAGE "UNDEFINED COVER IMAGE"
define_default_value IMAGES_SOURCE_DIR "UNDEFINED IMAGE SOURCE DIR"
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
	echo -n $@ | tr -c '[:alnum:]' '_'
}

function projectFileName()
{
	echo -n $(printf '%04d' $PROJECT_INDEX)-$(sanitizeForFileName $PROJECT_TITLE)
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

function projectChecks()
{
	checkFileNameLenght "$COVER_IMAGE" || exit $?

	imagesList | while read mLine; do
		checkFileNameLenght $mLine || exit $?
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
---

$(projectText)
EOF
}

function cleanIndex()
{
	local pIndex="$1"
	rm -fv "$(projectsMdDir)"/$(printf '%04d' $PROJECT_INDEX)*.md
}

function generateProject()
{
	projectChecks || exit $?
	cleanIndex
	updateProjectFile
}

function indexReport()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"
	for mProj in *.sh ;  do
		source $mProj
		echo $(printf '\n%04d' $PROJECT_INDEX) $PROJECT_TITLE
	done | sort -n
	popd
}

function usedIndexes()
{
	pushd ${PROJECT_CATEGORY}
	for mProj in "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"/*.sh ;  do
		source $mProj
		echo $(printf '\n%04d' $PROJECT_INDEX)
	done | sort -n -u
	popd
}

function haveDuplicatedIndexes()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"
	local unsortedIndexes="$(
		for mProj in *.sh ;  do
			source $mProj
			echo $PROJECT_INDEX
		done
	)"
	popd

	local iSorted="$( echo "$unsortedIndexes" | sort -n)"
	local iSortedUnique="$( echo "$unsortedIndexes" | sort -n -u)"

	[ "$iSorted" != "$iSortedUnique" ] || false
}

function updateAllProjects()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/${PROJECT_CATEGORY}"
	for mProj in *.sh ;  do
		./$mProj
	done
	popd
}
