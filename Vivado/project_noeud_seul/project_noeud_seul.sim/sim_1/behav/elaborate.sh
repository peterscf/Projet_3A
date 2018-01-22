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
ExecStep $xv_path/bin/xelab -wto 00340cae70bd4c03980240d7b7359211 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot Bench_test_FPBN_behav xil_defaultlib.Bench_test_FPBN -log elaborate.log
