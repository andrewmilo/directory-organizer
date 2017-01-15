@echo off

echo Specify the folder to be extrapolated...
set /p choice=:

echo 1) Move
echo 2) Copy

set /p option=Choose an option:

for %%f in ("%choice%/*") do (

    if "%option%"=="1" ( move "%cd%\%choice%\%%~nxf" %cd% )
    if "%option%"=="2" ( copy "%cd%\%choice%\%%~nxf" %cd% )
)

for /d %%f in ("%choice%/*") do (

    if "%option%"=="1" ( move "%cd%\%choice%\%%f" %cd% )
    if "%option%"=="2" ( robocopy "%choice%\%%f" %cd% /e )
)

pause