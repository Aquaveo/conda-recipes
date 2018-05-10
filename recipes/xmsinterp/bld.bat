if not exist "build\" mkdir build
cd build
%LIBRARY_PREFIX%\bin\cmake.exe -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DCMAKE_BUILD_TYPE=Release -DIS_PYTHON_BUILD=True -DBUILD_TESTING=True -DIS_CONDA_BUILD=True -DCONDA_PREFIX=%CONDA_PREFIX% ..
nmake -f Makefile
nmake install -f Makefile