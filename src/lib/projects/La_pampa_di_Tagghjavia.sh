#!/bin/bash

export PROJECT_INDEX=70
export IMAGES_SOURCE_DIR="/media/letizia/SEAGATE_BASIC_5TB/2024-SICILIA/2024-01-01-Mistretta_Matri_Tagghiavia_Tribbu/Selezione/"
export PROJECT_TITLE="La Pampa di Tagghjavia"
export PROJECT_SEO="pampa gioco educazione bambini natura montessori Sicilia Monti Nebrodi pecore mandria lana dupareilaumeme abbigliamento Affenzahn zainetto eco-friendly riciclo sostenibile Olympus OM1"
export COVER_IMAGE="P1011579.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
P1011470.JPG
P1011479.JPG
P1011482.JPG
P1011500.JPG
P1011505.JPG
P1011506.JPG
P1011507.JPG
P1011509.JPG
P1011515.JPG
P1011519.JPG
P1011521.JPG
P1011525.JPG
P1011526.JPG
P1011530.JPG
P1011532.JPG
P1011534.JPG
P1011535.JPG
P1011543.JPG
P1011546.JPG
P1011547.JPG
P1011548.JPG
P1011557.JPG
P1011559.JPG
P1011577.JPG
P1011579.JPG
P1011585.JPG
P1011589.JPG
P1011594.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
