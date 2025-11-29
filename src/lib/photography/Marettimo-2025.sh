#!/bin/bash

export PROJECT_ID=125
export PROJECT_DISPLAY_PRIORITY=125
export IMAGES_SOURCE_DIR="Marettimo-2025"
export PROJECT_TITLE="Respiro fiorito dell'autunno a Marettimo. Fotografia del sentire"
export PROJECT_SEO="Olympus visual storytelling photography fotografa sicilia marettimo isole egadi lens zuiko mirrorless OM1 omsystem erica rosmarino cisto lentisco mare rocce calcaree dolomitiche lucertola arum italicum pini aleppo poesia euforbia flora endimica"
export COVER_IMAGE="37-isole_egadi-marettimo-endemismi-flora-erica-scorcio-falesia-costa-mare.jpg"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
01-isole_egadi-marettimo-endemismi-flora-paese-case_bianche-montagne-nuvole.jpg
02-isole_egadi-marettimo-endemismi-flora-mare-case_bianche_blu-montagna-nuvole.jpg
03-isole_egadi-marettimo-endemismi-flora-erica_multiflora-rosmarino.jpg
04-isole_egadi-marettimo-endemismi-flora-pianta_erica_multiflora-fiori.jpg
05-isole_egadi-marettimo-endemismi-flora-erica-strapiombo-mare-pino_aleppo.jpg
06-isole_egadi-marettimo-endemismi-flora-roccia-spiumaggio.jpg
08-isole_egadi-marettimo-endemismi-flora-rosmarino-fiori-mare.jpg
09-isole_egadi-marettimo-endemismi-flora-erica_multiflora-cisto-lentisco-euforbia_arborea-vegetazione.jpg
10-isole_egadi-marettimo-endemismi-flora-erica-multiflora-rocce_calcaree-dolomitiche.jpg
11-isole_egadi-marettimo-endemismi-flora-rocce_calcaree_dolomitiche.jpg
12-isole_egadi-marettimo-endemismi-flora-rocce_calcaree_dolomitiche.jpg
14-isole_egadi-marettimo-endemismi-flora-fauna-aquila_di_bonelli.jpg
15-isole_egadi-marettimo-endemismi-flora-fauna-aquila_di_bonelli.jpg
16-isole_egadi-marettimo-endemismi-flora-fauna-aquila_di_bonelli.jpg
17-isole_egadi-marettimo-endemismi-flora-pini-scorcio-paese-case_bianche.jpg
18-isole_egadi-marettimo-endemismi-flora-chiesa_bizantina-pini-cisto.jpg
19-isole_egadi-marettimo-endemismi-flora-scorcio-chiesa_bizantina-roccia-montagna.jpg
20-isole_egadi-marettimo-endemismi-flora-sorgente_acqua-abbeveratoio_pietra.jpg
21-isole_egadi-marettimo-endemismi-flora-chiesa_bizantina-pini_aleppo-mare.jpg
22-isole_egadi-marettimo-endemismi-flora-roccia_calcarea-mare.jpg
23-isole_egadi-marettimo-endemismi-flora-erica-montagna-rocce_calcaree_dolomitiche.jpg
24-isole_egadi-marettimo-endemismi-flora-castello_di_punta_troia-mare-roccia_calcarea.jpg
25-isole_egadi-marettimo-endemismi-flora-euforbia_arborea.jpg
26-isole_egadi-marettimo-endemismi-flora-sentiero-mulattiera-monte_falcone.jpg
27-isole_egadi-marettimo-endemismi-flora-rosmarino-erica.jpg
28-a-isole_egadi-marettimo-endemismi-flora-erica_multiflora--licheni-cisto-euforbia_arborea-castello_punta_troia-mare.jpg
28-isole_egadi-marettimo-endemismi-flora-rosmarino-accoppiamento-crisolina_americana.jpg
29-isole_egadi-marettimo-endemismi-flora-pianta-cisto-fiore.jpg
30-isole_egadi-marettimo-endemismi-flora-pianta-fiori-erica-multiflora.jpg
31-isole_egadi-marettimo-endemismi-flora-barranchi-rocce_calcaree_dolomitiche-falesie-strapiombo_mare.jpg
32-isole_egadi-marettimo-endemismi-flora-montagna-roccia_calcarea_dolomitica.jpg
33-isole_egadi-marettimo-endemismi-flora-montagna-roccia_calcarea_dolomitica.jpg
34-isole_egadi-marettimo-endemismi-flora-montagna-roccia_calcarea_dolomitica-falesia-mare-caletta.jpg
35-isole_egadi-marettimo-endemismi-flora-rocce_calcaree_dolomitiche-falesie-barranchi-scorcio.jpg
36-isole_egadi-marettimo-endemismi-flora-erica-multiflora-rosmarino-falesie-panorama-castello_punta_troia-mare-nuvole.jpg
37-isole_egadi-marettimo-endemismi-flora-erica-scorcio-falesia-costa-mare.jpg
38-isole_egadi-marettimo-endemismi-flora-erica-multiflora-scorcio-rocce_calcaree_dolomitiche.jpg
39-isole_egadi-marettimo-endemismi-flora-lentisco-erica_multiflora-roccia_calcarea_dolomitica-falesia.jpg
40-isole_egadi-marettimo-endemismi-flora-euforbia_arborea-roccia.jpg
41-isole_egadi-marettimo-endemismi-flora-licheni-erica_multiflora.jpg
42-isole_egadi-marettimo-endemismi-flora-finocchietto_mare-scorcio-spiaggia.jpg
43-isole_egadi-marettimo-endemismi-flora-spiaggia-rocce.jpg
44-isole_egadi-marettimo-endemismi-flora-spiaggia-roccia-scorcio.jpg
45-isole_egadi-marettimo-endemismi-flora-spiaggia-roccia-luna.jpg
46-isole_egadi-marettimo-endemismi-flora-marettimo-panorama-mare-montagna.jpg
47-isole_egadi-marettimo-panorama-montagna-rocce_calcaree_dolomitiche.jpg
48-isole_egadi-marettimo-mare-nuvole.jpg
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
Marettimo, la più lontana e la più alta, custode di preziosi endemismi delle isole Egadi, al mattino appare con l’alba che scalda  
le case dipinte di bianco e le imposte blu che richiamano le onde, una piccola linguetta antropizzata con il suo porto raccolto.  
È un’isola che, al primo passo, incita al cammino: a entrare nel bosco di pini d’Aleppo, a incamminarsi tra i sentieri e le mulattiere,  
a salire. Oggi in cima ci sono nuvole che si muovono lentamente, si sfumano sulle vette. Da un lato il mare, che con i suoi riflessi  
brilla e illumina anche gli occhi di piacere; dall’altro la prima vegetazione, un respiro che mi accoglie e mi accompagna per tutto il percorso.  
L’erica multiflora, con i suoi rosa accesi, spicca; il rosmarino, coi fiori lilla, le si affianca. Una vegetazione libera di esprimere il piacere,  
che lascia solo qualche punto alla roccia per emergere e scaldarsi.  
Le nuvole scivolano seguendo i miei passi, come per disegnare una linea da seguire fino alle rocce calcaree dolomitiche, dove il lentisco  
si aggrappa e, fedele ai punti più impervi, cresce appagato.  
Con questa luce che si alterna ai bei raggi di sole, la pietra si fa avorio e i grigi diventano caldi, vicini alle infiltrazioni ferrose  
che donano dinamismo agli strati di roccia.  
Rifugio di molti uccelli, questo luogo mi offre il volo di un’aquila che osservo incantata, forse un’aquila di Bonelli, che gira e danza col vento.  
Poi la chiesetta bizantina, punto prezioso nel quale sgorga una sorgente d’acqua purissima, dove affacciandosi ci si può tuffare  
con lo sguardo e con il cuore.  
Due crisoline, amanti del rosmarino, fanno l’amore. I fiori di rosmarino riempiono i miei respiri e addolciscono la mia bocca. Camminando sento solo  
tanta emozione e fiorisco ancora una volta insieme alla vera casa: la natura.  
Ogni tanto il cisto spicca con qualche fiore tra i tanti ormai sfioriti ed è ancora l’erica multiflora che, con sorellanza, lo arricchisce e lo esalta.  
  
Inizio a vedere Punta Troia, sulla punta nord-est: una lingua rocciosa di pietra chiara che si innalza, la fortezza medievale che risale al XIV secolo.  
Dal punto in cui mi fermo a osservarla, la vegetazione sotto di me riecheggia e chiede attenzione. Non voglio distrarmi, così scatto e continuo, sentendo  
ogni passo importante, sincero, coerente col mio trovarmi qui.  
E finalmente anche i “barranchi”, chiamati così dagli abitanti, mi appaiono maestosi, veleggiati dalle nuvole. In ogni fessura nasce con passione l’erica,  
il rosmarino, l’euforbia arborea, il cisto, il lentisco, con i licheni che schiariscono la macchia creando un contrasto armonioso.  
Arrivo in spiaggia, allontanandomi un po’ dal castello: una spiaggia mesta e affascinante. Le onde creano una schiuma bianca addolcita dai riflessi  
azzurri; contemplo il loro movimento che mi entra negli occhi inondandoli. In alto, la luna tra le rocce scure modellate dal carattere delle onde.  
  
Da lì il mio ritorno si apre con il mare davanti lasciando dietro le montagne altissime, con una striscia antropizzata che piano piano scompare.  
L’acqua assorbe la prima luce del tramonto, sulla roccia i disegni delle stratificazioni emergono nella loro lunga storia, mentre una nuvola  
si fa maestosa, ricordando la vetta.  
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
