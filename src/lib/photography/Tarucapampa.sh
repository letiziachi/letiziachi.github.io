#!/bin/bash

export PROJECT_INDEX=30
export IMAGES_SOURCE_DIR="/home/letizia/01-PROGETTI-FOTOGRAFIA/Tarucapampa/"
export PROJECT_TITLE="Taruca Pampa | Sierra de Córdoba, Argentina"
export PROJECT_SEO="Traslasierra Cordoba Argentina Taruca Pampa Escursione cascate familia Leyria oro sierra natura granito olympus"
export COVER_IMAGE="08-P1280061.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-P1280004.jpg
02-P1280005.jpg
03-P1280011.jpg
04-P1280016.JPG
05-P1280033.jpg
06-P1280035.jpg
07-P1280041.jpg
08-P1280061.jpg
09-P1280069.JPG
10-P1280075.jpg
11-P1280084.jpg
12-P1280086.jpg
13-P1280100.jpg
14-P1280112.JPG
15-P1280121.jpg
16-P1280144.jpg
18-P1280159.jpg
19-P1290180.jpg
20-P1290185.jpg
21-P1290188.jpg
22-P1290189.jpg
23-P1290190.jpg
24-P1290200.jpg
25-P1290214.jpg
26-P1290205.jpg
27-P1290219.jpg
28-P1290223.jpg
29-P1290240.JPG
30-P1290237.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
