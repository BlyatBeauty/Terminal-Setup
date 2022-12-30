# Win-Terminal-Setup
My Windows Terminal Stuff scripts that I use when I do fresh Windows Installs

Included tools: Chocolatey (+gui), sudo, Linux via WSL2

The 'Manual Instructions' folder has all the instructions to do all of this manually, as well as my list of common packages for my personal setup.

The 'Script' folder has scripts to automate the process - located in the Parts folder, and tools like a common package selector, in the Tools folder.
Before running the scripts, add the Script folder to your antivirus exclusions. Some AVs see any PowerShell scripts as malicious, which tbf, is good security practice.

Run each Part in order as admin.

Parts, labelled

Part 1: Allowing PowerShell Scripts to run
Part 2: Installing Chocolatey
Part 3: Installing Software via packages
Part 4: Install WSL2

If you're gonna use chocolatey, you may want the ChocoUpdate script I wrote to update all your packages at once (beats having to type out 'sudo choco update all -y' every time).
It is located in the Script > Tools folder.
If you go this route, you can schedule the task to run as an administrator via Windows Task Scheduler.
