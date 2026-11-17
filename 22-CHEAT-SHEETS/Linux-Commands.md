# Linux Commands Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** Linux Commands  
> [← Back to Master Index](../README.md)

---

## 1. System Information & Hardware
```bash
uname -a                  # Kernel version and architecture
cat /etc/os-release       # Linux distribution and version details
hostnamectl               # System hostname and OS metadata
lscpu                     # Detailed CPU architecture info
free -h                   # RAM usage in human-readable format
df -hT                    # Disk space and file system types
lsblk                     # List storage block devices and partitions
uptime                    # System running time, user count, and load averages
```

## 2. User & Privilege Management
```bash
whoami                    # Current user identity
id                        # User ID (UID), Group ID (GID), and groups
w                         # Who is logged in and what they are doing
last                      # History of recent user logons
sudo -l                   # List commands current user can execute with sudo
cat /etc/passwd           # All local user accounts
cat /etc/shadow           # Encrypted user passwords (requires root)
cat /etc/group            # Local groups list
```

## 3. File & Directory Navigation
```bash
pwd                       # Print working directory
ls -laht                  # List all files, human sizes, sorted by time
find / -perm -4000 2>/dev/null      # Find SUID binaries (privilege escalation check)
find / -writable -type d 2>/dev/null # Find world-writable directories
grep -rnI "password" /var/www/      # Recursive case-sensitive search for strings
tar -czvf backup.tar.gz /target/dir # Create compressed gzip archive
tar -xzvf backup.tar.gz -C /extract # Extract compressed archive
```

## 4. Networking & Connections
```bash
ip addr show              # Display IP addresses and interfaces
ip route show             # Display default routing table
ss -tulnp                 # Active TCP/UDP listening ports and processes
netstat -antup            # Legacy network sockets inspection
ping -c 4 8.8.8.8         # Send 4 ICMP echo packets
dig example.com ANY       # Query DNS records
curl -Iv https://example.com # Inspect HTTP headers and TLS certificate
```

## 5. Process & Service Management
```bash
ps aux                    # Display all running processes
ps -ef | grep python      # Search for specific running process
top / htop                # Real-time interactive process viewer
kill -9 <PID>             # Forcefully kill process by PID
systemctl status <srv>    # Check systemd service status
systemctl start <srv>     # Start a systemd service
journalctl -u <srv> -e    # View most recent logs for a specific service
```
