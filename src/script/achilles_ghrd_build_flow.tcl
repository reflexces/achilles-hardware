# MIT License
# Copyright (c) 2022 REFLEX CES
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# Author: Dan Negvesky <dnegvesky@reflexces.com>
# Contributors:
#
# Description:
# TCL script to generate the GHRD project for the REFLEX CES Achilles SOMs
#
# This is intended to be sourced from the script achilles_ghrd_build.sh.
# To run this script at the command prompt, use:
# quartus_sh -t src/script/achilles_ghrd_build_flow.tcl som_ver ghrd_type
# where valid som_ver = lite, indus, turbo
# and valid ghrd_type = standard, pr
# Release info:
#
# 2022.06
#   - initial release for GSRD 2022.06 supporting Achilles SOMs

set som_ver [lindex $argv 0]
set ghrd_type [lindex $argv 1]
set quartus_project_name achilles_${som_ver}_ghrd
set revision_name "none"

post_message "--------------------------------------------------------------------------------"
post_message "Creating Quartus project $quartus_project_name ..."
post_message "--------------------------------------------------------------------------------"

source src/script/create_achilles_ghrd_project.tcl

create_quartus_project $quartus_project_name achilles_ghrd

post_message "--------------------------------------------------------------------------------"
post_message "Generating Qsys project script ..."
post_message "--------------------------------------------------------------------------------"

create_qsys_project_script

post_message "--------------------------------------------------------------------------------"
post_message "Creating Qsys system ..."
post_message "--------------------------------------------------------------------------------"

exec -ignorestderr $quartus(quartus_rootpath)/../qsys/bin/qsys-script \
   --quartus_project=$quartus_project_name --script=achilles_qsys_script_GENERATED.tcl

post_message "--------------------------------------------------------------------------------"
post_message "Generating Qsys system IP ..."
post_message "--------------------------------------------------------------------------------"

exec -ignorestderr $quartus(quartus_rootpath)/../qsys/bin/qsys-generate \
   achilles_hps.qsys --synthesis=VHDL --family=$family --part=$device \
   --quartus-project=$quartus_project_name

post_message "--------------------------------------------------------------------------------"
post_message "Starting Quartus compilation of revision achilles_ghrd ..."
post_message "--------------------------------------------------------------------------------"

exec -ignorestderr $quartus(binpath)/quartus_sh --flow compile achilles_ghrd -c achilles_ghrd

if {$ghrd_type == "pr"} {
   post_message "--------------------------------------------------------------------------------"
   post_message "Creating Partial Reconfiguration revisions ..."
   post_message "--------------------------------------------------------------------------------"

#  create_pr_revision <revision_name> <base_revision>
   create_pr_revision blink_led_default achilles_ghrd
   create_pr_revision blink_led_fast achilles_ghrd
   create_pr_revision blink_led_slow achilles_ghrd

   post_message "--------------------------------------------------------------------------------"
   post_message "Starting Quartus compilation of Partial Reconfiguration revisions ..."
   post_message "--------------------------------------------------------------------------------"

   exec -ignorestderr $quartus(binpath)/quartus_sh --flow compile achilles_ghrd -c blink_led_default
   exec -ignorestderr $quartus(binpath)/quartus_sh --flow compile achilles_ghrd -c blink_led_fast
   exec -ignorestderr $quartus(binpath)/quartus_sh --flow compile achilles_ghrd -c blink_led_slow
}

post_message "--------------------------------------------------------------------------------"
post_message "Generating periphery and core RBF programming files ..."
post_message "--------------------------------------------------------------------------------"

exec -ignorestderr $quartus(binpath)/quartus_cpf --convert --hps -o \
   bitstream_compression=on output_files/achilles_ghrd.sof output_files/achilles_${som_ver}_ghrd.rbf
