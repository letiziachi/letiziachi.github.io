#!/bin/bash

export PROJECT_INDEX=10
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/2023-SICILIA/2023-07-09-Mistretta-Arantco-Raccolta_origano/Selezione/"
export PROJECT_TITLE="OROS GANOS | Splendore della montagna"
export PROJECT_SEO="origano raccolta montagna tramonto educazione natura Monti Nebrodi Olympus OM1"
export COVER_IMAGE="13-P7082010.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-P7081980.JPG
02-P7081999.JPG
03-P7081930.JPG
04-P7081918.JPG
05-P7081955.JPG
06-P7081925.JPG
07-P7082024.JPG
08-P7082050.JPG
09-P7082054.JPG
10-P7081916.JPG
11-P7082089.JPG
12-P7082070.JPG
13-P7082010.JPG
14-P7082087.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
In Sicilia, in un fazzoletto dei Monti Nebrodi una volta si raccoglieva l'origano.  
Quel gesto delicato di mani grandi e sapienti ma anche piccole e ingenue  
animavano il profumo dei fiori. Gli stessi fiori che raccolti venivano legati  
in mazzi con la rafia e messi appesi a seccare nelle case.

Cosa rimane dei ricordi?  
La natura ha memoria e tutta l'energia per continuare a donare bellezza.

Cosa rimarrà se non ci sarà nemmeno più il ricordo?  
Cosa dispiegherà la natura davanti ai nostri sensi?

Si può ancora percorrere il cammino delle nostre radici, rinvigorirle grazie a mani nuove  
che con gran velocità diventeranno grandi.
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
