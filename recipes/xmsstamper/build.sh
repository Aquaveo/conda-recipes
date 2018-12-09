#!/bin/bash
cp ${RECIPE_DIR}/condabuildinfo.cmake .

mkdir -p build
cd build

${BUILD_PREFIX}/bin/cmake -DXMS_VERSION=${PKG_VERSION} -DPYTHON_TARGET_VERSION=${PY_VERSION} -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_BUILD_TYPE=Release -DIS_CONDA_BUILD=True -DIS_PYTHON_BUILD=True -DCONDA_PREFIX=${BUILD_PREFIX} -DPYTHON_SITE_PACKAGES=${SP_DIR} -DBoost_NO_SYSTEM_PATHS=True -DBOOST_ROOT=${BUILD_PREFIX} ..

make -j${CPU_COUNT}
make install

mkdir -p "${SP_DIR}"
echo "--------------------------------------"
ls -lah ${SP_DIR}
echo "--------------------------------------"
ls -lah
echo "--------------------------------------"
cp *.so ${SP_DIR}
