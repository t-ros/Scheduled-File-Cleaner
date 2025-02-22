@echo off
set "screenshots=%USERPROFILE%\Pictures\Screenshots"

:: Delete all screenshots
del /q "%screenshots%\*.*"

:: This command doesn't delete folders
