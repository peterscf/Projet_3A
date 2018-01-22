proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /tp/xph3app/xph3app604/Projet_3A/Vivado/project_TRNG_3bit/project_TRNG_3bit.cache/wt [current_project]
  set_property parent.project_path /tp/xph3app/xph3app604/Projet_3A/Vivado/project_TRNG_3bit/project_TRNG_3bit.xpr [current_project]
  set_property ip_repo_paths /tp/xph3app/xph3app604/Projet_3A/ip_repo [current_project]
  set_property ip_output_repo /tp/xph3app/xph3app604/Projet_3A/Vivado/project_TRNG_3bit/project_TRNG_3bit.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet /tp/xph3app/xph3app604/Projet_3A/Vivado/project_TRNG_3bit/project_TRNG_3bit.runs/synth_1/ring_top.dcp
  read_xdc /tp/xph3app/xph3app604/Projet_3A/Vivado/project_TRNG_3bit/project_TRNG_3bit.srcs/constrs_1/new/contrainte_combinatorial_loop.xdc
  link_design -top ring_top -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force ring_top_opt.dcp
  catch { report_drc -file ring_top_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force ring_top_placed.dcp
  catch { report_io -file ring_top_io_placed.rpt }
  catch { report_utilization -file ring_top_utilization_placed.rpt -pb ring_top_utilization_placed.pb }
  catch { report_control_sets -verbose -file ring_top_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force ring_top_routed.dcp
  catch { report_drc -file ring_top_drc_routed.rpt -pb ring_top_drc_routed.pb -rpx ring_top_drc_routed.rpx }
  catch { report_methodology -file ring_top_methodology_drc_routed.rpt -rpx ring_top_methodology_drc_routed.rpx }
  catch { report_power -file ring_top_power_routed.rpt -pb ring_top_power_summary_routed.pb -rpx ring_top_power_routed.rpx }
  catch { report_route_status -file ring_top_route_status.rpt -pb ring_top_route_status.pb }
  catch { report_clock_utilization -file ring_top_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file ring_top_timing_summary_routed.rpt -rpx ring_top_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force ring_top_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force ring_top.mmi }
  write_bitstream -force ring_top.bit 
  catch {write_debug_probes -no_partial_ltxfile -quiet -force debug_nets}
  catch {file copy -force debug_nets.ltx ring_top.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

