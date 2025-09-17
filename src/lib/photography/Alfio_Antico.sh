#!/bin/bash

export PROJECT_ID=64
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/2023-SICILIA/2023-09-26-Selezione_Alfio_Antico/Selezione_modificate/"
export PROJECT_TITLE="Alfio Antico, Dio Tamburo"
export PROJECT_SEO="Alfio Antico Tamburo musica tradizione popolare tammorra tamburello Sicilia Palermo concerto Averna Olympus OM1"
export COVER_IMAGE="10-P9072928.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-P9072727.jpg
02-P9072733.jpg
03-P9073047.JPG
04-P9073095.JPG
05-P9073072.jpg
06-P9072886.JPG
07-P9072816.JPG
08-P9072893.JPG
09-P9072909.JPG
10-P9072928.JPG
11-P9073055.JPG
12-P9073036.JPG
13-P9073044.JPG
14-P9072885.JPG
15-P9072873.jpg
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Il maestro assoluto all'Averna Spazio Open, Palermo

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
