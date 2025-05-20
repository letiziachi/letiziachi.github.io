#!/bin/bash

export PROJECT_INDEX=13
export IMAGES_SOURCE_DIR="Garzette_Caronia"
export PROJECT_TITLE="Egretta garzetta sugli scogli di Caronia"
export PROJECT_SEO="Sicilia mediterraneo Caronia Messina mare scogli bassa marea isole eolie ardea garzetta egretta garzetta airone minore bianco nature photography fotografa lens zuiko mirrorless OM1 omsystem"
export COVER_IMAGE="0002-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
0001-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0002-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0003-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0004-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta_garzetta-airone_minore_bianco.JPG
0005-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta_garzetta-airone_minore_bianco.JPG
0006-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0007-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0008-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0009-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0010-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0011-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0012-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0014-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0016-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
0017-Sicilia-Caronia-mare-scogli-bassa_marea-isole_eolie-ardea_garzetta-egretta-garzetta-airone_minore_bianco.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
<i>La costa di Caronia - con i suoi scogli antichi, le onde salmastre, il respiro aperto.  
Amo questa piccola lingua di costa, un segreto condiviso col mare,  
dove all’orizzonte le Eolie appaiono come seni materni.  
Ci vado quando ho bisogno di silenzio che sappia parlare,  
di vento che mi accarezza come fa il mare con la riva.  
E lì, tra le fenditure della pietra e il gioco della luce sull’acqua, mi aspettano loro.  
  
Ali bianche, sottili, eleganti.  
Le garzette, leggere come sogni sospesi tra cielo e mare.  
Un volo curvo, gentile, che accarezza l’aria.  
Dalla riva le osservo con la lentezza che meritano.  
Scatto perché resti traccia di quell’incontro lieve tra il mio sguardo e il loro passaggio.  
  
In queste foto c’è l’ascolto. C’è Caronia che sussurra.  
E c’è la memoria naturale, selvaggia, condivisa.</i>  
  
&nbsp;<br/>
Il ritorno della Garzetta e l’importanza di conservare la biodiversità.  
  
La Garzetta (Egretta garzetta), elegante uccello acquatico dal piumaggio candido,  
un tempo nidificava in Sicilia. Tuttavia, nella metà del XX secolo, la specie  
scomparve dall’isola, in seguito alla caccia intensiva e alla progressiva distruzione  
degli habitat umidi, ambienti fondamentali per la sua sopravvivenza e riproduzione.  
  
A partire dagli anni ’90, la Garzetta ha iniziato a ricolonizzare la Sicilia,  
forse anche grazie a interventi di conservazione e alla tutela di alcune zone umide.  
Oggi è molto più frequente rispetto al passato, sia durante i periodi migratori  
che nella stagione invernale, e viene avvistata in diverse aree dell’isola.
  
Attualmente, la Garzetta è classificata come “a rischio minimo” (Least Concern)  
nella Lista Rossa dell’Unione Internazionale per la Conservazione della Natura (IUCN).  
La sua presenza crescente ci ricorda quanto sia essenziale proteggere la biodiversità:  
ogni specie è parte di un equilibrio più ampio e delicato, e la conservazione  
degli ambienti naturali rappresenta una condizione fondamentale per la sopravvivenza  
degli ecosistemi e per il benessere delle generazioni future.

<a href="https://www.openstreetmap.org/?#map=17/38.034751/14.468061"><i>Scogliera naturista Chiappe</i><br/>
Caronia (ME)</a>

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
