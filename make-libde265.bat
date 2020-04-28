REM build libde256
@echo off

SET MYPATH=%~dp0
REM fix windows backslashed paths : /
SET MYPATH=%MYPATH:\=/%

SET NAME=libde265
SET BUILD_DIR=%mypath%build/%name%

if exist %build_dir%/%name%/Release ( 
    echo %name% exists, skipping
    goto :eof
)

cmake^
 -B%build_dir% %mypath%%name%

cmake --build %build_dir% --config Release -- -m