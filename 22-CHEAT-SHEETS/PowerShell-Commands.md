# PowerShell Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** PowerShell  
> [← Back to Master Index](../README.md)

---

## 1. Pipeline & Help Basics
```powershell
Get-Help <Cmdlet-Name> -Full          # Detailed documentation and examples
Get-Command -Noun Process             # Find cmdlets interacting with processes
Get-Member                            # Inspect properties and methods of piped objects
Select-Object Property1, Property2    # Filter specific properties from output
Where-Object { $_.Status -eq "Running" } # Filter pipeline items conditionally
```

## 2. System & Hardware Profiling
```powershell
Get-ComputerInfo                      # Comprehensive system configuration overview
Get-CimInstance Win32_OperatingSystem # OS name, build, last boot time, architecture
Get-HotFix | Sort-Object InstalledOn -Descending # List installed Windows security hotfixes
Get-PSDrive -PSProvider FileSystem    # Storage volumes and available disk space
```

## 3. Users, Groups & Privileges
```powershell
[System.Security.Principal.WindowsIdentity]::GetCurrent().Name
Get-LocalUser                         # List all local accounts
Get-LocalGroup                        # List all local groups
Get-LocalGroupMember -Group "Administrators" # Enumerate local Administrators
whoami /priv                          # Check token privileges (e.g., SeImpersonate)
```

## 4. Networking & Web Requests
```powershell
Get-NetIPAddress -AddressFamily IPv4  # Active IPv4 addresses per interface
Get-NetTCPConnection -State Listen    # Active listening TCP ports and owning PIDs
Test-NetConnection -ComputerName 10.0.0.1 -Port 445 # TCP port connectivity check
Invoke-WebRequest -Uri "https://example.com" -OutFile output.html # Download web file
Invoke-RestMethod -Uri "https://api.github.com" # Fetch and automatically parse JSON
```

## 5. Event Logs & Security Auditing
```powershell
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4624} -MaxEvents 10
# Event ID 4624 = Successful Logon

Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4625} -MaxEvents 10
# Event ID 4625 = Failed Logon Attempt

Get-Process | Where-Object { $_.Path -notmatch "Windows" } # Non-Windows binaries running
```
