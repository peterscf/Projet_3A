#!/bin/bash
#cd ${PROJECT_DIR}/config/config_RTL
#source 

if [ -z $PROJECT_DIR ]
then
	echo "Veulliez sourcez le source.sh a la racine du dossier RTL"
else

	echo "CLEAN"
	echo "///////////////////////////////////////////////"
	rm -rf compile.log compile_top.log
	vdel -lib ${LIB_DIR}/lib_VHD -all
	vdel -lib ${LIB_DIR}/lib_BENCH -all
	echo "CLEAN OK"

	echo "CREATE LIB"
	echo "///////////////////////////////////////////////"
	vlib ${LIB_DIR}/lib_VHD
	vlib ${LIB_DIR}/lib_BENCH
	echo "CREATE LIB OK"

	echo "MAP LIB"
	echo "///////////////////////////////////////////////"

	vmap lib_BENCH ${LIB_DIR}/lib_BENCH
	vmap lib_VHD ${LIB_DIR}/lib_VHD
	echo "COMPILE TOP"
	echo "///////////////////////////////////////////////"
	vcom -work lib_VHD ${VHD_DIR}/*.vhd  >> compile_top.log
	#grep Errors compile_top.log
	echo "COMPILE BENCH"
	echo "///////////////////////////////////////////////"

	vcom -work lib_BENCH ${BENCH_DIR}/*.vhd >> compile.log
	grep Errors compile.log
	grep Error compile.log
fi
