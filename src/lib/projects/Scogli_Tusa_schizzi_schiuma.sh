#!/bin/bash

export PROJECT_INDEX=40
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/2023-SICILIA/2023-10-22-Tribbu_mare_Tusa_scogli/Selezione/"
export PROJECT_TITLE="Effetto mare d'ottobre"
export PROJECT_SEO="Sicilia scogli schiuma mare Tusa natura mare sole calore gioco ottobre Olympus OM1"
export COVER_IMAGE="PA210538.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
PA210347.JPG
PA210360.JPG
PA210363.JPG
PA210368.JPG
PA210374.JPG
PA210376.JPG
PA210384.JPG
PA210391.JPG
PA210405.JPG
PA210423.JPG
PA210430.JPG
PA210453.JPG
PA210456.JPG
PA210460.JPG
PA210464.JPG
PA210482.JPG
PA210509.JPG
PA210513.JPG
PA210518.JPG
PA210519.JPG
PA210523.JPG
PA210529.JPG
PA210532.JPG
PA210537.JPG
PA210538.JPG
PA210541.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
