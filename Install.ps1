param (
  [parameter()][string]$User = "system"
)

$thisPath = (Get-Location).Path

Schtasks /Create /TN "Disable-AutoReboots" /TR "powershell -c 'cd $thisPath; $thisPath\Disable-AutoReboots.ps1'" /RU "$User" /SC HOURLY /ST "00:00" /RL HIGHEST /F

Write-Host "Done!"
