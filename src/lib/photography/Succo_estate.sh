#!/bin/bash

export PROJECT_ID=120
export IMAGES_SOURCE_DIR="Succo_estate"
export PROJECT_TITLE="Il succo di un'estate."
export PROJECT_SEO="Olympus visual storytelling photography fotografa sicilia mare spiaggia caronia succo melone bambini condivisione poesia lens zuiko mirrorless OM1 omsystem"
export COVER_IMAGE="19-Sicilia-mare-caronia-fette-lune-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG"
export PROJECT_DISPLAY_PRIORITY=100

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-Sicilia-mare-caronia-acqua-melone-galleggia-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
02-Sicilia-mare-caronia-uomo-portrait-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
03-Sicilia-mare-caronia-uomo_taglia_melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
04-Sicilia-mare-caronia-uomo_taglia_melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
05-Sicilia-mare-caronia-uomo-fetta-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
06-Sicilia-mare-caronia-fetta-melone-mani-condivisione-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
07-Sicilia-mare-caronia-fetta-melone-mani-condivisione-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
08-Sicilia-mare-caronia-primo_piano-bambina-mangia-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
09-Sicilia-mare-caronia-bambina-mangia-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
10-Sicilia-mare-caronia-mano-bambina-mangia-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
11-Sicilia-mare-caronia-succo-gocce-pelle-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
12-Sicilia-mare-caronia-melone-polpa-semi-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
13-Sicilia-mare-caronia-uomo-profilo-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
14-Sicilia-mare-caronia-bambino-mangia-melone-spiaggia-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
15-Sicilia-mare-caronia-bambino-mangia-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
16-Sicilia-mare-caronia-spiaggia-semi-pietre-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
17-Sicilia-mare-caronia-luna-buccia-schizzi-spiaggia-pietre-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
18-Sicilia-mare-caronia-buccia-melone-spiaggia-pietre-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
19-Sicilia-mare-caronia-fette-lune-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
20-Sicilia-mare-caronia-uomo-nuoto-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
21-Sicilia-mare-caronia-semi-pietra-spiaggia-melone-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
22-Sicilia-mare-caronia-luna-melone-spiaggia-visualstorytelling-letizia-chianello-olympus-om1-omsystem.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT

La spiaggia di Marina di Caronia,  
nella serenità di un pomeriggio insieme.  
Abbiamo lasciato un melone maturo  
cullarsi nell'acqua salina  
mentre serba la sua dolcezza.  
  
Sibilla e Vittorio lo osservano,  
le mani pronte, gli occhi lucidi d’estate.  
  
Gio si immerge, ripesca il melone  
mentre gocce salate percorrono le sue braccia.  
Il suo sguardo fulgido incontra il mio  
mentre intenta fotografo l'istante.  
Sulla riva la sua mano guida il coltello  
che entra nella polpa,  
il profumo si libera, sorrisi morbidi  
nel momento che sa di gioco e di casa.  
  
Con uno scambio dolce di dita che afferrano,  
le lune arancioni vengono addentate,  
il succo scivola dalla bocca,  
e sulla pelle il percorso di gocce zuccherine.  
Il sapore resta lì,  
dove finisce il morso e comincia la gioia.  
Le bucce, conchiglie vuote bagnate di sale  
saltano su pietre esperte del mare.  
  
Nei gesti di un pomeriggio al mare,  
l'eco del condividere matura e ci nutre.  
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
