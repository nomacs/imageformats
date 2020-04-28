# nomacs imageformats
This repository contains all image plugins for nomacs that are officially supported.
Compiling these plugins is most commonly needed to deploy on Windows.

# Before you start
Be sure that these dependencies are installed on your computer:

- Qt (version >= 5.14)
- CMake (version >= 3.14)

# Build imageformats on Windows
- Open a x64 Native Tools Command
- cd to this directory, then type:
```cmd
REM make "C:/Qt/Qt-5.14.1-installer/5.14.2/msvc2017_64/"
make QT_PATH
```
where `QT_PATH` points to your Qt directory.



