@echo off
title Purple Blood v1.0
chcp 65001 >nul
cd files
:start
goto :banner
pause

:banner
echo.
echo.
echo             [95m██████[31m╗ [95m██[31m╗   [95m██[31m╗[95m██████[31m╗ [95m██████[31m╗ [95m██[31m╗     [95m███████[31m╗    [95m██████[31m╗ [95m██[31m╗      [95m██████[31m╗  [95m██████[31m╗ [95m██████[31m╗ [0m
echo             [95m██[31m╔══[95m██[31m╗[95m██[31m║   [95m██[31m║[95m██[31m╔══[95m[95m██[31m╗[95m██[31m╔══[95m██[31m╗[95m██[31m║     [95m██[31m╔════╝    [95m██[31m╔══[95m██[31m╗[95m██[31m║     [95m██[31m╔═══[95m██[31m╗[95m██[31m╔═══[95m██[31m╗[95m██[31m╔══[95m██[31m╗[0m
echo             [95m██████[31m╔╝[95m██[31m║   [95m██[31m║[95m██████[31m╔╝[95m██████[31m╔╝[95m██[31m║     [95m█████[31m╗      [95m██████[31m╔╝[95m██[31m║     [95m██[31m║   [95m██[31m║[95m██[31m║   [95m██[31m║[95m██[31m║  [95m██[31m║[0m
echo             [95m██[31m╔═══╝ [95m██[31m║   [95m██[31m║[95m██[31m╔══[95m██[31m╗[95m██[31m╔═══╝ [95m██[31m║     [95m██[31m╔══╝      [95m██[31m╔══[95m██[31m╗[95m██[31m║     [95m██[31m║   [95m██[31m║[95m██[31m║   [95m██[31m║[95m██[31m║  [95m██[31m║[0m
echo             [95m██[31m║     ╚[95m██████[31m╔╝[95m██[31m║  [95m██[31m║[95m██[31m║     [95m███████[31m╗[95m███████[31m╗    [95m██████[31m╔╝[95m███████[31m╗╚[95m██████[31m╔╝╚[95m██████[31m╔╝[95m██████[31m╔╝[0m
echo             [31m╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚══════╝╚══════╝    ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝ [0m
echo.
echo.

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo   [1m[35m  ╔════[0m[31m(01)[0m DDoS Tool
echo   [1m[35m  ╠══════[0m[31m(02)[0m IP Tool Kit
echo   [1m[35m  ╠════════[0m[31m(03)[0m Random IP Generator
echo   [1m[35m  ╠══════════[0m[31m(04)[0m IP Scanner
echo   [1m[35m  ╠════════════[0m[31m(05)[0m Google Hacking All sql Dorks
echo   [1m[35m  ╠══════════════[0m[31m(06)[0m Putty
echo   [1m[35m  ╠════════════════[0m[31m(07)[0m Windows Password Cracker
echo   [1m[35m  ╠══════════════════[0m[31m(08)[0m Discord Hacking All In ONE
echo   [1m[35m  ╚════╦═══════════════[0m[31m(09)[0m Install Hacking Tools 
echo       [1m[35m   ║ [0m
echo       [1m[35m   ║ [0m
echo       [1m[35m   ║ [0m
set /p input=.%BS%      [1m[35m   ╚════════^>[0m
if /I %input% EQU 01 start DDoS.bat
if /I %input% EQU 02 call IPTOOLKIT.bat
if /I %input% EQU 03 start RIPG.bat
if /I %input% EQU 04 start ip_scan.bat
if /I %input% EQU 05 start sql_Dork.txt
if /I %input% EQU 06 start putty.exe
if /I %input% EQU 07 start bruteforce.bat
if /I %input% EQU 08 start discord_main.bat
if /I %input% EQU 09 call application.bat

cls
goto start