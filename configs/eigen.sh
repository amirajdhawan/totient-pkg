#!/bin/sh
#
# Eigen -- C++ template library for linear algebra
# http://eigen.tuxfamily.org/

module load openblas
module load lapack
module load suitesparse

source ./helper.sh
set_stage_dl http://bitbucket.org/eigen/eigen/get/3.2.5.tar.bz2

# Build shared libraries
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
  -D FFTW_LIBRARIES="-lfftw3" ..
make
make install

leave_stage
