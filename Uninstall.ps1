$taskName = "Disable-AutoReboots"

schtasks /Delete /TN $taskName -f

Write-Host "Task '$taskName' uninstalled!"
