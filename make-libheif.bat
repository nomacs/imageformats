REM build libheif
@echo off

SET MYPATH=%~dp0
REM fix windows backslashed paths : /
SET MYPATH=%MYPATH:\=/%

SET NAME=libheif

IF [%1]==[] (
    SET BUILD_DIR=%mypath%build
) ELSE (
    SET BUILD_DIR=%1
)

if exist %build_dir%/%name%/%name%/Release/%name%.dll ( 
    echo %name% exists, skipping
    goto :eof
)

echo building %name%
cmake -DCMAKE_PREFIX_PATH="%build_dir%/libde265" --clean-first^
 -B%build_dir%/%name% %mypath%/%name%

cmake --build %build_dir%/%name% --config Release -- -m
