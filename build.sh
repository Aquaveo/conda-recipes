#!/bin/bash

./configure --prefix=${PREFIX} --disable-strict
make -j ${CPU_COUNT}
make install
