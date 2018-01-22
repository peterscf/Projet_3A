#
set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
#Indique qu'il faut tolerer les boucle combinatoire
#set_property ALLOW_COMBINATORIAL_LOOPS true



#attribute LOC of noeud_out_1 : signal is "Y11,AA11,Y19,AA9,AB11,AB10,AB9,AA8,AB6,AB7";   -- LEDG
#attribute IOSTANDARD of noeud_out_1 : signal is "LVCMOS33";





# Indique qu'il n'y a pas de  ventilateur, rectifie le calcul de la température de junction
set_operating_conditions -airflow 0
set_operating_conditions -heatsink low

#"Y11,AA11,Y19,AA9,AB11,AB10,AB9,AA8,AB6,AB7"

#Exemple
#set_property LOC D19  [get_ports DAC_Q<0>]  # ecrire comme ca n'a pas fontionné
#set_property IOSTANDARD LVCMOS33 [get_ports DAC_Q<0>]

#set_property IOSTANDARD LVCMOS25 [get_ports {LED_port[5]}]  # ecrire comme ca n'a pas fontionné
#set_property PACKAGE_PIN W22 [get_ports {LED_port[5]}]


#set_property LOC Y11 [get_ports noeud_out_1<0>] #noeud_out_1 n'est pa reconnue
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<0>]

#set_property LOC AA11 [get_ports noeud_out_1<1>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<1>]

#set_property LOC Y19 [get_ports noeud_out_1<2>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<2>]

#set_property LOC AA9 [get_ports noeud_out_1<3>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<3>]

#set_property LOC AB11 [get_ports noeud_out_1<4>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<4>]

#set_property LOC AB10 [get_ports noeud_out_1<5>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<5>]

#set_property LOC AB9 [get_ports noeud_out_1<6>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<6>]

#set_property LOC AA8 [get_ports noeud_out_1<7>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<7>]

#set_property LOC AB6 [get_ports noeud_out_1<8>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<8>]

#set_property LOC AB7 [get_ports noeud_out_1<9>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_1<9>]


###"W12,W11,V10,W8,V12,W10,V9,V8,W7,V7"

#set_property LOC W12 [get_ports noeud_out_2<0>]
#set_property IOSTANDART LVCMOS33 [get_ports  noeud_out_2<0>]

#set_property LOC W11 [get_ports noeud_out_2<1>]
#set_property IOSTANDART LVCMOS33 [get_ports  noeud_out_2<1>]

#set_property LOC V10 [get_ports noeud_out_2<2>]
#set_property IOSTANDART LVCMOS33 [get_ports  noeud_out_2<2>]

#set_property LOC W8 [get_ports noeud_out_2<3>]
#set_property IOSTANDART LVCMOS33 [get_ports  noeud_out_2<3>]

#set_property LOC V12 [get_ports noeud_out_2<4>]
#set_property IOSTANDART LVCMOS33 [get_ports  noeud_out_2<4>]

#set_property LOC W10 [get_ports noeud_out_2<5>]
#set_property IOSTANDART LVCMOS33 [get_ports  noeud_out_2<5>]

#set_property LOC V9 [get_ports noeud_out_2<6>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_2<6>]

#set_property LOC V8 [get_ports noeud_out_2<7>]
#set_property IOSTANDART LVCMOS33 [get_ports  noeud_out_2<7>]

#set_property LOC W7 [get_ports noeud_out_2<8>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_2<8>]

#set_property LOC V7 [get_ports noeud_out_2<9>]
#set_property IOSTANDART LVCMOS33 [get_ports noeud_out_2<9>]




set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/inv1_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/inv2_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/inv3_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/inv4_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r0/g1/inv5_inferred_i_1]]


set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/inv1_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/inv2_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/inv3_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/inv4_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r1/g1/inv5_inferred_i_1__0]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/inv1_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/inv2_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/inv3_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/inv4_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r2/g1/inv5_inferred_i_1__1]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/inv1_inferred_i_1__2]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/inv2_inferred_i_1__2]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/inv3_inferred_i_1__2]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/inv4_inferred_i_1__2]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r3/g1/inv5_inferred_i_1__2]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/inv1_inferred_i_1__3]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/inv2_inferred_i_1__3]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/inv3_inferred_i_1__3]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/inv4_inferred_i_1__3]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r4/g1/inv5_inferred_i_1__3]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/inv1_inferred_i_1__4]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/inv2_inferred_i_1__4]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/inv3_inferred_i_1__4]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/inv4_inferred_i_1__4]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r5/g1/inv5_inferred_i_1__4]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/inv1_inferred_i_1__5]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/inv2_inferred_i_1__5]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/inv3_inferred_i_1__5]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/inv4_inferred_i_1__5]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r6/g1/inv5_inferred_i_1__5]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/inv1_inferred_i_1__6]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/inv2_inferred_i_1__6]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/inv3_inferred_i_1__6]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/inv4_inferred_i_1__6]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r7/g1/inv5_inferred_i_1__6]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/inv1_inferred_i_1__7]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/inv2_inferred_i_1__7]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/inv3_inferred_i_1__7]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/inv4_inferred_i_1__7]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r8/g1/inv5_inferred_i_1__7]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/inv1_inferred_i_1__8]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/inv2_inferred_i_1__8]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/inv3_inferred_i_1__8]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/inv4_inferred_i_1__8]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N1/R1/r9/g1/inv5_inferred_i_1__8]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/inv1_inferred_i_1__9]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/inv2_inferred_i_1__9]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/inv3_inferred_i_1__9]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/inv4_inferred_i_1__9]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r0/g1/inv5_inferred_i_1__9]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/inv1_inferred_i_1__10]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/inv2_inferred_i_1__10]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/inv3_inferred_i_1__10]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/inv4_inferred_i_1__10]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r1/g1/inv5_inferred_i_1__10]]


set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/inv1_inferred_i_1__11]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/inv2_inferred_i_1__11]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/inv3_inferred_i_1__11]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/inv4_inferred_i_1__11]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r2/g1/inv5_inferred_i_1__11]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/inv1_inferred_i_1__12]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/inv2_inferred_i_1__12]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/inv3_inferred_i_1__12]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/inv4_inferred_i_1__12]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r3/g1/inv5_inferred_i_1__12]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/inv1_inferred_i_1__13]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/inv2_inferred_i_1__13]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/inv3_inferred_i_1__13]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/inv4_inferred_i_1__13]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r4/g1/inv5_inferred_i_1__13]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/inv1_inferred_i_1__14]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/inv2_inferred_i_1__14]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/inv3_inferred_i_1__14]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/inv4_inferred_i_1__14]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r5/g1/inv5_inferred_i_1__14]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/inv1_inferred_i_1__15]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/inv2_inferred_i_1__15]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/inv3_inferred_i_1__15]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/inv4_inferred_i_1__15]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r6/g1/inv5_inferred_i_1__15]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/inv1_inferred_i_1__16]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/inv2_inferred_i_1__16]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/inv3_inferred_i_1__16]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/inv4_inferred_i_1__16]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r7/g1/inv5_inferred_i_1__16]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/inv1_inferred_i_1__17]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/inv2_inferred_i_1__17]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/inv3_inferred_i_1__17]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/inv4_inferred_i_1__17]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r8/g1/inv5_inferred_i_1__17]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/inv1_inferred_i_1__18]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/inv2_inferred_i_1__18]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/inv3_inferred_i_1__18]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/inv4_inferred_i_1__18]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N2/R1/r9/g1/inv5_inferred_i_1__18]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/inv1_inferred_i_1__19]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/inv2_inferred_i_1__19]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/inv3_inferred_i_1__19]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/inv4_inferred_i_1__19]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r0/g1/inv5_inferred_i_1__19]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/inv1_inferred_i_1__20]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/inv2_inferred_i_1__20]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/inv3_inferred_i_1__20]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/inv4_inferred_i_1__20]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r1/g1/inv5_inferred_i_1__20]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/inv1_inferred_i_1__21]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/inv2_inferred_i_1__21]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/inv3_inferred_i_1__21]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/inv4_inferred_i_1__21]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r2/g1/inv5_inferred_i_1__21]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/inv1_inferred_i_1__22]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/inv2_inferred_i_1__22]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/inv3_inferred_i_1__22]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/inv4_inferred_i_1__22]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r3/g1/inv5_inferred_i_1__22]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/inv1_inferred_i_1__23]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/inv2_inferred_i_1__23]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/inv3_inferred_i_1__23]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/inv4_inferred_i_1__23]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r4/g1/inv5_inferred_i_1__23]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/inv1_inferred_i_1__24]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/inv2_inferred_i_1__24]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/inv3_inferred_i_1__24]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/inv4_inferred_i_1__24]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r5/g1/inv5_inferred_i_1__24]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/inv1_inferred_i_1__25]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/inv2_inferred_i_1__25]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/inv3_inferred_i_1__25]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/inv4_inferred_i_1__25]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r6/g1/inv5_inferred_i_1__25]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/inv1_inferred_i_1__26]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/inv2_inferred_i_1__26]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/inv3_inferred_i_1__26]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/inv4_inferred_i_1__26]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r7/g1/inv5_inferred_i_1__26]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/inv1_inferred_i_1__27]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/inv2_inferred_i_1__27]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/inv3_inferred_i_1__27]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/inv4_inferred_i_1__27]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r8/g1/inv5_inferred_i_1__27]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/inv1_inferred_i_1__28]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/inv2_inferred_i_1__28]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/inv3_inferred_i_1__28]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/inv4_inferred_i_1__28]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N3/R1/r9/g1/inv5_inferred_i_1__28]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/inv1_inferred_i_1__29]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/inv2_inferred_i_1__29]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/inv3_inferred_i_1__29]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/inv4_inferred_i_1__29]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r0/g1/inv5_inferred_i_1__29]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/inv1_inferred_i_1__30]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/inv2_inferred_i_1__30]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/inv3_inferred_i_1__30]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/inv4_inferred_i_1__30]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r1/g1/inv5_inferred_i_1__30]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/inv1_inferred_i_1__31]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/inv2_inferred_i_1__31]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/inv3_inferred_i_1__31]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/inv4_inferred_i_1__31]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r2/g1/inv5_inferred_i_1__31]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/inv1_inferred_i_1__32]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/inv2_inferred_i_1__32]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/inv3_inferred_i_1__32]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/inv4_inferred_i_1__32]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r3/g1/inv5_inferred_i_1__32]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/inv1_inferred_i_1__33]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/inv2_inferred_i_1__33]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/inv3_inferred_i_1__33]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/inv4_inferred_i_1__33]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r4/g1/inv5_inferred_i_1__33]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/inv1_inferred_i_1__34]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/inv2_inferred_i_1__34]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/inv3_inferred_i_1__34]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/inv4_inferred_i_1__34]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r5/g1/inv5_inferred_i_1__34]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/inv1_inferred_i_1__35]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/inv2_inferred_i_1__35]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/inv3_inferred_i_1__35]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/inv4_inferred_i_1__35]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r6/g1/inv5_inferred_i_1__35]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/inv1_inferred_i_1__36]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/inv2_inferred_i_1__36]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/inv3_inferred_i_1__36]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/inv4_inferred_i_1__36]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r7/g1/inv5_inferred_i_1__36]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/inv1_inferred_i_1__37]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/inv2_inferred_i_1__37]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/inv3_inferred_i_1__37]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/inv4_inferred_i_1__37]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r8/g1/inv5_inferred_i_1__37]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/inv1_inferred_i_1__38]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/inv2_inferred_i_1__38]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/inv3_inferred_i_1__38]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/inv4_inferred_i_1__38]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N4/R1/r9/g1/inv5_inferred_i_1__38]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/inv1_inferred_i_1__39]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/inv2_inferred_i_1__39]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/inv3_inferred_i_1__39]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/inv4_inferred_i_1__39]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r0/g1/inv5_inferred_i_1__39]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/inv1_inferred_i_1__40]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/inv2_inferred_i_1__40]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/inv3_inferred_i_1__40]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/inv4_inferred_i_1__40]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r1/g1/inv5_inferred_i_1__40]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/inv1_inferred_i_1__41]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/inv2_inferred_i_1__41]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/inv3_inferred_i_1__41]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/inv4_inferred_i_1__41]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r2/g1/inv5_inferred_i_1__41]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/inv1_inferred_i_1__42]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/inv2_inferred_i_1__42]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/inv3_inferred_i_1__42]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/inv4_inferred_i_1__42]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r3/g1/inv5_inferred_i_1__42]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/inv1_inferred_i_1__43]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/inv2_inferred_i_1__43]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/inv3_inferred_i_1__43]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/inv4_inferred_i_1__43]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r4/g1/inv5_inferred_i_1__43]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/inv1_inferred_i_1__44]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/inv2_inferred_i_1__44]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/inv3_inferred_i_1__44]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/inv4_inferred_i_1__44]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r5/g1/inv5_inferred_i_1__44]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/inv1_inferred_i_1__45]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/inv2_inferred_i_1__45]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/inv3_inferred_i_1__45]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/inv4_inferred_i_1__45]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r6/g1/inv5_inferred_i_1__45]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/inv1_inferred_i_1__46]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/inv2_inferred_i_1__46]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/inv3_inferred_i_1__46]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/inv4_inferred_i_1__46]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r7/g1/inv5_inferred_i_1__46]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/inv1_inferred_i_1__47]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/inv2_inferred_i_1__47]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/inv3_inferred_i_1__47]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/inv4_inferred_i_1__47]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r8/g1/inv5_inferred_i_1__47]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/inv1_inferred_i_1__48]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/inv2_inferred_i_1__48]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/inv3_inferred_i_1__48]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/inv4_inferred_i_1__48]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N5/R1/r9/g1/inv5_inferred_i_1__48]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/inv1_inferred_i_1__49]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/inv2_inferred_i_1__49]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/inv3_inferred_i_1__49]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/inv4_inferred_i_1__49]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r0/g1/inv5_inferred_i_1__49]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/inv1_inferred_i_1__50]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/inv2_inferred_i_1__50]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/inv3_inferred_i_1__50]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/inv4_inferred_i_1__50]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r1/g1/inv5_inferred_i_1__50]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/inv1_inferred_i_1__51]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/inv2_inferred_i_1__51]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/inv3_inferred_i_1__51]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/inv4_inferred_i_1__51]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r2/g1/inv5_inferred_i_1__51]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/inv1_inferred_i_1__52]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/inv2_inferred_i_1__52]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/inv3_inferred_i_1__52]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/inv4_inferred_i_1__52]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r3/g1/inv5_inferred_i_1__52]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/inv1_inferred_i_1__53]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/inv2_inferred_i_1__53]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/inv3_inferred_i_1__53]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/inv4_inferred_i_1__53]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r4/g1/inv5_inferred_i_1__53]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/inv1_inferred_i_1__54]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/inv2_inferred_i_1__54]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/inv3_inferred_i_1__54]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/inv4_inferred_i_1__54]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r5/g1/inv5_inferred_i_1__54]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/inv1_inferred_i_1__55]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/inv2_inferred_i_1__55]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/inv3_inferred_i_1__55]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/inv4_inferred_i_1__55]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r6/g1/inv5_inferred_i_1__55]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/inv1_inferred_i_1__56]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/inv2_inferred_i_1__56]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/inv3_inferred_i_1__56]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/inv4_inferred_i_1__56]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r7/g1/inv5_inferred_i_1__56]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/inv1_inferred_i_1__57]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/inv2_inferred_i_1__57]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/inv3_inferred_i_1__57]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/inv4_inferred_i_1__57]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r8/g1/inv5_inferred_i_1__57]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/inv1_inferred_i_1__58]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/inv2_inferred_i_1__58]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/inv3_inferred_i_1__58]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/inv4_inferred_i_1__58]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells netW/N6/R1/r9/g1/inv5_inferred_i_1__58]]

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

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/inv1_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/inv2_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/inv3_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/inv4_inferred_i_1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/g1/inv5_inferred_i_1]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/inv1_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/inv2_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/inv3_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/inv4_inferred_i_1__0]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/g1/inv5_inferred_i_1__0]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/inv1_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/inv2_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/inv3_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/inv4_inferred_i_1__1]]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/g1/inv5_inferred_i_1__1]]





set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]