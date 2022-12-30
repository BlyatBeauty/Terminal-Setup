@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo Part 2 will install the Chocolatey Package Manager.
echo This will help install and maintain most programs.
echo Press any key to begin running Part 2  . . . 
pause > nul

REM -	Part_2: Installing Chocolatey.
REM 			Install command taken from the Chocolatey website
echo Now installing Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
color 2F
echo Chocolatey has been installed
echo Press any key to continue  . . . 
Pause > nul
color 0F
echo Part 2 has been completed. Please run Part 3 next.
echo Press any key to continue  . . . 
Pause > nul
Exit