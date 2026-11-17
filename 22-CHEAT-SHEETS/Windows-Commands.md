# Windows Command Line (CMD) Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** Windows CMD  
> [← Back to Master Index](../README.md)

---

## 1. System Information
```cmd
systeminfo                            :: Complete OS, hotfix, and hardware details
hostname                              :: Current system hostname
echo %USERNAME%                       :: Current logged-in user
set                                   :: List all environment variables
ver                                   :: Windows OS build version
wmic os get Caption,Version,OSArchitecture
```

## 2. User & Group Enumeration
```cmd
whoami /all                           :: Display user SID, groups, and privileges
net user                              :: List all local user accounts
net user <username>                   :: Detailed information for a specific user
net localgroup                        :: List all local security groups
net localgroup Administrators         :: List members of local Administrators group
qwinsta                               :: Query active Remote Desktop sessions
```

## 3. Network & Configuration
```cmd
ipconfig /all                         :: IP configuration, DNS servers, and MAC address
route print                           :: Display active IPv4 and IPv6 routing table
arp -a                                :: Display local ARP cache table
netstat -ano                          :: Active TCP/UDP sockets with process PIDs
nslookup example.com                  :: Perform DNS resolution query
netsh advfirewall show allprofiles    :: Display Windows Firewall profile states
```

## 4. File System & Permissions
```cmd
dir /a /s /b C:\Users\*.txt         :: Recursive search for text files
icacls "C:\Program Files\app"       :: Display NTFS Access Control Lists (ACLs)
fsutil fsinfo drives                  :: List available drive letters
attrib -r -s -h filename              :: Remove read-only, system, and hidden attributes
type C:\path\to\file.txt           :: Output contents of text file
findstr /si "password" *.config       :: Search case-insensitive string across config files
```

## 5. Processes & Services
```cmd
tasklist /v                           :: Detailed list of all running tasks
tasklist /svc                         :: Map running processes to hosted Windows services
taskkill /F /PID 1234                 :: Forcefully terminate process with PID 1234
sc query type= service state= all     :: Query all registered Windows services
sc qc <ServiceName>                   :: Query configuration and binPath of a service
```
