#!/bin/bash -f
xv_path="/softslin/vivado_17.1/Vivado/2017.1"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto c7f35dab79af4fbf94ffc538e99b6d15 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot bench_tst_cna_behav xil_defaultlib.bench_tst_cna -log elaborate.log
