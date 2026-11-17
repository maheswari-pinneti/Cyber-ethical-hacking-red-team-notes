# Nmap Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** Nmap  
> [← Back to Master Index](../README.md)

---

## 1. Target Specification
```bash
nmap 192.168.1.1                      # Single target IP
nmap 192.168.1.1-50                   # IP range
nmap 192.168.1.0/24                   # Subnet / CIDR block
nmap -iL targets.txt                  # Scan targets from text file
nmap --exclude 192.168.1.10           # Exclude target from scan
```

## 2. Host Discovery (Ping Sweep)
```bash
nmap -sn 192.168.1.0/24               # Ping scan (no port scan, discover live hosts)
nmap -Pn 192.168.1.10                 # Treat host as online (skip ping discovery)
nmap -PR 192.168.1.0/24               # ARP ping scan (fastest on local subnet)
```

## 3. Port Scan Types
```bash
nmap -sS 192.168.1.10                 # TCP SYN Stealth Scan (default as root)
nmap -sT 192.168.1.10                 # TCP Connect Scan (unprivileged default)
nmap -sU 192.168.1.10                 # UDP Port Scan
nmap -p 80,443,8080 192.168.1.10      # Scan specific ports
nmap -p- 192.168.1.10                 # Scan all 65,535 ports
nmap --top-ports 1000 192.168.1.10    # Scan top 1,000 most common ports
```

## 4. Service & OS Detection
```bash
nmap -sV 192.168.1.10                 # Detect service and version banners
nmap -sV --version-intensity 9        # Maximum aggressiveness version probe
nmap -O 192.168.1.10                  # OS fingerprinting detection
nmap -A 192.168.1.10                  # Aggressive scan (-sV -O -sC --traceroute)
```

## 5. Nmap Scripting Engine (NSE)
```bash
nmap -sC 192.168.1.10                 # Default safe NSE scripts
nmap --script=vuln 192.168.1.10       # Run vulnerability identification scripts
nmap --script=smb-vuln* -p 445 10.0.0.1 # Scan for SMB vulnerabilities
nmap --script=http-title -p 80,443    # Grab HTTP page titles
```

## 6. Output Options & Timing
```bash
nmap -T4 192.168.1.10                 # Timing template (T0=Paranoid to T5=Insane)
nmap -oN scan.txt 192.168.1.10        # Normal output format
nmap -oG scan.gnmap 192.168.1.10      # Greppable output format
nmap -oA output_name 192.168.1.10     # Output all 3 major formats (txt, xml, gnmap)
```
