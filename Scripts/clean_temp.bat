@echo off

:: Delete files on %USERPROFILE%\AppData\Local\Temp
del /f /s /q "%USERPROFILE%\AppData\Local\Temp\*.*"
for /d %%p in ("%USERPROFILE%\AppData\Local\Temp\*") do rd /s /q "%%p"

:: Delete files on C:\Windows\Temp
del /f /s /q "C:\Windows\Temp\*.*"
for /d %%p in ("C:\Windows\Temp\*") do rd /s /q "%%p"

