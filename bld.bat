set ACTIVATE_DIR=%PREFIX%\etc\conda\activate.d
set DEACTIVATE_DIR=%PREFIX%\etc\conda\deactivate.d
set SHARE_DIR=%PREFIX%\share\cacurl
mkdir %ACTIVATE_DIR%
mkdir %DEACTIVATE_DIR%
mkdir %SHARE_DIR%

copy %RECIPE_DIR%\scripts\activate.bat %ACTIVATE_DIR%\cacurl-activate.bat
copy %RECIPE_DIR%\scripts\deactivate.bat %DEACTIVATE_DIR%\cacurl-deactivate.bat
copy %RECIPE_DIR%\conf\openssl.cnf %SHARE_DIR%\cacurl-openssl.cnf
