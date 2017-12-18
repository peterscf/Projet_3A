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
ExecStep $xv_path/bin/xsim bench_tst_cna_behav -key {Behavioral:sim_1:Functional:bench_tst_cna} -tclbatch bench_tst_cna.tcl -log simulate.log
