#!/bin/bash

export PROJECT_ID=135
export PROJECT_DISPLAY_PRIORITY=135
export IMAGES_SOURCE_DIR="Levanzo-2025"
export PROJECT_TITLE="Sguardo a Levanzo. Fotografia del sentire"
export PROJECT_SEO="Olympus visual storytelling photography fotografa sicilia levanzo isole egadi lens zuiko mirrorless OM1 omsystem erica rosmarino cisto lentisco mare rocce calcaree lucertola ragno arum italicum pini aleppo poesia euforbia flora endimica"
export COVER_IMAGE="13-isole_egadi-levanzo-endemismi-flora-fauna.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-isole_egadi-levanzo-endemismi-flora-fauna-fichidindia-lentisco-rocce_calcaree.jpg
02-isole_egadi-levanzo-endemismi-flora-faunafichidindia-lentisco-rocce_calcaree.jpg
03-isole_egadi-levanzo-mare-porto-barca-case_bianche_blu-costa.jpg
04-isole_egadi-levanzo-mare-porto-barca-case_bianche_blu-costa.jpg
05-isole_egadi-levanzo-costa-paese-roccia-case_bianche_blu-barca.jpg
06-isole_egadi-levanzo-costa-paese-roccia-case_bianche_blu-barca-palme.jpg
07-isole_egadi-levanzo-mare-pesci.jpg
08-isole_egadi-levanzo-boe-vegetazione-fiori.jpg
09-isole_egadi-levanzo-paese-case_bianche_blu-pietra-scalinata.jpg
10-isole_egadi-levanzo-porto-barca_a_vela-ventinodi.jpg
11-isole_egadi-levanzo-porta_azzurra-galleggianti-scorcio-oblodarte.jpg
12-isole_egadi-levanzo-facciata_casa-porta_azzurra-galleggianti-scorcio-oblodarte.jpg
13-isole_egadi-levanzo-endemismi-flora-fauna.jpg
14-isole_egadi-levanzo-endemismi-flora-fauna.jpg
15-isole_egadi-levanzo-endemismi-flora-fauna.jpg
16-isole_egadi-levanzo-endemismi-flora-fauna-scogliera-gabbiani.jpg
17-isole_egadi-levanzo-endemismi-flora-fauna.jpg
18-isole_egadi-levanzo-endemismi-flora-fauna-scogliera-gabbiani.jpg
19-isole_egadi-levanzo-endemismi-flora-fauna-scoglio-gabbiano.jpg
20-isole_egadi-levanzo-endemismi-flora-pianta-fiori-periploca_angustifolia.jpg
21-isole_egadi-levanzo-endemismi-flora-fauna-agave-roccia.jpg
22-isole_egadi-levanzo-endemismi-flora-fauna-roccia-corvo.jpg
23-isole_egadi-levanzo-endemismi-flora-fauna-scogliera-panorama-mare.jpg
24-isole_egadi-levanzo-endemismi-flora-fauna-scogli.jpg
25-isole_egadi-levanzo-endemismi-flora-fauna-roccia-scoglio-stratificazione-acqua.jpg
26-isole_egadi-levanzo-endemismi-flora-fauna-lucertola.jpg
27-isole_egadi-levanzo-endemismi-flora-fauna-arum_italicum.jpg
28-isole_egadi-levanzo-endemismi-flora-fauna-ragno.jpg
29-isole_egadi-levanzo-endemismi-flora-fauna-barca_vela_ventinodi-mare.jpg
30-isole_egadi-levanzo-endemismi-flora-fauna-mare-pineta.jpg
31-isole_egadi-levanzo-endemismi-flora-fauna-panorama-spiaggia-mare.jpg
32-isole_egadi-levanzo-endemismi-flora-fauna-roccia-acqua-scorcio-mare.jpg
33-isole_egadi-levanzo-endemismi-flora-fauna-roccia-acqua-scorcio-mare.jpg
34-isole_egadi-levanzo-endemismi-flora-fauna-scogliera-lentisco.jpg
35-isole_egadi-levanzo-endemismi-flora-faunapanorama-scogliera.jpg
36-isole_egadi-levanzo-endemismi-flora-fauna-pietra_calcarea-mare.jpg
37-isole_egadi-levanzo-endemismi-flora-fauna-lucertola-finocchietto_mare-crithmum-maritimum.jpg
38-isole_egadi-levanzo-endemismi-flora-fauna-finocchietto_mare-crithmum-maritimum.jpg
39-isole_egadi-levanzo-endemismi-flora-fauna-finocchietto_mare-crithmum-maritimum.jpg
40-isole_egadi-levanzo-endemismi-flora-fauna-roccia-bianca-calcarea.jpg
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
La roccia, rosata dal sole, è ricoperta dalle forme estrose che assume il lentisco; i fichidindia  
in armonia resistono festosi di fronte al mare. Arrivo a Levanzo: l’acqua è cristallina, le case bianche  
seguono la curva della costa, una accanto all’altra con le loro imposte azzurre. Il mio sguardo si apre  
in una finestra di palme e da lì inizio a cercare la vegetazione che cresce spontanea nel paese.  
Le vie lastricate in pietra e le scalinate mi invitano a salire nel gioco di un nascondino tra le case leggere  
ed estetiche. Alla ricerca di flora e fauna, mentre scatto, lascio che ogni incontro  
con la bellezza crei nuova memoria. 

Il mare che costeggio cambia dall’azzurro al verde smeraldo, e i gabbiani hanno deciso di riposarsi insieme,  
allineati come pensieri leggeri. Salendo verso la montagna una lucertola si scalda immobile e si lascia fotografare  
con gentilezza; dello stesso verde vivo le foglie appariscenti del peculiare Arum italicum e la cespugliosa  
periploca angustifolia con i suoi stellari fiori purpurei.  
Poco più avanti, un ragno tesse la sua tela elegante: è un invito a fermarmi e a muovere lo sguardo al suo ritmo sottile.  

Dalla pineta al mare, dal mare alle rocce bianchissime, luogo prediletto del crithmum maritimum,  
osservo i suoi semi voluttuosi di rinascita mentre un'altra lucertola, col suo corpo vivace, indica la forma della roccia.  
Tutto mi chiama a ritornare, ad arricchire ancora il mio modo di vivere la natura,  
che per me resta, sempre la vera casa.
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
