REM build imageformats

REM Be sure to run this in a VS Native Tools environment
REM "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvars64.bat"

SET MYPATH=%~dp0
REM fix windows backslashed paths : /
SET MYPATH=%MYPATH:\=/%

REM compile dependencies first
call make-libde265.bat
call make-libheif.bat

REM SET QT5="C:/Qt/Qt-5.14.1-installer/5.14.2/msvc2017_64/bin"
SET QT5=%1
SET NAME=imageformats
SET BUILD_DIR=%mypath%build

REM if exist %build_dir%Release ( 
REM     echo %name% exists, skipping
REM     goto :eof
REM )

cmake -DCMAKE_PREFIX_PATH="%qt5%;%mypath%build/libheif" --clean-first^
 -B%build_dir% %mypath%

cmake --build %build_dir% --config Release -- -m
cmake --build %build_dir% --config Release --target INSTALL -- -m
