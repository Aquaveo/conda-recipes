if not exist "build\" mkdir build
cd build
%BUILD_PREFIX%\Library\bin\cmake.exe -DCMAKE_INSTALL_PREFIX=%PREFIX% -DCMAKE_BUILD_TYPE=Release -DIS_CONDA_BUILD=True -DIS_PYTHON_BUILD=True -DCONDA_PREFIX=%BUILD_PREFIX% -DBoost_NO_SYSTEM_PATHS=True -DPYTHON_SITE_PACKAGES=%SP_DIR% -DBOOST_ROOT=%BUILD_PREFIX% ..
nmake -f Makefile
nmake install -f Makefile
