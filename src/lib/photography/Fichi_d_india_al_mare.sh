#!/bin/bash

export PROJECT_ID=20
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/2023-SICILIA/2023-08-10-Tribbu_mare_Le_Chiappe_Caronia_raccolta_fichidindia/Selezione/"
export PROJECT_TITLE="Fichi d'india al mare"
export PROJECT_SEO="fichi india mare frutta merenda tramonto educazione natura"
export COVER_IMAGE="P8102330.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
P8102330.JPG
P8102340.JPG
P8102439.JPG
P8102366.JPG
P8102367.JPG
P8102379.JPG
P8102382.JPG
P8102441.JPG
P8102475.JPG
P8102393.JPG
P8102435.JPG
P8102437.JPG
P8102466.JPG
P8102467.JPG
P8102472.JPG
P8102479.JPG
P8102481.JPG
P8102505.JPG
P8102508.JPG
P8102498.JPG
P8102500.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
