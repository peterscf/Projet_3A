#!/bin/bash
#cd ${PROJECT_DIR}/config/config_RTL
#source 

if [ -z $PROJECT_DIR ]
then
	echo "Veulliez sourcez le source.sh a la racine du dossier RTL"
else

	echo "CLEAN BENCH"
	echo "///////////////////////////////////////////////"
	rm -rf ${LOG_DIR}/compile.log
	vdel -lib ${LIB_DIR}/lib_BENCH -all
	echo "CLEAN OK"

	echo "CREATE LIB BENCH"
	echo "///////////////////////////////////////////////"
	vlib ${LIB_DIR}/lib_BENCH >> ${LOG_DIR}/compile.log
	echo "CREATE LIB OK"

	echo "MAP LIB BENCH"
	echo "///////////////////////////////////////////////"

	vmap lib_BENCH ${LIB_DIR}/lib_BENCH >> ${LOG_DIR}/compile.log
	vmap lib_VHD ${LIB_DIR}/lib_VHD >> ${LOG_DIR}/compile.log
	echo "COMPILE BENCH"
	echo "///////////////////////////////////////////////"
	vcom -work lib_VHD ${BENCH_DIR}/*.vhd  >> ${LOG_DIR}/compile.log
	grep Error ${LOG_DIR}/compile.log
fi
