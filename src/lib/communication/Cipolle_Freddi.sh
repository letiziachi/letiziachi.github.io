#!/bin/bash

export PROJECT_ID=60
export IMAGES_SOURCE_DIR="/media/letizia/SEAGATE_BASIC_5TB/Progetti_grafici_per_sito/01-CIpolle_Freddi/Da_caricare/"
export PROJECT_TITLE="Freddi | Identità visiva"
export PROJECT_CATEGORY="communication"
export PROJECT_SEO="Freddi_cipolle_cipolline_emilia_romagna_scalogno_italiano_food_identita_visiva"
export COVER_IMAGE="Freddi-cipolle-borettane-peperoni-acciuga-freddi.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-Cipolle_Freddi_testata_sito_web_design.png
02-Freddi-cipollina-borettana-emilia-freddi-retina.jpg
03-Freddi-scalogno-emilia-freddi-retina.jpg
04-Cipolle_Freddi_testata_sito_web_design.png
05-Freddi_Cipollina_borettana_Emilia_Romagna.png
06-Freddi_Scalogno_Emilia_Romagna.png
07-Freddi_ricette_Scalogno_Cipolline_borettane_Emilia_Romagna.png
08-Freddi_Post_grafci_Scalogno_Cipollina_Emilia_Romagna_02.png
09-Freddi_copertine_pagina_facebook.png
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Come far risplendere il fascino della Cipollina Borettana dell’Emilia e dello  
Scalogno dell’Emilia? Letizia Chianello ha scelto di seguire le regole  
del vintage contemporaneo, optando per colori accattivanti per esprimere un’idea  
di freschezza e di modernità. Siamo piacevolmente lontani dal mood un po’  
stereotipato dell’agricoltura tradizionale: la comunicazione al consumatore  
si ispira piuttosto al mercato statunitense, dove già da diversi anni vi è una forte  
attenzione al marketing e alla cura dell’immagine anche per i prodotti freschi.  
Nel sito internet e nel nuovo packaging, i prodotti vengono raccontati tramite  
uno storytelling di prodotto dal tono ironico e informale.  


<a href="https://cipollefreddi.it/" target="_blank">Vai al sito di Freddi</a>

Art direction | Brand Identity | Logo Design | Web Design | Illustrator | Photography

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
