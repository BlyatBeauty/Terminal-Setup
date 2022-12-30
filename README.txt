Included tools: Chocolatey (+gui), sudo, Linux via WSL2

The 'Manual Instructions' folder has all the instructions to do all of this manually, as well as my list of common packages for my personal setup.

The 'Script' folder has scripts to automate the process.
Before running the script:

1) Add the Script folder to your antivirus exclusions. Some AVs see any PowerShell scripts as malicious, which tbf, is good security practice.

2) Copy the Script folder to your Desktop

3) In the Script folder you will find 4 files labelled Part_1 to Part_4. Right click and edit each file to ensure they point at the right place:
Change the [User] name in the 'Target' and 'Start In' lines to the correct name of the PC user

4) Run each part in order.

Parts, labelled

Part 1: Allowing PowerShell Scripts to run
Part 2: Installing Chocolatey
Part 3: Installing Software
Part 4: Install WSL2

If you're gonna use chocolatey, you may want the ChocoUpdate script I wrote to update all your packages at once (beats having to type out 'sudo choco update all -y' every time). 
If you go this route, you can schedule the task to run as an administrator via Windows Task Scheduler.