#!/bin/bash

export PROJECT_INDEX=60
export IMAGES_SOURCE_DIR="/home/letizia/01-PROGETTI-FOTOGRAFIA/Incanto_nascosto-Funghi/"
export PROJECT_TITLE="Incanto nascosto"
export PROJECT_SEO="Funghi bosco Sicilia Monti Nebrodi natura scoperta bellezza sottobosco"
export COVER_IMAGE="12-P6160733.JPG"

source ../project_utils.sh

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
Il testo del progetto va qui
e anche qui


e qui pure
ENDTEXT
}

generateProject
