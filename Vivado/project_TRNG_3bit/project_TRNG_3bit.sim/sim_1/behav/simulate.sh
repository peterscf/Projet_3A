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
ExecStep $xv_path/bin/xsim Bench_test_FPBN_behav -key {Behavioral:sim_1:Functional:Bench_test_FPBN} -tclbatch Bench_test_FPBN.tcl -log simulate.log
