#!/bin/bash

export PROJECT_INDEX=63
export IMAGES_SOURCE_DIR="/media/letizia/ADB6-6E82/2023-SICILIA/2023-10-06-Tribbu_Canalicchio_raccolta_fichidindia_bagno_gebbia_olive_verdi/Ficurinie_ruci_ruci/"
export PROJECT_TITLE="Ficurinie ruci ruci"
export PROJECT_SEO="Sicilia fichidindia higo chumbo prickly pear cactus olive ulivi Monti Nebrodi bambini educazione natura ricordi tradizioni tinycottons Olympus OM1"
export COVER_IMAGE="07-PA060092.JPG"

source ../projects_utils.sh

function imagesList()
{
	cat << ENDLIST
00-PA060027.JPG
01-PA060020.JPG
02-PA060049.JPG
03-PA060042.JPG
04-PA060037.JPG
05-PA060080.JPG
06-PA060081.JPG
07-PA060092.JPG
08-PA060117.JPG
09-PA060166.JPG
10-PA060147.JPG
11-P6170862.JPG
12-PA060136.JPG
13-PA060150.JPG
14-PA060134.JPG
15-PA060156.JPG
16-PA060163.JPG
17-PA060162.JPG
18-PA060181.JPG
19-PA060198.JPG
20-PA060204.JPG
21-PA060221.JPG
22-PA060224.JPG
23-PA060217.JPG
24-PA060226.JPG
25-PA060245.JPG
26-PA060236.JPG
27-PA060249.JPG
28-PA060254.JPG
29-PA060262.JPG
30-PA060263.JPG
31-PA060264.JPG
32-PA060266.JPG
33-PA060295.JPG
34-PA060297.JPG
35-PA060315.JPG
36-PA060311.JPG
37-PA060246.JPG
ENDLIST
}

function projectText()
{
	cat << ENDTEXT
In Sicilia, in un pezzo di terra chiamato Canalicchio, ogni anno raccogliamo dei frutti di valore.
Fichidindia succosi che con voluttà esplodono di bellezza e dolcezza.  
Questi cactus sono stati piantati da mio nonno in una valle fatta di sole e ricordi.  
Non l'ho mai conosciuto ma grazie a mia madre ne custodisco l'umiltà, la gentilezza,  
la sapienza e la passione, il suo legame a questa terra e alle persone che lo amavano.  
Passare del tempo in questo luogo è come donare un bene antico e prezioso ai miei figli Vittorio e Sibilla.  
Un bene genuino che con autenticità nutre e fa crescere il loro sentire, la loro sensibilità,  
il loro amore per la natura e le nostre radici.


*Titolo in italiano: Fichidindia dolci dolci*
ENDTEXT
}

# generate only if executed directly not sourced by other script
(return 0 2>/dev/null) || generateProject
