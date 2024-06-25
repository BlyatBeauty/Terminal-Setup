# Terminal-Setup
My Windows Terminal scripts that I use when I do fresh Windows Installs

Included tools: Chocolatey (+gui), sudo, Linux via WSL2

The 'Manual Instructions' folder has all the instructions to do all of this manually, as well as my list of common packages for my personal setup.

The 'Script' folder has scripts to automate the process - located in the Parts folder, and tools like a common package selector, in the Tools folder.
Before running the scripts, add the Script folder to your antivirus exclusions. Some AVs see any PowerShell scripts as malicious, which tbf, is good security practice.

Running the script is easy:
1) Fill the `packages.txt` with the packages you wish to install (a package selector assistant has been included in the Tools folder. It is a spreadsheet that works both offline via Excel or online via Google Sheets)
2) Run the `Script.bat` file as admin.


If you're gonna use chocolatey, you may want the ChocoUpdate script I wrote to update all your packages at once (beats having to type out 'sudo choco update all -y' every time).
It is located in the Script > Tools folder.
If you go this route, you can schedule the task to run as an administrator via Windows Task Scheduler.
