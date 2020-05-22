@echo off
:loop
timeout /T 1 /NOBRAEK
    for /f "tokens=1" %%a in (maquinas.txt) do (
        echo ===================================================== & net time & echo %%a & ping %%a |find "Esgotado") >> ping-log.txt | (ping -s 2 %%a) & (net time)

if not ErrorLevel 1 goto :loop
pause