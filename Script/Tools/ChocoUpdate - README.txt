The ChocolateyUpdate XML file is an automated task that runs the 'chocoupdate.ps1' script daily, at 9:30 pm.

You may have to edit the XML file in notepad and set the <Arguments> line near the end of the file to the location where you saved chocoupdate.ps1 (put this location in "double quotes")

To import it, 

1) Open up Task Scheduler
2) Right-click on Task Scheduler Library and select Import Task
3) Import ChocolateyUpdate.xml as a task.

To manually set up Task Scheduler, just know that running .ps1 scripts in Task Scheduler is kinda janky.
The command you run is PowerShell.exe and the location to the script (in "double quotes") is the location where you saved the chocoupdate.ps1 script


However, you'll quickly come across an annoying quirk of Chocolatey - when it updates you get desktop icons for all those programs. If you find this annoying, read on.

This PowerShell profile script is thanks to /u/JJenkx on Reddit. Original comment can be found at https://www.reddit.com/r/chocolatey/comments/s4jwtj/installers_creating_desktop_shortcuts/ipl9ivs/?context=3

# save this function to where "echo $profile" shows the profile location. create the file if not there (by typing in notepad $profile - you will have to run PowerShell as admin for this)

function choco {
$CHOCOEXE=$(Get-Command choco.exe).Path
If ([bool]$CHOCOEXE){
    $CHOCOARG1=$Args[0]
    $CHOCOARG2=$Args[1]
    $ALLCHOCOARGS=$Args
    If ($CHOCOARG1 -eq "upgrade" -And [bool]$CHOCOARG2) {
        echo "`nGoing to remove any new shortcuts from desktop generated from now until upgrade finishes`n"
        $StartTime = Get-Date
        & $CHOCOEXE $ALLCHOCOARGS
        $Desktops = "$env:PUBLIC\Desktop", "$env:USERPROFILE\Desktop"
        $ICONSTOREMOVE=$($Desktops | Get-ChildItem -Filter "*.lnk" -ErrorAction SilentlyContinue | Where-Object { $_.LastWriteTime -gt $StartTime })
        echo "`nRemoving desktop icons:"
        echo $ICONSTOREMOVE
        $Desktops | Get-ChildItem -Filter "*.lnk" -ErrorAction SilentlyContinue | Where-Object { $_.LastWriteTime -gt $StartTime } | Remove-Item
    }else {
        & $CHOCOEXE $ALLCHOCOARGS
        }
}else {
    echo "`nUser defined function ""choco"" did not find choco.exe in path. Is choco installed?`n"
    }
}