#!/bin/bash

export PROJECT_INDEX=115
export IMAGES_SOURCE_DIR="Regis_Baudy-DDT-2025"
export PROJECT_TITLE="Régis Baudy. Lo chef-artista e la sua poetica del vegetale."
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

Arrivato da Bruxelles, Régis Baudy ha fatto della cucina vegetale il suo linguaggio privilegiato. Chef che dedica la sua pratica culinaria all’esplorazione  
e alla valorizzazione del mondo vegetale: le sue ricerche ne svelano la ricchezza, tanto sul piano dietetico quanto su quello gustativo, e collocano  
il suo approccio in una prospettiva profondamente eco-responsabile. Etica, estetica e dietetica si intrecciano così nei suoi gesti, trasformando  
ogni creazione in un atto poetico che onora la natura e i suoi frutti.  
  
Martin Declève di <a href="https://www.instagram.com/d.d.t._project/" target="_blank">DDT Project</a> lo ha invitato in occasione della prima mostra  
Prima di lasciare questa regale dimora, dove — come scritto nel comunicato stampa - le creazioni culinarie dello chef-artista hanno aperto un dialogo sottile con il mondo vegetale.  
Sapevo che lo avrei incontrato e mi sono resa disponibile ad accompagnarlo nella ricerca di erbe e fiori spontanei edibili. Così ho iniziato a immaginare e a preparare  
una lista di ciò che cresce libero nella campagna che abito. Ho sentito che questa era un’occasione preziosa per ribaltare l’ordine imposto e restituire dignità a ciò che qui viene  
considerato inutile, e che invece porta il nome di biodiversità: un valore sempre più negato in un territorio dove si persegue l’estirpazione di ogni forma spontanea, giustificata  
con l’illusione di “puliziare u terreno” e guidata, in realtà, da interessi ridotti al mero profitto economico, emblema di una visione utilitaristica e impoverente.  
  
L’ho incontrato un pomeriggio nella dimora. Tutto si è mosso con un’armonia raccolta: gli artisti si sono intrecciati nelle stanze come figure rapide e concentrate,  
mentre l’allestimento ha preso lentamente forma. Régis mi aspettava nel palmento. Ci siamo presentati sorridendo. La luce del tramonto, sospinta dallo scirocco, filtrava  
dalla porta e spezzava l’ombra della stanza. Ci siamo subito intesi e abbiamo rivolto l’attenzione a come avrei potuto accompagnarlo nella sua ricerca.  
Abbiamo osservato insieme la lista e con entusiasmo mi ha detto che era pronto, desideroso di esplorare le possibilità che il luogo offre per la sua particolare cucina, creativa e impegnata.

Siamo arrivati nella mia campagna. Régis ha osservato le montagne, il cielo mosso dallo scirocco che si univa al mare e le piante intorno a lui,  
con lo stesso stupore limpido dell’infanzia.  
Abbiamo raccolto i fiori vividi dei piselli selvatici e del finocchietto con la gioia di chi sa riconoscere la bellezza silenziosa della natura. 
Ci siamo spostati dopo in un'altra campagna, dove abbiamo raccolto i minuti fiori ocra dell’asparago e quelli della menta che amano fiorire congiuntamente,  
come in un abbraccio anch'esso spontaneo.

Questo l'inizio del nostro pregevole incontro.
E qui, una selezione di scatti dalla dimora, dove Régis ha accolto i visitatori della mostra. Bellezza poetica e sapori dai contrasti vivi, serviti su supporti in ceramica raku concepiti  
su misura, disposti in due linee parallele come piedistalli in miniatura – raffinata unione di alchimia del gusto e mirabile arte. Ogni preparazione si fa micro-scultura, sacralizzando  
l’istante della degustazione: il gesto culinario invita il pubblico a reinventare il proprio legame con il territorio e con le sue risorse.
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
