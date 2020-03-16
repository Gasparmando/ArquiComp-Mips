
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name TP4 -dir "C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/planAhead_run_4" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/TP4.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "TP4.ucf" [current_fileset -constrset]
add_files [list {TP4.ucf}] -fileset [get_property constrset [current_run]]
link_design
