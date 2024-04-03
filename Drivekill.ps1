# Disconnect all mapped network drives individually
Get-WmiObject -Class Win32_MappedLogicalDisk | ForEach-Object {
    net use $_.DeviceID /delete /yes
}

# Delete all remaining mapped network drives without confirmation
net use * /delete /yes

# Restart Windows Explorer
taskkill /f /IM explorer.exe
Start-Process explorer.exe
