@echo off
set "downloads=%USERPROFILE%\Downloads"

:: Change to the Downloads directory (needed for folders elimination with the last command)
cd /d "%downloads%"

:: Delete all files in the Downloads folder (including .zip)
del /q /s "%downloads%\*.*" 2>nul

:: Delete all subdirectories in the Downloads folder 
for /d %%i in (*) do rd /s /q "%%i" 2>nul


