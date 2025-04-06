@echo off
:: By: Mehrshad

echo [*] Installing required Python packages...
pip install --upgrade pip
pip install requests selenium aiohttp ipaddress colorama lxml

echo [*] All prerequisites have been installed successfully!
start Purple_Blood.bat
del install_requirements.bat
exit
