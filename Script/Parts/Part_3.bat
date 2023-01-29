@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo Part 3 will install your selected programs via Chocolatey.
echo Ensure you selected your desired programs before running this script.
echo If you are unsure of which programs you picked, press Control-C and open this file in Notepad to confirm.
echo Press any key to begin running Part 3  . . . 
pause > nul

REM -	Part_3: Install Chocolatey GUI and apps
REM 			These packages can be modified based on what your specific install requires.
REM 			Consult the Package Selection shortcut for an interactive checklist of the most common packages a fresh install would need.
echo Now installing your selected software  . . .

REM - PLACE PACKAGES BELOW THIS LINE ######################################################
choco install 7zip angryip anki audacity arduino chocolateygui boxsync eartrumpet epicgameslauncher firefox git imageglass innosetup itunes keepassxc minecraft-launcher notepadplusplus powershell-core powertoys qbittorrent steam-client sumatrapdf vcredist140 vlc winfetch zoom -y
REM - PLACE PACKAGES ABOVE THIS LINE ######################################################

color 2F
echo Chocolatey Packages have been installed
echo Press any key to continue  . . . 
Pause > nul
color 0F
echo Part 3 has been completed.
echo In the 'Tools' folder is a file called 'Make Choco Auto-Update.txt'
echo Follow those instructions to keep Chocolatey packages up to date automatically!
echo Press any key to continue  . . . 
Pause > nul
Exit /b