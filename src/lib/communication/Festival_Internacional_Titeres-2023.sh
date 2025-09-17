#!/bin/bash

export PROJECT_ID=20
export IMAGES_SOURCE_DIR="Festival_Internacional_Titeres-2023"
export PROJECT_TITLE="Festival Internacional de Títeres | Edizione 2023"
export PROJECT_CATEGORY="communication"
export PROJECT_SEO="Festival Internacional Titeres Cordoba Argentina illustrazione identita visiva concept"
export COVER_IMAGE="2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-01.png"
export IMAGES_CUSTOM_FORMAT="png"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-02.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-03.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-04.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-05.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-06.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-07.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-08.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-09.png
2023-Festival_Internacionale_Titeres-Argentina-Cordoba-Teatro-grafica-10.png
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Un Festival internazionale di teatro di figura rivolto a tutte le età  
e soprattutto ai più piccoli poiché offre un ampio ventaglio di possibilità  
dove i bambini possono nutrirsi di nuove esperienze artistiche culturali.  
Questo Festival si propone inoltre di rafforzare le capacità di gestione locale,  
lo sviluppo delle economie regionali e l'emancipazione culturale della classe  
popolare argentina, nonché di rafforzare i collegamenti e l'integrazione  
regionale della provincia di Córdoba.  
Letizia Chianello ha ideato il concept per questa edizione, diretto tutte  
le fasi progettuali del Festival dalla comunicazione visiva alla promozione  
dell'evento. Infine dedicandosi, come fotografa ufficiale dell'evento,  
ad esaltare la bellezza di ogni singolo spettacolo.  

Direzione artistica | Identità visiva | Grafica | Illustrazione | Fotografia | Social Media

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
