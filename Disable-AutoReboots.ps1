$currentDate = (Get-Date)
$startHour = ($currentDate.Hour + 18) % 24
$endHour = ($currentDate.Hour + 12) % 24
 
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v ActiveHoursStart /t REG_DWORD /d $startHour /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v ActiveHoursEnd /t REG_DWORD /d $endHour /f

Write-Host "[$currentDate]: Set active hours to: $startHour - $endHour"
