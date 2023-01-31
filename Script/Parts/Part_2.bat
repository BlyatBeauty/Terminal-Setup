@echo off

REM Misha's PowerShell Setup Script

REM Introductions
echo We will now install the Chocolatey Package Manager.
echo This will help install and maintain most programs.

REM -	Part_2: Installing Chocolatey.
REM 			Install command taken from the Chocolatey website
echo Now installing Chocolatey
powershell.exe Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
color 2F
echo Chocolatey has been installed
color 0F
Exit
