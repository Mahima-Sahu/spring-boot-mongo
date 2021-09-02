@echo off

REM set state = echo "C:\Users\mahim\file-state.txt"
set /p Build=<C:\file-state.txt

echo %Build%

if %Build%==stop (echo no process running) else (goto while)

:while
if %Build%==running (
   echo wait process is running
   timeout 60
   set /p Build=<C:\file-state.txt
   goto :while
)


pause
