#!/bin/bash

export PROJECT_INDEX=80
export IMAGES_SOURCE_DIR="/home/letizia/01-PROGETTI-FOTOGRAFIA/00_selezione_foto_Parigi/"
export PROJECT_TITLE="Cartoline da Parigi"
export PROJECT_SEO="Parigi Moulin Rouge Museo Louvre piramide visitatori portoni Palais Royal scacchiera coppie giostra carosello cafe anges"
export COVER_IMAGE="cartolina_1.jpg"

source ../project_utils.sh

function imagesList()
{
	cat << ENDLIST
cartolina_1.jpg
cartolina_2.jpg
cartolina_3.jpg
cartolina_5.jpg
cartolina_6.jpg
cartolina_7.jpg
cartolina_11.jpg
cartolina_12.jpg
cartolina_13.jpg
cartolina_14.jpg
cartolina_17.jpg
cartolina_19.jpg
cartolina_20.jpg
cartolina_21.jpg
cartolina_23.jpg
cartolina_24.jpg
cartolina_25.jpg
cartolina_26.jpg
cartolina_28.jpg
cartolina_29.jpg
cartolina_30.jpg
cartolina_31.jpg
cartolina_33.jpg
cartolina_34.jpg
cartolina_36.jpg
cartolina_37.jpg
cartolina_40.jpg
cartolina_41.jpg
cartolina_43.jpg
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
