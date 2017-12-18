#!/bin/bash



if [ -z $PROJECT_DIR ]
then
	echo "Veulliez sourcez le source.sh a la racine du dossier RTL"
else
	echo "compile vhd"
	source "${SCRIPT_DIR}/compile_vhd.sh"
	echo "compile bench"
	source "${SCRIPT_DIR}/compile_bench.sh"
	echo "lancement de vsim"
fi
	
