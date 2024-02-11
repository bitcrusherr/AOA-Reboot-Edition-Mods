:: easy mod insall by bitcrusher!
@echo off
title Act Of Aggreesion Mod install by Bitcrusher
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo Make sure modded .dat file is in same location as the installer.bat
echo.
pause
if exist NDF_Win.dat goto modfound
if not exist NDF_Win.dat goto modnotfound
:modfound
if exist "C:\Program Files (x86)\Steam\steamapps\common\Act of Aggression\Data\ACTOFRUSE\PC\780095353\NDF_Win.dat" goto fileexist
if not exist "C:\Program Files (x86)\Steam\steamapps\common\Act of Aggression\Data\ACTOFRUSE\PC\780095353\NDF_Win.dat" goto filedoesnotexist
cls
echo error 1 cunts fucked
timeout 5
:fileexist
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo file found automaticly weooo
set location="C:\Program Files (x86)\Steam\steamapps\common\Act of Aggression\Data\ACTOFRUSE\PC\780095353\"
if exist %location%\NDF_Win.dat.old goto modinstalledalready
echo.
timeout 5
goto :install
:filefound
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo file found good work
set location="%input"
echo.
timeout 5
goto :install
:modnotfound
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo Couldnt locate modded "NDF_Win.dat"
echo make sure the modded file is located along side (in same folder) as this install.bat
echo.
timeout 5
goto exit
:filedoesnotexist
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo Cant find default game install. Please locate following folder and paste complete path below!
echo.
echo "Steam\steamapps\common\Act of Aggression\Data\ACTOFRUSE\PC\780095353"
echo.
set /p Input=Enter location:
myCommand "%Input%"
if exist "%Input%\NDF_Win.dat.old" goto modinstalledalready
if exist "%Input%\NDF_Win.dat" goto filefound
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo error 2 cunts fucked
echo.
pause
:install
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
set originaldir=%cd%
cd %location%
rename "NDF_Win.dat" "NDF_Win.dat.old"
cd %originaldir%
copy "NDF_Win.dat" %location%
echo.
echo done installing
timeout 5
goto exit
:modinstalledalready
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo old dat file found, a mod must already be installed ??????
echo.
echo Do you want to delete mod?
echo.
set /p Input=Yes (Y) or No (N):
if %input%==Y goto revert
if %input%==N goto exit
if %input%==y goto revert
if %input%==n goto exit
timeout 5
:revert
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo Removing mod
echo.
cd %location%
del NDF_Win.dat
rename "NDF_Win.dat.old" "NDF_Win.dat"
echo.
echo Do you want to install mod?
echo.
set /p Input=Yes (Y) or No (N):
if %input%==Y goto install
if %input%==N goto exit
if %input%==y goto install
if %input%==n goto exit
timeout 5
:exit
cls
echo.
echo Act Of Aggreesion Mod install by Bitcrusher
echo.
echo bye bye!
echo.
timeout 3
