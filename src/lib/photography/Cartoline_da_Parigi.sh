#!/bin/bash

export PROJECT_INDEX=8
export IMAGES_SOURCE_DIR="/home/letizia/01-PROGETTI-FOTOGRAFIA/00_selezione_foto_Parigi/"
export PROJECT_TITLE="Cartoline da Parigi"
export PROJECT_SEO="Parigi Moulin Rouge Museo Louvre piramide visitatori portoni Palais Royal scacchiera coppie giostra carosello cafe anges"
export COVER_IMAGE="cartolina_01.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
cartolina_01.jpg
cartolina_02.jpg
cartolina_03.jpg
cartolina_05.jpg
cartolina_06.jpg
cartolina_07.jpg
cartolina_10.jpg
cartolina_12.jpg
cartolina_13.jpg
cartolina_14.jpg
cartolina_17.jpg
cartolina_19.jpg
cartolina_20.jpg
cartolina_23.jpg
cartolina_24.jpg
cartolina_25.jpg
cartolina_26.jpg
cartolina_28.jpg
cartolina_30.jpg
cartolina_31.jpg
cartolina_32.jpg
cartolina_33.jpg
cartolina_34.jpg
cartolina_35.jpg
cartolina_36.jpg
cartolina_37.jpg
cartolina_38.jpg
cartolina_39.jpg
ENDLIST
}

function projectText()
{
	cat << ENDTEXT

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
