@echo off
title Discord Tool Kit - By Frnaxx
chcp 65001 >nul
color 0a

:menu
echo.
type "banner - discord.txt"
echo.
echo Choice :
echo.
echo        Discord Hacking
echo.
echo      ----------------------------
echo.
echo        1) Discord Hacking Tools
echo        2) Install the required files
echo        3) User ID decode base64
echo        4) Token HMAC Cracker
echo        5) Discord Token Info
echo.
echo      ----------------------------
echo.
echo        0) back to menu 
echo.
set /p input=Input Option:
if /I "%input%" EQU "0" goto out
if /I "%input%" EQU "1" start discord.py
if /I "%input%" EQU "2" start py_installer.bat
if /I "%input%" EQU "3" start token.bat
if /I "%input%" EQU "4" start token_cracker.bat
if /I "%input%" EQU "5" start Token.png
cls
exit

:out
set /p confirmation1=Are you sure you want to exit this program? (y/n) :
if %confirmation1%==y goto :exit
if %confirmation1%==n goto :rest

:exit
cls
exit

:rest
start discord_main.bat
cls
exit