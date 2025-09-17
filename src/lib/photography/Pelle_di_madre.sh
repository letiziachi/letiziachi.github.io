#!/bin/bash


export PROJECT_ID=61
export IMAGES_SOURCE_DIR="/home/letizia/01-PROGETTI-FOTOGRAFIA/Pelle_di_madre/Selezione/"
export PROJECT_TITLE="Il profondo è la pelle"
export PROJECT_SEO="Corpo donna maternita cambiamento mutamento roccia pietra mare acqua schizzi intimo vulva nascita sessualita Olympus OM1"
export COVER_IMAGE="25-P5200200.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
00-P2181333.jpg
01-PA023286.jpg
03-PA210525.JPG
04-P8102399.JPG
05-P8102331.JPG
07-PA023260.JPG
08-PA023264.JPG
09-PA023271.JPG
10-PA023272.JPG
11-PA023274.JPG
12-PA023265.JPG
13-P8102430.jpg
16-PA210532.JPG
17-P5200218.jpg
25-P5200200.jpg
30-PA023309.jpg
31-PA023312.JPG
32-PA023315.JPG
33-PA023300.JPG
34-P8102424.jpg
39-P5200202.jpg
40-PA023347.JPG
41-P8102402.JPG
42-P8102404.jpg
43-P5200300.jpg
45-PA210503.jpg
45-PA210508.jpg
46-P2181412.jpg
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Impermeabile al ragionamento la pelle si adatta al corpo, lo stesso corpo che in una donna  
può mutare e diventare casa.  
Una casa che viene chiamata maternità, in un corpo che cambia la sua forma, il suo peso,  
i suoi movimenti, la sua pelle.

La gravidanza come l'acqua trasforma le rocce, scava nuovi passaggi e scorre  
trasformando la pietra.  
Diventa desiderio del proprio volere e fa emergere nuove forme, ognuna diversa dall'altra  
ma tutte mutate di profonda e naturale bellezza.

Ma la gravidanza coincide con il desiderio di mutare la propria pelle?


*Fotografie in itinere*

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
