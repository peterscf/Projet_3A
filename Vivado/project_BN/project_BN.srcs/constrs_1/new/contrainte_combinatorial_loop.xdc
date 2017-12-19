set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l1/r1/Q_i_1]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l2/r1/Q_i_1]]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells l3/r1/Q_i_1]]

set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]