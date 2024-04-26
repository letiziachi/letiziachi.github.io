#!/bin/bash

export PROJECT_INDEX=75
export IMAGES_SOURCE_DIR="/media/letizia/SEAGATE_BASIC_5TB/Progetti_grafici_per_sito/Emanuela_Spaggiari/Da_caricare/"
export PROJECT_TITLE="Emanuela Spaggiari | Identità visiva"
export PROJECT_SEO="Logo_design_brand_identity_identita_visiva_consulenza_aziende_marketing_strategia"
export COVER_IMAGE="Immagine_sito_Emanuela_Spaggiari.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-Marchio-Emanuela-Spaggiari.png
02-Grafica_marchio_Emanuela_Spaggiari.jpg
03-Marchio-Emanuela-Spaggiari_colore_monocromatico.png
04-Format-sito-Emanuela-Spaggiari.png
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Letizia Chianello ha creato un logo elegante per Emanuela Spaggiari, consulente  
e formatrice aziendale specializzata nello sviluppo delle risorse umane e nel  
potenziamento delle capacità relazionali e comunicative.  
Questo logo, combinazione delle iniziali di Emanuela, E ed S che si intrecciano  
in un equilibrio dinamico.  
Il colore magenta per la "E", riflette l'energia e la passione che Emanuela mette  
nella sua consulenza. Il turchese, utilizzato per la "S", simboleggia invece  
la crescita e la prosperità, due elementi chiave della missione professionale  
di Emanuela. L'abbinamento di questi due colori crea un contrasto visivamente  
accattivante, che cattura immediatamente l'attenzione e rimane impresso nella mente.  

In sintesi, il logo ideato da Letizia Chianello per Emanuela Spaggiari non è solo  
un'elegante combinazione di iniziali e colori, ma un simbolo potente e significativo  
dell'identità professionale di Emanuela. Un simbolo che incarna la sua visione  
di crescita, produttività e successo, espressa attraverso un design contemporaneo.

<a href="https://www.emanuelaspaggiari.it/" target="_blank">Visita il sito di Emanuela Spaggiari</a>
> 

Brand Identity | Logo Design | Palette Identity | Visual Design

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
