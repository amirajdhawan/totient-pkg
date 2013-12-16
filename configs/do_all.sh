#!/bin/sh

# -- tmux lets us finish rebuilding without a window
./libevent.sh
./tmux.sh

# -- GraphViz and Doxygen required for other things
./graphviz.sh
./doxygen.sh

# -- We want curl with SSL support for CMake
./curl.sh
./cmake.sh

# -- Build valgrind
./valgrind.sh

# -- For building a current version of GCC
./gmp.sh
./mpfr.sh
./mpc.sh
./gcc.sh

# -- Set up some numerical libraries
./openblas.sh
./lapack.sh
./arpack-ng.sh
./fftw.sh
./metis.sh
./suitesparse.sh
./eigen.sh
./armadillo.sh

# -- Build profilers and the like
./papi.sh
./pdt.sh
./tau.sh

# -- Build Boost
./boost.sh

# -- Build Trilinos, PETSc, and deal.II
./trilinos.sh
./petsc.sh
./dealii.sh

# -- Build Julia
./julia.sh
