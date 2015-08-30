#!/bin/sh
#
# Boost C++ libraries
# http://www.boost.org/

source ./helper.sh
set_stage_dl http://downloads.sourceforge.net/project/boost/boost/1.59.0/boost_1_59_0.tar.bz2

./bootstrap.sh --prefix=$PREFIX/boost-1.59.0-gcc-5.2.0
./b2 install

leave_stage
