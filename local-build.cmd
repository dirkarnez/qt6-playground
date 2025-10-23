@echo off

@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

set PYTHON_DIR=%DOWNLOADS_DIR%\python-3.10.8-amd64-portable

set PATH=^
%PYTHON_DIR%;^
%PYTHON_DIR%\Scripts;^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\13.1.0-202407240918mingw1310\Tools\mingw1310_64;^
%DOWNLOADS_DIR%\13.1.0-202407240918mingw1310\Tools\mingw1310_64\bin;^
%DOWNLOADS_DIR%\ninja-win;^
%DOWNLOADS_DIR%\cmake-3.29.3-windows-x86_64\bin;

cmake.exe -G"Ninja" ^
-DCMAKE_BUILD_TYPE=Debug ^
-DQt6_DIR="%DOWNLOADS_DIR_LINUX%/qtbase-everywhere-src-6.10.0/cmake-build/installation/lib/cmake/Qt6" ^
-B./cmake-build &&^
cd cmake-build &&^
cmake --build . &&^
echo "Successful build"
pause
