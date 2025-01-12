#!/bin/bash

export PROJECT_INDEX=8
export IMAGES_SOURCE_DIR="0008-Foto_Bosco_Caronia_Funghi"
export PROJECT_TITLE="Miconauti. La gioia di esplorare il bosco."
export PROJECT_SEO="Sicilia gioco natura bosco monti nebrodi funghi porcini micologia ovuli bambini ottobre Olympus OM1"
export COVER_IMAGE="07-PA040267-1-fungo-viola-Cortinarius_violaceus.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-PA040293-bambino_raccoglie_fungo-ovulo-amanita_caesarea-paniere-impermeabile_kway.JPG
02-PA040298-bambino_raccoglie_fungo_arancione-ovulo-amanita_caesarea-impermeabile_kway.JPG
03-PA040236-bambini_esplorazione_bosco-funghi-panieri.JPG
04-PA040391-funghi-ovuli-amanita_caesarea.JPG
05-PA040275-1-fungo-fistulina_hepatica.JPG
06-PA010085-fungo-hypholoma_fasciculare-falso_chiodino.JPG
07-PA040267-1-fungo-viola-Cortinarius_violaceus.JPG
08-PA040248-fungo_porcino-boletus_edulis_o_reticulatus-ciclamini-Cyclamen.JPG
09-PA040250-fungo_porcino-boletus_edulis_o_reticulatus.JPG
10-PA040257-bambino_raccoglie_fungo_porcino-boletus_edulis_o_reticulatus-paniere-ciclamini-Cyclamen-impermeabile_kway.JPG
11-PA040258-bambino_raccoglie_fungo_porcino-boletus_edulis_o_reticulatus-paniere-ciclamini-Cyclamen-impermeabile_kway.JPG
12-PA040302-bambina_raccoglie_funghi-galletti-Cantharellus_pallens.JPG
13-PA040314-fungo-galletto-Cantharellus_pallens.JPG
14-PA010078-fungo-Russula_virescens-colombina_verde-fungo_verdone_solleva_pietre.JPG
15-PA010007-fungo_dell_olivo-Omphalotus_olearius.JPG
16-PA040549-fungo-bissino-Apioperdon_pyriforme-Lycoperdon_pyriforme.JPG
17-PA040477-funghi_mazza_di_tamburo-macrolepiota_procera.JPG
18-PA040230-bambina_pulisce_fungo_mazza_di_tamburo-macrolepiota_procera-paniere.JPG
19-PA010035-fungo_nero_trombetta_dei_morti_dell_abbondanza-Craterellus_cornucopioides.JPG
20-PA040238-bambina_raccoglie-mano-fungo_nero_trombetta_dei_morti_dell_abbondanza-Craterellus_cornucopioides.JPG
21-PA040372-paniere_funghi-mazza_di_tamburo-macrolepiota-trombette_dei_morti_dell_abbondanza-Craterellus_cornucopioides-galletti-Cantharellus_pallens-porcino-boletus_edulis_o_reticulatus-ramaria_aurea.JPG
22-PA040241-fungo_porcino-boletus_edulis_o_reticulatus.JPG
23-PA040252-bambino_raccoglie_fungo_porcino-boletus_edulis_o_reticulatus-impermeabile_kway.JPG
24-PA010158-fungo-arancione-ovulo-amanita_caesarea.JPG
25-PA040457-bambina_nel_bosco-alberi-quercia-faggio.JPG
26-PA040458-alberi-quercia-faggio-paniere.JPG
27-PA040469-1-paniere_funghi-ovulo-amanita_caesarea-mazza_di_tamburo-macrolepiota-ramaria_botrytis-trombette_dei_morti_dell_abbondanza-Craterellus_cornucopioides-galletti-Cantharellus_pallens.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Che meraviglia poter esplorare un altro pezzetto di bosco, poggiare i piedi su questa terra  
che custodisce una connessione tanto antica quanto viva, dalla quale possiamo osservare solo  
una piccola parte. Funghi che, come in festa, appaiono ai nostri occhi curiosi nella loro  
singolare bellezza e intelligenza. Grande e importante è ciò che possiamo imparare  
da questi organismi così incredibili.

Dal micelio che si muove con equilibrio dinamico, sceglie più percorsi e li intraprende,  
progetta costantemente il futuro e fruttifica in piena sintonia. Tutto con determinazione,  
audacia ma soprattutto resistenza collettiva.

Dalla micorriza che elogia la diversità e con empatia comunica, crea reciprocità  
e condivisione al fine di sostenere la vita in un ciclo continuo.

Questi organismi non costruiscono competizione e, al contrario di noi umani,  
non si impongono sugli altri.

La vita non termina nelle difficoltà ma può trasformarsi e, con determinazione,  
emergere più forte e vigorosa.
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
