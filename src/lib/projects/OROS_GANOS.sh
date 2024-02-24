#!/bin/bash

export PROJECT_INDEX=10
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/2023-SICILIA/2023-07-09-Mistretta-Arantco-Raccolta_origano/Selezione/"
export PROJECT_TITLE="OROS GANOS - Splendore della montagna"
export PROJECT_SEO="origano raccolta montagna tramonto educazione natura"
export COVER_IMAGE="P7082010.JPG"

source ../project_utils.sh

function imagesList()
{
	cat << ENDLIST
P7081916.JPG
P7081918.JPG
P7081925.JPG
P7081930.JPG
P7081955.JPG
P7081980.JPG
P7081999.JPG
P7082010.JPG
P7082024.JPG
P7082050.JPG
P7082070.JPG
P7082087.JPG
P7082089.JPG
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
