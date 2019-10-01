#!/bin/bash
#
# Simple SLURM script for submitting multiple serial
# jobs (e.g. parametric studies) using a script wrapper
# to launch the jobs.
#
# To use, build the launcher executable and your
# serial application(s) and place them in your WORKDIR
# directory.  Then, edit the CONTROL_FILE to specify 
# each executable per process.
#-------------------------------------------------------
#-------------------------------------------------------
# 
#         <------ Setup Parameters ------>
#
#SBATCH -J trylaunch ## Job name
#SBATCH -N 5 ## Number of nodes
#SBATCH -p normal ## queue name
#SBATCH -n 30 ## Number of tasks
#SBATCH -o trylaunch.o%j ## output
#SBATCH -e trylaunch.e%j ## error
#SBATCH -t 00:05:00 # Time
#SBATCH --mail-user=spencer.woody@utexas.edu
#SBATCH --mail-type=all    # Send email at begin and end of job
##SBATCH -A selective_inference
#------------------------------------------------------

# Load modules
module load git
module load launcher
module load intel/17.0.4
module load impi/17.0.3
module load Rstats

# These don't change
export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
export LAUNCHER_RMI=SLURM

# 
export LAUNCHER_PPN=4

# Set job script
export LAUNCHER_JOB_FILE=./runjobs.sh
 
# Launch LAUNCHER
$LAUNCHER_DIR/paramrun

