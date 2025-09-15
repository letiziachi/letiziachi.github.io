#!/bin/bash

export PROJECT_INDEX=115
export IMAGES_SOURCE_DIR="Regis_Baudy-DDT-2025"
export PROJECT_TITLE="Régis Baudy. Lo chef artista e la sua poetica del vegetale."
export PROJECT_SEO="Olympus visual storytelling photography fotografa sicilia monti nebrodi lens zuiko mirrorless OM1 omsystem mostra vernissage exhibition ddt project Régis Baudy chef beauclair atelier sustainable culinary finocchietto foraging biodiversita Martin Dècleve case natoli villa nobiliare romei"
export COVER_IMAGE="25-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
02-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
03-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
04-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
05-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
06-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
07-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
08-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
09-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
10-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
11-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
12-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
13-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
14-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
15-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
16-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
17-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
18-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
19-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
20-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
21-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
22-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
23-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
24-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
25-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
26-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
27-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
28-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
29-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
30-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
31-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
32-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
33-Dimora_nobiliare-Natoli-villa-Mostra-inaugurazione_collettiva_artistica-DDT_Project-Romei-Mistretta-Messina-arte_comtemporanea-dimora_nobiliare-villa-opere-chef-Regis_Baudy-tessere_ceramica_raku-Sebastiano_Leta.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT

Arrivato da Bruxelles, Régis Baudy ha fatto della cucina vegetale il suo linguaggio privilegiato. Chef che dedica la sua pratica culinaria  
all’esplorazione e alla valorizzazione del mondo vegetale: le sue ricerche ne svelano la ricchezza, tanto sul piano dietetico quanto su  
quello gustativo, e collocano il suo approccio in una prospettiva profondamente eco-responsabile. Un atto poetico che onora la natura e i suoi frutti.  
  
Martin Declève di <a href="https://www.instagram.com/d.d.t._project/" target="_blank">DDT Project</a> lo ha invitato in occasione della prima mostra  
Prima di lasciare questa regale dimora, dove — come scritto nel comunicato stampa - le creazioni culinarie dello chef-artista hanno aperto  
un dialogo sottile con il mondo vegetale.  
  
Sapevo che lo avrei incontrato e mi sono resa disponibile ad accompagnarlo nella raccolta di erbe e fiori spontanei edibili. Ho preparato una lista  
di ciò che cresce libero nella campagna che abito, riconoscendo in questa occasione un modo gentile di restituire dignità a ciò che spesso  
viene considerato invasivo, ma che in realtà porta il nome di biodiversità.  
  
L’ho incontrato un pomeriggio nella dimora. Tutto si è mosso con armonia: gli artisti si sono mescolati nelle stanze come figure rapide e concentrate,  
mentre l’allestimento prendeva lentamente forma. Régis mi aspettava nel palmento. Ci siamo presentati sorridendo mentre La luce del tramonto,  
sospinta dallo scirocco, filtrava dalla porta e spezzava l’ombra della stanza. Ci siamo subito intesi, abbiamo osservato insieme la lista e con entusiasmo  
mi ha detto che era già pronto, desideroso di esplorare le possibilità che il luogo offriva per la sua particolare cucina, creativa e impegnata.  
  
Siamo arrivati nella mia campagna e abbiamo raccolto insieme i fiori accesi dei piselli selvatici e del finocchietto, con la gioia di chi sa riconoscere  
la bellezza genuina della natura. 
Ci siamo spostati dopo in un'altra campagna, dove abbiamo raccolto i minuti fiori ocra dell’asparago e quelli della menta che amano fiorire congiuntamente,  
come in un abbraccio anch'esso spontaneo.
  
Questo l'inizio del nostro pregevole incontro.
E qui, una selezione di scatti dalla dimora, dove Régis ha accolto i visitatori della mostra. Bellezza poetica e sapori dai contrasti vivi, serviti  
su supporti in ceramica raku concepiti su misura dall'artista Sebastiano Leta. Disposti in due linee parallele come piedistalli in miniatura – raffinata  
unione di alchimia del gusto e mirabile arte. Ogni preparazione era una micro-scultura. Sacralizzando l’istante della degustazione, il gesto culinario  
invitava il pubblico a reinventare il proprio legame con il territorio e con le sue risorse.
  
Opening 16-17 Agosto 2025
Prima di lasciare questa regale dimora
Contrada Romei, Mistretta (ME)
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
