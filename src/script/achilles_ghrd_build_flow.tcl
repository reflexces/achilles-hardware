# launch with quartus_sh -t src/script/achilles_ghrd_build_flow.tcl som_ver ghrd_type
# where valid som_ver = lite, indus, turbo
#       valid ghrd_type = standard, pr

set som_ver [lindex $argv 0]
set ghrd_type [lindex $argv 1]
set quartus_project_name achilles_${som_ver}_ghrd
set revision_name "none"

post_message "--------------------------------------------------------------------------------"
post_message "Creating Quartus project $quartus_project_name ..."
post_message "--------------------------------------------------------------------------------"

source src/script/create_achilles_ghrd_project.tcl

create_quartus_project $quartus_project_name achilles_ghrd
# add REFLEX header to these script files
# need to diff top leve .vhd for Turbo/Indus/lite full featured designs to find port map difference (address/bank grounp, etc)

#set QSF_FILE [open "achilles_ghrd.qsf" "w"]
#puts $QSF_FILE "source src/script/achilles_${som_ver}_io_pinout.tcl"
#close $QSF_FILE

post_message "--------------------------------------------------------------------------------"
post_message "Generating Qsys project script ..."
post_message "--------------------------------------------------------------------------------"

create_qsys_project_script

# moved this to create_achilles_ghrd_project.tcl
#source ./src/script/achilles_${som_ver}_io_pinout.tcl

#exec -ignorestderr $quartus(quartus_rootpath)/sopc_builder/bin/qsys-script \
#    --quartus_project=$project_name --script=./src/script/achilles_qsys_script.tcl

#exec -ignorestderr $quartus(quartus_rootpath)/sopc_builder/bin/qsys-generate \
#    achilles_${som_ver}_hps.qsys --synthesis=VHDL --family=$family --part=$device \
#    --quartus-project=$project_name

post_message "--------------------------------------------------------------------------------"
post_message "Creating Qsys system ..."
post_message "--------------------------------------------------------------------------------"

exec -ignorestderr $quartus(quartus_rootpath)/../qsys/bin/qsys-script \
   --quartus_project=$quartus_project_name --script=achilles_qsys_script_GENERATED.tcl

post_message "--------------------------------------------------------------------------------"
post_message "Generating Qsys system IP ..."
post_message "--------------------------------------------------------------------------------"

# remove som_ver from .qsys file name
#exec -ignorestderr $quartus(quartus_rootpath)/../qsys/bin/qsys-generate \
#    achilles_${som_ver}_hps.qsys --synthesis=VHDL --family=$family --part=$device \
#    --quartus-project=$project_name

exec -ignorestderr $quartus(quartus_rootpath)/../qsys/bin/qsys-generate \
   achilles_hps.qsys --synthesis=VHDL --family=$family --part=$device \
   --quartus-project=$quartus_project_name

post_message "--------------------------------------------------------------------------------"
post_message "Starting Quartus compilation of revision achilles_ghrd ..."
post_message "--------------------------------------------------------------------------------"

#exec -ignorestderr $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c achilles_ghrd
exec $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c achilles_ghrd

if {$ghrd_type == "pr"} {
   post_message "--------------------------------------------------------------------------------"
   post_message "Creating Partial Reconfiguration revisions ..."
   post_message "--------------------------------------------------------------------------------"

 # create_pr_revision <revision_name> <base_revision>
   create_pr_revision blink_led_default achilles_ghrd
   create_pr_revision blink_led_fast achilles_ghrd
   create_pr_revision blink_led_slow achilles_ghrd

   post_message "--------------------------------------------------------------------------------"
   post_message "Starting Quartus compilation of Partial Reconfiguration revisions ..."
   post_message "--------------------------------------------------------------------------------"

#   exec -ignorestderr $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c blink_led_default
#   exec -ignorestderr $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c blink_led_fast
#   exec -ignorestderr $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c blink_led_slow
   
   exec $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c blink_led_default
   exec $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c blink_led_fast
   exec $quartus(quartus_rootpath)/bin/quartus_sh --flow compile achilles_ghrd -c blink_led_slow
}

post_message "--------------------------------------------------------------------------------"
post_message "Generating periphery and core RBF programming files ..."
post_message "--------------------------------------------------------------------------------"

#exec -ignorestderr $quartus(quartus_rootpath)/bin/quartus_cpf --convert --hps -o bitstream_compression=on achilles_ghrd.sof achilles_${som_ver}_ghrd.rbf
exec -ignorestderr $quartus(quartus_rootpath)/bin/quartus_cpf --convert --hps -o \
   bitstream_compression=on output_files/achilles_ghrd.sof output_files/achilles_${som_ver}_ghrd.rbf

#puts  "Total GHRD generation time [format "%d:%02d" $hours $minutes] ($secs seconds)"
