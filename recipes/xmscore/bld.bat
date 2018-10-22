if not exist "build\" mkdir build
cd build

%BUILD_PREFIX%\Library\bin\cmake.exe -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DCMAKE_BUILD_TYPE=Release -DIS_CONDA_BUILD=True -DIS_PYTHON_BUILD=True -DCONDA_PREFIX=%CONDA_PREFIX% -DPYTHON_SITE_PACKAGES=%SP_DIR% -DBoost_NO_SYSTEM_PATHS=True -DBOOST_ROOT=%BUILD_PREFIX%\Library -DXMS_VERSION="%XMS_VERSION%" ..
nmake -f Makefile

nmake install -f Makefile

if not exist "%SP_DIR%" mkdir "%SP_DIR%"
COPY *.pyd %SP_DIR%
