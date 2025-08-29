#!/bin/bash

export PROJECT_INDEX=1
export IMAGES_SOURCE_DIR="Mostra_DDT-2025"
export PROJECT_TITLE="Prima di lasciare questa regale dimora"
export PROJECT_SEO="Olympus visual storytelling photography fotografa sicilia monti nebrodi lens zuiko mirrorless OM1 omsystem mostra vernissage exhibition ddt project Régis Baudy Sébastien Bonin Alessandro Costanzo Étienne Courtois Martin Dècleve Myriam El Haïk Laurent Friob Anna Guillot Sebastiano Leta Renee Marcus Janssen Emmanuel Piron Rawakari Agostino Rocco Alfredo Sciuto case natoli villa nobiliare romei"
export COVER_IMAGE="01-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama.JPG
02-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-flyer.JPG
02-Scorcio-fontana-pietra_antica_arenzaria_scultura-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa.JPG
03-Terrazzo-fichidindia-scorcio-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-villa_antica.JPG
04-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-cane-pietra_antica-arenaria.JPG
05-Terrazzo-fichidindia-scorcio-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-villa_antica.JPG
06-Chiesa_antica-ceramica-maiolica_dipinta-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-villa-artista-fotografie-Martin_Decleve-analogico-restauro.JPG
07-Chiesa_antica-ceramica-maiolica_dipinta-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-villa-artista-fotografie-Martin_Decleve-analogico.JPG
08-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-villa-fotografie-artista_Laurent_Friob-ritratto.JPG
09-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama.JPG
09-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-installazione-artista_Alfredo_Sciuto-Il_ritorno_di_Ulisse-barche_carta_rivestimento_stanza_pavimento.JPG
10-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera-fotografie_artistiche.JPG
11-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-dimora_nobiliare-villa-opera-fotografie_artistiche-vegetazione-terzo_paesaggio-carta_parati_antica.JPG
12-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera-fotografie_artistiche-02.JPG
12-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera-fotografie_artistiche.JPG
13-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-architettura_interna-visitatori-pavimento_antico-affreschi.JPG
14-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera-Alessandro_Costanzo.JPG
15-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opera_artistica.JPG
16-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-visitatori.JPG
17-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-visitatori.JPG
18-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera-aristica-Sebastiano_Leta-ceramiche-piatti_materici.JPG
19-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera-fotografie_artistica-ritratto-Sebastien_Bonin.JPG
20-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opera-artistica-Agostino_Rocco-bambini_dipinti-farfalle.JPG
21-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere.JPG
22-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera-Renee_Marcus_Janssen-sculture-pipistrelli.JPG
23-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-opera_artistica-Sebastiano_Leta.JPG
24-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_col_artistica-DDT_Project-Romei-Mistretta-Mes-arte_comtemporanea-dimora_nobiliare-villa-panorama-opere-buffet-gourmet-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
25-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-dimora_nobiliare-villa-panorama-opere-buffet-gourmet-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
26-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-dimora_nobiliare-villa-panorama-opere-buffet-gourmet-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
27-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-concerto-musicista-Settevoci-sassofono.JPG
28-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-panorama-concerto-musicista-Settevoci-sassofono.JPG
29-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-dimora_nobiliare-villa-brindisi-Martin_Decleve-vino_bianco-Popup-azienda_agricola_Via_del_gelso_Marsala.JPG
30-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-dimora_nobiliare-villa-brindisi-Regis_Baudy-vino_bianco-Popup-azienda_agricola_Via_del_gelso_Marsala.JPG
31-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-arte_comtemporanea-dimora_nobiliare-villa-brindisi-Sebastiano_Leta-vino_bianco-Popup-azienda_agricola_Via_del_gelso_Marsala.JPG
31-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-brindisi-vino_bianco-Popup-azienda_agricola_Via_del_gelso_Marsala.JPG
32-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-brindisi-Valerie_Verdinne-vino_bianco.JPG
33-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-performance_musicale-Myriam_El_Haik.JPG
34--Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-performance_musicale-Myriam_El_Haik.JPG
35-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-performance_musicale-Myriam_El_Haik.JPG
36-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-performance_musicale-Myriam_El_Haik.JPG
37-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-installazione-Alfredo_Sciuto-Il_ritorno_di_Ulisse.JPG
38-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-installazione-Alfredo_Sciuto-Il_ritorno_di_Ulisse.JPG
39-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-Renee_Marcus_Janssen-pipistelli-sculture.JPG
40-Dimora_nobiliare-Natoli-villa-Mostra-Opening-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-DDT_PROJECT-neon-Riccardo_Gueci.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Una mattina che comincia tra i rovi. Con Gio decidiamo di raccogliere le prime more,  
così le dita si tingono di viola e il sapore dolce indugia a lungo in bocca.  
Rientrando a casa penso già a una galette, questa volta dedicata a chi incontreremo nel pomeriggio.  
Sono Martin Declève e Valérie Verdinne, persone che hanno saputo riconoscere nei Nebrodi una bellezza unica,  
tanto da fermarsi qui e scegliere di custodire un’antica dimora nobiliare, densa di storia e fascino.  
Scrivo a Martin e verso sera li raggiungiamo. Li troviamo ancora intenti a riordinare e pulire,  
ma il loro sorriso è luce di empatia e accoglienza sincera. È allora che ci raccontano di
<a href="https://www.instagram.com/d.d.t._project/" target="_blank">DDT Project</a> e della preparazione  
della loro prima esposizione collettiva pensata per legare il passato al contemporaneo, intrecciando  
memoria storica e nuovi sguardi.  

Prima di lasciare questa regale dimora è un progetto che trasforma le Case Natoli, abbandonate da decenni,  
in un luogo vivo in cui epoche diverse si parlano e generano nuove visioni di futuro. È un invito a percorrere stanze e giardini  
lasciandosi guidare dai sensi, un cammino che restituisce linfa a un ambiente nobile e lo apre come spazio di incontro,  
creazione e ricerca condivisa.  
Mentre raccontano, con la stessa naturalezza con cui si aprono le porte della dimora, Martin mi invita a fotografare questa prima iniziativa.  
Desidera che il mio sguardo possa diventare memoria, traccia viva di quell’inaugurazione. Accogliere questo invito mi colma di gioia  
e l’onore di poter raccontarlo con i miei scatti mi emoziona profondamente.  

Così inizio a osservare i dettagli: i pavimenti antichi che custodiscono il suono dei passi, gli affreschi che rivelano la grazia  
di mani sapienti, capaci di tanta finezza. La vegetazione che avvolge alcuni punti della dimora e i frutti che esplodono di luce sembrano unirsi  
in un linguaggio, che collega retaggi del passato al contemporaneo.

Sul davanzale di una finestra una scritta lasciata nel 1903: parole di ringraziamento semplici, ma ancora oggi vibranti. Una in particolare  
mi resta impressa, antica e quasi dimenticata: svisceratamente. Una parola forte, che sembra nominare l’essenza stessa di questo luogo,  
e credo che Martin e Valérie l’abbiano respirata ancor prima di leggerla.  
Così questa prima iniziativa diventa un invito al ritrovo, alla scoperta della bellezza autentica e concreta. Un intreccio di memorie e nuove visioni. 

Qui, una selezione degli scatti che vuole restituire il succo di questa esperienza preziosa e condivisa.
-
Régis Baudy, Sébastien Bonin, Alessandro Costanzo, Étienne Courtois, Martin Declève, Myriam El Haïk, Laurent Friob, Anna Guillot,  
Sebastiano Leta, Renee Marcus Janssen, Emmanuel Piron, Rawakari, Agostino Rocco, Alfredo Sciuto.

ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
