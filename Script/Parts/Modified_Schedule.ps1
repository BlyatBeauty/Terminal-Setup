$action = New-ScheduledTaskAction -Execute "pwsh.exe" -Argument '-Command "choco upgrade all -y --except="''spotify''""'
$time = New-ScheduledTaskTrigger -Daily -At 9:30PM
$STPrin = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Administrators" -RunLevel Highest
Register-ScheduledTask -Trigger $time -Action $action -Principal $STPrin -TaskPath "Chocolatey" -TaskName "ChocolateyUpdate" -Description "Updates Chocolatey and all its packages"