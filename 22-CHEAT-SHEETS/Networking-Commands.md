# Networking Commands Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** Networking Commands  
> [← Back to Master Index](../README.md)

---

## 1. Interface & IP Verification
| Action | Linux Command | Windows Command |
| :--- | :--- | :--- |
| View IP & Subnet | `ip addr` / `ifconfig` | `ipconfig /all` |
| View Routing Table | `ip route` / `route -n` | `route print` |
| View ARP Table | `ip neigh` / `arp -e` | `arp -a` |
| View DNS Servers | `cat /etc/resolv.conf` | `ipconfig /all` |

## 2. Connectivity & Path Diagnostics
```bash
# ICMP ping with count
ping -c 4 192.168.1.1                # Linux
ping -n 4 192.168.1.1                # Windows

# Traceroute / Route MTU discovery
traceroute -n 8.8.8.8                 # Linux (UDP/ICMP)
tracert -d 8.8.8.8                   # Windows (ICMP)

# Socket statistics & Open Ports
ss -tulnp                             # Linux listening TCP/UDP sockets
netstat -ano                          # Windows active connections & PIDs
```

## 3. DNS Diagnostics
```bash
# Standard A record resolution
nslookup target.com
dig target.com +short

# Specific Record Queries
dig target.com MX                     # Mail exchange servers
dig target.com TXT                    # SPF, verification tokens
dig target.com NS                     # Authoritative nameservers
dig @8.8.8.8 target.com ANY          # Query custom DNS server
dig -x 192.168.1.1                   # Reverse DNS lookup (PTR)
```

## 4. Packet Capturing (tcpdump)
```bash
tcpdump -i eth0 -n                   # Capture all traffic on eth0 without DNS resolution
tcpdump -i eth0 port 80 -A           # Capture HTTP traffic and print ASCII payloads
tcpdump -i eth0 host 192.168.1.50    # Filter traffic for specific IP address
tcpdump -i eth0 -w capture.pcap      # Save capture to PCAP file
tcpdump -r capture.pcap -c 100       # Read first 100 packets from PCAP file
```
