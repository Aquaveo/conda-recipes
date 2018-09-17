#!/bin/bash

mkdir -p build
cd build
${BUILD_PREFIX}/bin/cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_BUILD_TYPE=Release -DIS_CONDA_BUILD=True -DIS_PYTHON_BUILD=True -DCONDA_PREFIX=${CONDA_PREFIX} -DBoost_NO_SYSTEM_PATHS=True -DPYTHON_SITE_PACKAGES=${SP_DIR} -DBOOST_ROOT=${BUILD_PREFIX} ..

make -j${CPU_COUNT}

make install

mkdir -p "${SP_DIR}"
cp *.so ${SP_DIR}
