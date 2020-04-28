REM build libheif
@echo off

SET MYPATH=%~dp0
REM fix windows backslashed paths : /
SET MYPATH=%MYPATH:\=/%

SET NAME=libheif
SET BUILD_DIR=%mypath%build/%name%

if exist %build_dir%/%name%/Release ( 
    echo %name% exists, skipping
    goto :eof
)

cmake -DCMAKE_PREFIX_PATH="%mypath%build/libde265" --clean-first^
 -B%build_dir% %mypath%/%name%

cmake --build %build_dir% --config Release -- -m
