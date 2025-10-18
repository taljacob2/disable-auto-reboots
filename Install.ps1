param (
    [Parameter()][string]$User = "SYSTEM"
)

$thisPath = (Get-Location).Path
$scriptPath = Join-Path $thisPath "Disable-AutoReboots.ps1"

$taskName = "Disable-AutoReboots"
$taskCommand = "powershell.exe"
$taskArguments = "-WindowStyle Hidden -ExecutionPolicy Bypass -File `"$scriptPath`""

# Create the scheduled task
schtasks /Create /TN $taskName /TR "$taskCommand $taskArguments" /RU $User /SC HOURLY /ST 00:00 /RL HIGHEST /F

Write-Host "Task '$taskName' scheduled!"
