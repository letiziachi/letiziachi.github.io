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
define_default_value PROJECT_SEO ""
define_default_value COVER_IMAGE "UNDEFINED COVER IMAGE"
define_default_value IMAGES_SOURCE_DIR "UNDEFINED IMAGE SOURCE DIR"
define_default_value IMAGES_PUBLIC_EXTENSION "jpg"
define_default_value IMAGES_MAX_FILE_SIZE "1200kb"

export PROJECT_UTILS_SRC_DIR="$(realpath $(dirname $BASH_SOURCE)/)"
export PROJECT_UTILS_IMAGES_LIST_OUTPUT=()

function projectsMdDir()
{
	realpath "${PROJECT_UTILS_SRC_DIR}/../content/projects/"
}

function projectsImagesDir()
{
	realpath "${PROJECT_UTILS_SRC_DIR}/../images/projects/"
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

function imageSeoName()
{
	local origName="$1"
	local imageIndex="$2"

	echo -n "$(printf '%04d' $imageIndex)-$(sanitizeForFileName $PROJECT_TITLE $PROJECT_SEO).$IMAGES_PUBLIC_EXTENSION"
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

function compressAllImages()
{
	mkdir -p "$(collectionDir)"

	tIndex=0

	compressImage \
		"${IMAGES_SOURCE_DIR}/$COVER_IMAGE" \
		"$(collectionDir)/$(imageSeoName "$COVER_IMAGE" 0)"

	for mImage in $(imagesList); do
		((tIndex++))

		local outImgName="$(imageSeoName "$mImage" $tIndex)"

		compressImage \
			"${IMAGES_SOURCE_DIR}/$mImage" \
			"$(collectionDir)/$outImgName"

		PROJECT_UTILS_IMAGES_LIST_OUTPUT+=("\"../../images/projects/$(projectFileName)/$outImgName\"")
	done
}

function bashArrToAstro()
{
	declare -n bashArrayName="$1"

	echo -n [
	# sed removes last char which is a superflous comma that make astro mad
	printf "%s," "${bashArrayName[@]}" | sed '$ s/.$//'
	echo -n ]
}

function updateProjectFile()
{
	cat << EOF > "$(projectsMdDir)/$(projectFileName).md"
---
title: "$PROJECT_TITLE"
description: ""
updatedDate: "$(LC_TIME=en_US.utf8 date "+%b %d %Y")"
coverImage: "../../images/projects/$(projectFileName)/$(imageSeoName "$COVER_IMAGE" 0)"
images: $(bashArrToAstro PROJECT_UTILS_IMAGES_LIST_OUTPUT)
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
	rm -rfv "$(projectsImagesDir)"/$(printf '%04d' $PROJECT_INDEX)*
}

function generateProject()
{
	cleanIndex
	compressAllImages
	updateProjectFile
}

function indexReport()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/projects"
	for mProj in *.sh ;  do
		source $mProj
		echo $(printf '\n%04d' $PROJECT_INDEX) $PROJECT_TITLE
	done | sort -n
	popd
}

function usedIndexes()
{
	pushd projects
	for mProj in "${PROJECT_UTILS_SRC_DIR}/projects"/*.sh ;  do
		source $mProj
		echo $(printf '\n%04d' $PROJECT_INDEX)
	done | sort -n -u
	popd
}

function haveDuplicatedIndexes()
{
	pushd "${PROJECT_UTILS_SRC_DIR}/projects"
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

function cleanProjects()
{
	local mUsedIndexes="$(usedIndexes)"

	pushd "$(projectsImagesDir)"
	for mCollection in +([0123456789])* ; do
		echo "$mUsedIndexes" | grep -q "${mCollection:0:4}" || \
			rm -rv "$mCollection"
	done
	popd

	pushd "$(projectsMdDir)"
	for mFile in +([0123456789])*.md ; do
		echo "$mUsedIndexes" | grep -q "${mFile:0:4}" || \
			rm -rv "$mFile"
	done
	popd
}

function updateAllProjects()
{
	cleanProjects

	pushd "${PROJECT_UTILS_SRC_DIR}/projects"
	for mProj in *.sh ;  do
		./$mProj
	done
	popd
}
