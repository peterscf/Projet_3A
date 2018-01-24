#
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

# reduction de criticité de warning


set_property SEVERITY {Warning} [get_drc_checks LUTLP-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

#Indique qu'il faut tolerer les boucle combinatoire
#set_property ALLOW_COMBINATORIAL_LOOPS true




set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/o0_i_1]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/o0_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/o0_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/o0_i_1__2]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/o0_i_1__3]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/o0_i_1__4]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/o0_i_1__5]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/o0_i_1__6]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/o0_i_1__7]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/o0_i_1__8]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/o0_i_1__10]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/o0_i_1__11]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/o0_i_1__12]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/o0_i_1__13]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/o0_i_1__9]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/o0_i_1__14]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/o0_i_1__15]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/o0_i_1__16]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/o0_i_1__17]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/o0_i_1__18]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/o0_i_1__20]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/o0_i_1__21]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/o0_i_1__22]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/o0_i_1__23]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/o0_i_1__19]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/o0_i_1__24]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/o0_i_1__25]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/o0_i_1__26]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/o0_i_1__27]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/o0_i_1__28]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/o0_i_1__29]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/o0_i_1__30]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/o0_i_1__31]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/o0_i_1__32]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/o0_i_1__33]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/o0_i_1__34]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/o0_i_1__35]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/o0_i_1__36]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/o0_i_1__37]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/o0_i_1__38]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/o0_i_1__39]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/o0_i_1__40]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/o0_i_1__41]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/o0_i_1__42]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/o0_i_1__43]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/o0_i_1__44]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/o0_i_1__45]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/o0_i_1__46]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/o0_i_1__47]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/o0_i_1__48]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/o0_i_1__49]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/o0_i_1__50]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/o0_i_1__51]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/o0_i_1__52]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/o0_i_1__53]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/o0_i_1__54]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/o0_i_1__55]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/o0_i_1__56]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/o0_i_1__57]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/o0_i_1__58]]


set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/o0_i_1__59]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/o0_i_1__60]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/o0_i_1__61]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/o0_i_1__62]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/o0_i_1__63]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/o0_i_1__64]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/o0_i_1__65]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/o0_i_1__66]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/o0_i_1__67]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/o0_i_1__68]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/o0_i_1__69]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/o0_i_1__70]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/o0_i_1__71]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/o0_i_1__72]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/o0_i_1__73]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/o0_i_1__74]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/o0_i_1__75]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/o0_i_1__76]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/o0_i_1__77]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/o0_i_1__78]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/o0_i_1__79]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/o0_i_1__80]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/o0_i_1__81]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/o0_i_1__82]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/o0_i_1__83]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/o0_i_1__84]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/o0_i_1__85]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/o0_i_1__86]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/o0_i_1__87]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/o0_i_1__88]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/o0_i_1__89]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/o0_i_1__90]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/o0_i_1__91]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/o0_i_1__92]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/o0_i_1__93]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/o0_i_1__94]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/o0_i_1__95]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/o0_i_1__96]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/o0_i_1__97]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/o0_i_1__98]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/o0_i_1__99]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/o0_i_1__100]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/o0_i_1__101]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/o0_i_1__102]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/o0_i_1__103]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/o0_i_1__104]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/o0_i_1__105]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/o0_i_1__106]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/o0_i_1__107]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/o0_i_1__108]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/o0_i_1__109]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/o0_i_1__110]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/o0_i_1__111]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/o0_i_1__112]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/o0_i_1__113]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/o0_i_1__114]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/o0_i_1__115]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/o0_i_1__116]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/o0_i_1__117]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/o0_i_1__118]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/o0_i_1__119]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/o0_i_1__120]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/o0_i_1__121]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/o0_i_1__122]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/o0_i_1__123]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/o0_i_1__124]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/o0_i_1__125]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/o0_i_1__126]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/o0_i_1__127]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/o0_i_1__128]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/o0_i_1__129]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/o0_i_1__130]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/o0_i_1__131]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/o0_i_1__132]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/o0_i_1__133]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/o0_i_1__134]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/o0_i_1__135]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/o0_i_1__136]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/o0_i_1__137]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/o0_i_1__138]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/o0_i_1__139]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/o0_i_1__140]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/o0_i_1__141]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/o0_i_1__142]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/o0_i_1__143]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/o0_i_1__144]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/o0_i_1__145]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/o0_i_1__146]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/o0_i_1__147]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/o0_i_1__148]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/o0_i_1__149]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/o0_i_1__150]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/o0_i_1__151]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/o0_i_1__152]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/o0_i_1__153]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/o0_i_1__154]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/o0_i_1__155]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/o0_i_1__156]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/o0_i_1__157]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/o0_i_1__158]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/o0_i_1__159]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/o0_i_1__160]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/o0_i_1__161]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/o0_i_1__162]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/o0_i_1__163]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/o0_i_1__164]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/o0_i_1__165]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/o0_i_1__166]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/o0_i_1__167]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/o0_i_1__168]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/o0_i_1__169]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/o0_i_1__170]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/o0_i_1__171]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/o0_i_1__172]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/o0_i_1__173]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/o0_i_1__174]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/o0_i_1__175]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/o0_i_1__176]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/o0_i_1__177]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/o0_i_1__178]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/o0_i_1__179]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/o0_i_1__180]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/o0_i_1__181]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/o0_i_1__182]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/o0_i_1__183]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/o0_i_1__184]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/o0_i_1__185]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/o0_i_1__186]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/o0_i_1__187]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/o0_i_1__188]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/o0_i_1__189]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/o0_i_1__190]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/o0_i_1__191]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/o0_i_1__192]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/o0_i_1__193]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/o0_i_1__194]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/o0_i_1__195]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/o0_i_1__196]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/o0_i_1__197]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/o0_i_1__198]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/o0_i_1__199]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/o0_i_1__200]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/o0_i_1__201]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/o0_i_1__202]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/o0_i_1__203]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/o0_i_1__204]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/o0_i_1__205]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/o0_i_1__206]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/o0_i_1__207]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/o0_i_1__208]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/o0_i_1__209]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/o0_i_1__210]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/o0_i_1__211]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/o0_i_1__212]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/o0_i_1__213]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/o0_i_1__214]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/o0_i_1__215]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/o0_i_1__216]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/o0_i_1__217]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/o0_i_1__218]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/o0_i_1__219]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/o0_i_1__220]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/o0_i_1__221]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/o0_i_1__222]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/o0_i_1__223]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/o0_i_1__224]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/o0_i_1__225]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/o0_i_1__226]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/o0_i_1__227]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/o0_i_1__228]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/o0_i_1__229]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/o0_i_1__230]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/o0_i_1__231]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/o0_i_1__232]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/o0_i_1__233]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/o0_i_1__234]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/o0_i_1__235]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/o0_i_1__236]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/o0_i_1__237]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/o0_i_1__238]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/o0_i_1__239]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/o0_i_1__240]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/o0_i_1__241]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/o0_i_1__242]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/o0_i_1__243]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/o0_i_1__244]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/o0_i_1__245]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/o0_i_1__246]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/o0_i_1__247]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/o0_i_1__248]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/o0_i_1__249]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/o0_i_1__250]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/o0_i_1__251]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/o0_i_1__252]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/o0_i_1__253]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/o0_i_1__254]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/o0_i_1__255]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/o0_i_1__256]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/o0_i_1__257]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/o0_i_1__258]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/o0_i_1__259]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/o0_i_1__260]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/o0_i_1__261]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/o0_i_1__262]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/o0_i_1__263]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/o0_i_1__264]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/o0_i_1__265]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/o0_i_1__266]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/o0_i_1__267]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/o0_i_1__268]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/o0_i_1__269]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/o0_i_1__270]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/o0_i_1__271]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/o0_i_1__272]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/o0_i_1__273]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/o0_i_1__274]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/o0_i_1__275]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/o0_i_1__276]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/o0_i_1__277]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/o0_i_1__278]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/o0_i_1__279]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/o0_i_1__280]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/o0_i_1__281]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/o0_i_1__282]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/o0_i_1__283]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/o0_i_1__284]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/o0_i_1__285]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/o0_i_1__286]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/o0_i_1__287]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/o0_i_1__288]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/o0_i_1__289]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/o0_i_1__290]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/o0_i_1__291]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/o0_i_1__292]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/o0_i_1__293]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/o0_i_1__294]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/o0_i_1__295]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/o0_i_1__296]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/o0_i_1__297]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/o0_i_1__298]]

######################################################

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/r1/Q_i_2]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/r1/Q_i_2]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux5_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux5_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux5_inferred_i_1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux1_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux1_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux1_inferred_i_1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux2_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux2_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux2_inferred_i_1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux3_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux3_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux3_inferred_i_1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux4_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux4_inferred_i_1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux4_inferred_i_1]]



#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux1_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux1_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux1_inferred_i_1__1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux2_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux2_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux2_inferred_i_1__1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux3_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux3_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux3_inferred_i_1__1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux4_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux4_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux4_inferred_i_1__1]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux5_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux5_inferred_i_1__1]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux5_inferred_i_1__1]]



#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux1_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux1_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux1_inferred_i_1__0]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux2_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux2_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux2_inferred_i_1__0]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux3_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux3_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux3_inferred_i_1__0]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux4_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux4_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux4_inferred_i_1__0]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/mux5_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/mux5_inferred_i_1__0]]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/mux5_inferred_i_1__0]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/o0_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/o0_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/o0_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/o0_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/o0_i_1]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/o0_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/o0_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/o0_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/o0_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/o0_i_1__0]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/o0_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/o0_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/o0_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/o0_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/o0_i_1__1]]



