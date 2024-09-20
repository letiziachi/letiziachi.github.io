#!/bin/bash

export PROJECT_INDEX=70
export IMAGES_SOURCE_DIR="/home/letizia/01-PROGETTI-FOTOGRAFIA/Festival_Titeres_2023/"
export PROJECT_TITLE="Festival Internacional de Títeres PAN Y VINO | Edizione 2023"
export PROJECT_SEO="Festival titeres argentina cordoba teatro di figura marionette spettacoli jose de la quintana clown famiglia familia"
export COVER_IMAGE="12-P1190222.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-f519611584.jpg
22-f546885952.jpg
03-f523651072.jpg
04-f524295936.jpg
05-f524502656.jpg
06-f528570240.jpg
07-f529890176.jpg
08-f529291840.jpg
09-f532799744.jpg
10-f536832896.jpg
11-P1190164.JPG
12-P1190222.JPG
14-f537941632.jpg
15-f537914624.jpg
16-f538068800.jpg
17-f538333504.jpg
18-P1260164.JPG
19-543184384.jpg
20-f544064064.jpg
21-f543766848.jpg
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Un Festival internazionale di teatro di figura rivolto a tutte le età
ma soprattutto ai più piccoli  
poiché offre un ampio ventaglio di possibilità dove i bambini possono nutrirsi  
di nuove esperienze artistiche culturali. Questo Festival si propone inoltre
di rafforzare  
le capacità di gestione locale, lo sviluppo delle economie regionali
e l'emancipazione culturale  
della classe popolare argentina, nonché di rafforzare i collegamenti e
l'integrazione regionale  
della provincia di Córdoba.  

Letizia Chianello ha ideato il concept per questa edizione, diretto tutte le
fasi progettuali  
del Festival dalla comunicazione visiva alla promozione dell'evento.  
Infine dedicandosi - come fotografa ufficiale dell'evento -  ad esaltare
la bellezza  
di ogni singolo spettacolo.  
  

Progetto realizzato per Fundación Hölderlin,
<a href="https://cultura.cba.gov.ar/" target="_blank">Agencia Cultura Córdoba</a>,  
<a href="https://inteatro.ar/" target="_blank">Istituto National del Teatro</a>
e il
<a href="https://www.argentina.gob.ar/capital-humano/cultura" target="_blank">Ministerio de Cultura Argentina</a>.


ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
