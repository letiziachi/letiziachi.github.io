#!/bin/bash

export PROJECT_INDEX=55
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/00-LAVORI/Espacio-Abierto/2022-FESTIVAL-TITERES/02-Foto/2023-01-26-Foto-spettacoli-Pan-y-Vino/06-Donde-esta-Borondongo-OK/00-selezione-Donde-esta-Borondongo/"
export PROJECT_TITLE="Donde está Borondongo - Festival Internacional de Títeres"
export PROJECT_SEO="festival teatro burattini Argentina Cordoba"
export COVER_IMAGE="f670228096.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
f542455232.jpg
f542533888.jpg
f543835904.jpg
f542601536.jpg
f545479680.jpg
f543197760.jpg
f543152064.jpg
f543855296.jpg
f543463680.jpg
f544064064.jpg
f543216704.jpg
f543766848.jpg
f542547264.jpg
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Festival Internacional de Títeres, Córdoba, Argentina.  


*Sul <a href="https://www.behance.net/gallery/179294547/Festival-Internacional-de-Titeres-Argentina" target="_blank">profilo Behance</a> l'intero progetto.*

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
