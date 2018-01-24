Dans ce dossier vous trouverez:

./bench 	--> les fichier vhd des bench et les Vérification IP
./config 	--> les fichier source du CIME /!\ vérifier si mit a jour
./libs		--> library lib_VHD et lib_BENCH de compilation du projet 
./LOG		--> logs de compilation générer par les scripts
./scripts	--> scripts de compilation bench et vhd 
./spyglass	--> scripts spyglass et report ...
./vhd		--> fichiers source du design vhdl


################################################################################
Pour la compilation des fichier VHD et du bench 


/!\ /!\ sourcer l'outils "source ./config/config_RTL" /!\ /!\
/!\ /!\ sourcer le source.sh avec "source ./source.sh $PWD" /!\ /!\

executer les scripts compile_vhd puis compile_bench
il peut être executer par les liens compile_vhd et compile_bench dans le dossier Projet_3A/RTL (ici)
lancer modelsim

/!\ pour le lancement du bench bien vérifier que les fichier rdm sont dans ./bench/rdm/***.txt 
/!\ pour le lancement du bench bien vérifier que les fichier image mémoire sont dans ./bench/Alarm/***.img

Si il ne sont pas présent il faut les regénérer !!

Génération des fichier rdm_x.txt et XXX.img

1) Aller dans  Projet_3A/Matlab
2) lancer matlab (source le .bashrc... si besoin présent dans le dossier)
3) executer dans matlab le script Bitstream_gene.m et verifier qu'il ecrit les fichier MEM.img et GW.img
4) executer dans matlab le script mat_to_txt.m (oui le nom est pas top) attendre que les fichiers rdm_x.txt soit générer (oui c'est très long normale 60Mo par fichier quand même !!!!)
5) executer le fichier hex_bench.sh dans le terminal 
6) vérifier dans Projet_3A/RTl/bench/Alarm et Projet_3A/RTl/bench/rdm que les fichier soit correctment générer
7) Ba voila lancer la simu et attendre la fin (c'est aussi long ~15min mais pas necessaire d'aller a la fin !!)
 


ENJOY
