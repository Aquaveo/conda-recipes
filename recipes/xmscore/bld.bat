if not exist "build\" mkdir build
cd build
%BUILD_PREFIX%\Library\bin\cmake.exe -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DCMAKE_BUILD_TYPE=Release -DIS_PYTHON_BUILD=True -DBUILD_TESTING=True -DIS_CONDA_BUILD=True -DCONDA_PREFIX=%CONDA_PREFIX% -DBoost_NO_SYSTEM_PATHS=True -DBOOST_ROOT=%BUILD_PREFIX%\Library ..
nmake -f Makefile
nmake install -f Makefile
