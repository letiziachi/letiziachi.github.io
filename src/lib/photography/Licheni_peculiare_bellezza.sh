#!/bin/bash

export PROJECT_ID=50
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/2023-SICILIA/2023-04-12-Tribbu_Faggeta_radura_alberi_con_Licheni/Selezione_licheni/"
export PROJECT_TITLE="Licheni, peculiare bellezza"
export PROJECT_SEO="Licheni simbiosi alghe funghi bosco collaborazione Monti Nebrodi Sicilia acero forme natura 60mm olympus Olympus"
export COVER_IMAGE="P4110722.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
P4110687.JPG
P4110690.JPG
P4110692.JPG
P4110694.JPG
P4110707.JPG
P4110710.JPG
P4110722.JPG
P4110736.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Licheni, forma perfetta di simbiosi tra funghi e alghe.  
Forti e resilienti sono capaci di sopravvivere per lunghi periodi in luoghi ostili e aridi.  
Crescono un millimetro all'anno di peculiare bellezza fluente, e con la loro presenza  
ci raccontano tutto dell'aria.

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
