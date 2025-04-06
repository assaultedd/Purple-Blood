@echo off
title IP Tool Kit - By Frnaxx
chcp 65001 >nul
color 0a

:menu
set ip=""
cls
echo.
type "banner - IP.txt"
echo.
echo Choice :
echo.
echo            PUBLIC IP OPTIONS
echo.
echo      ----------------------------
echo.
echo            1) Geolocate
echo            2) Trace DNS
echo            3) Port scan
echo.
echo      ----------------------------
echo.
echo            LOCAL IP OPTIONS
echo            4) Trace Mac Address
echo            5) ARP Spoof (DOS)
echo            6) RPC Dump
echo.
echo      ----------------------------
echo.
echo            0) back to menu 
echo.
set /p input=Input Option:
if /I "%input%" EQU "0" goto out
if /I "%input%" EQU "1" goto geolocate
if /I "%input%" EQU "2" goto tracedns
if /I "%input%" EQU "3" goto portscan
if /I "%input%" EQU "4" goto Macaddr
if /I "%input%" EQU "5" goto arpspoof
if /I "%input%" EQU "6" goto rpcdump

:out
set /p confirmation1=Are you sure you want to exit this program? (y/n) :
if %confirmation1%==y goto start
if %confirmation1%==n goto :menu

:rpcdump
cls
set /p ip=Enter IP Address: 
rpcdump %ip%
pause
goto menu

:Macaddr
cls
set /p ip=Enter IP Address: 
for /f "tokens=2 delims= " %%a in ('arp -a ^| find "%ip%"') do set macaddr=%%a
set macaddr=%macaddr: =-%
echo.
echo Mac Address: %macaddr%
pause
goto menu

:arpspoof
cls
set /p ip=Enter IP Address: 
start cmd /c "mode 87, 10 && title Spoofing %ip%... && arpspoof.exe %ip%"
goto menu

:portscan
cls
set /p ip=IP Address: 
set /p ports=Ports (e.g. 21,22,23): 
start PortScanner.exe hosts=%ip% ports=%ports%>>portscan.txt
timeout /t 5 /nobreak >nul
taskkill /im PortScanner.exe /f >nul 2>&1
type portscan.txt
del portscan.txt
pause
goto menu

:tracedns
cls
set /p ip=IP Address: 
for /f "tokens=2 delims= " %%a in ('nslookup %ip% ^| find "Name"') do set dns=%%a
echo.
echo Domain Name: %dns%
pause
goto menu

:geolocate
cls
set /p ip=IP Address: 
powershell -Command "(Invoke-WebRequest -Uri 'http://ipinfo.io/%ip%/json').Content"
pause
goto menu