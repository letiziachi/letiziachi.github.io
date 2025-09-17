#!/bin/bash

export PROJECT_ID=90
export IMAGES_SOURCE_DIR="/home/letizia/01-PROGETTI-FOTOGRAFIA/Incanto_nascosto-Funghi/"
export PROJECT_TITLE="Incanto nascosto"
export PROJECT_SEO="Funghi bosco Sicilia Monti Nebrodi natura scoperta micelio sottobosco Olympus OM1 60MM 12-40MM"
export COVER_IMAGE="12-P6160733.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-P6160730.JPG
02-P6160728.JPG
03-P6080685.JPG
04-P6160779.JPG
05-P4110679.JPG
07-P6010580.JPG
08-P6080638.JPG
09-P6211012.JPG
10-P6160760.JPG
11-P7011841.JPG
12-P6160733.JPG
13-P9083098.JPG
ENDLIST
}


function projectText()
{
	cat << ENDTEXT
Sicilia, Monti Nebrodi
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
