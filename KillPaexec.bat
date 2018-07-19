@setlocal enableextensions enabledelayedexpansion
@echo off
FOR /f "tokens=*" %%G IN ('wmic service get name') DO (
set str1=%%G
IF "!str1:~0,6!"=="PAExec" (echo %%G && sc delete %%G)
)
endlocal
pause