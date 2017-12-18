#!/bin/bash


if [ $1 = "clean" ]
then
	unset PROJECT_DIR
	unset VHD_DIR
	unset BENCH_DIR
	unset LIB_DIR
	echo "clean ------>OK"

elif [ -n $1 ]
then
	export PROJECT_DIR=$1
	echo "verification --> PROJECT_DIR=$PROJECT_DIR"
	#echo "Si erreur veuillez taper : export PROJECT_DIR = ~/Projet_3A/RTL"
	export VHD_DIR="${PROJECT_DIR}/vhd"
	export BENCH_DIR="${PROJECT_DIR}/bench"
	export LIB_DIR="${PROJECT_DIR}/libs"
	export LOG_DIR="${PROJECT_DIR}/LOG"
	export MODELSIM="${PROJECT_DIR}/modelsim.ini"


else
	export PROJECT_DIR=`pwd`
	echo "$PROJECT_DIR --> verification"
	echo "Si erreur veuillez taper : source ./source.sh ~/Projet_3A/RTL"
	export VHD_DIR="${PROJECT_DIR}/vhd"
	export BENCH_DIR="${PROJECT_DIR}/bench"
	export LIB_DIR="${PROJECT_DIR}/libs"
	export LOG_DIR="${PROJECT_DIR}/LOG"
	export SCRIPT_DIR="${PROJECT_DIR}/scripts"
	export MODELSIM="${PROJECT_DIR}/modelsim.ini"
fi
