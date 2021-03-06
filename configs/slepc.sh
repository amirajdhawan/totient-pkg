#!/bin/sh
#
# SLEPc

module load openblas
module load lapack
module load openmpi-1.8.6
module load petsc

source ./helper.sh
set_stage_dl http://slepc.upv.es/download/download.php?filename=slepc-3.6.0.tar.gz

export SLEPC_DIR=$PWD
./configure --prefix=$PREFIX/$DIRNAME
make SLEPC_DIR=$PWD PETSC_DIR=$PETSC_DIR 
make SLEPC_DIR=$PWD PETSC_DIR=$PETSC_DIR install

leave_stage
