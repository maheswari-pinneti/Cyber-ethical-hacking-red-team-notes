# Master Security Tools Index

> **File:** `TOOLS-INDEX.md`  
> **Status:** Curated Directory of 100+ Security Tools  
> [← Back to Master Index](./README.md)

---

## 1. Network Scanning & Enumeration

| Tool Name | Primary Function | Official URL / GitHub |
| :--- | :--- | :--- |
| **Nmap** | Network exploration and port scanner | [nmap.org](https://nmap.org/) |
| **Masscan** | Mass IP port scanner (transmits SYN packets at scale) | [github.com/robertdavidgraham/masscan](https://github.com/robertdavidgraham/masscan) |
| **RustScan** | High-speed modern port scanner powered by Rust | [github.com/RustScan/RustScan](https://github.com/RustScan/RustScan) |
| **Wireshark** | GUI network protocol packet analyzer | [wireshark.org](https://www.wireshark.org/) |
| **tcpdump** | Command-line packet analyzer using libpcap | [tcpdump.org](https://www.tcpdump.org/) |
| **Netcat** | Network utility for reading/writing TCP/UDP sockets | Built-in / [nc110](http://nc110.sourceforge.net/) |
| **AutoRecon** | Multi-threaded network reconnaissance tool | [github.com/Tib3rius/AutoRecon](https://github.com/Tib3rius/AutoRecon) |

---

## 2. Web Application & API Security

| Tool Name | Primary Function | Official URL / GitHub |
| :--- | :--- | :--- |
| **Burp Suite** | Web application security testing platform & proxy | [portswigger.net/burp](https://portswigger.net/burp) |
| **OWASP ZAP** | Free open-source web application security scanner | [zaproxy.org](https://www.zaproxy.org/) |
| **ffuf** | Fast web fuzzer for directory and parameter fuzzing | [github.com/ffuf/ffuf](https://github.com/ffuf/ffuf) |
| **Gobuster** | Directory/file, DNS, and VHost busting tool in Go | [github.com/OJ/gobuster](https://github.com/OJ/gobuster) |
| **Feroxbuster** | Fast, recursive content discovery tool | [github.com/epi052/feroxbuster](https://github.com/epi052/feroxbuster) |
| **sqlmap** | Automatic SQL injection and database takeover | [sqlmap.org](https://sqlmap.org/) |
| **Nikto** | Web server vulnerability scanner | [github.com/sullo/nikto](https://github.com/sullo/nikto) |
| **Kiterunner** | Fast API endpoint discovery and content scanner | [github.com/assetnote/kiterunner](https://github.com/assetnote/kiterunner) |
| **Postman** | API platform for building and testing APIs | [postman.com](https://www.postman.com/) |

---

## 3. Reconnaissance & OSINT

| Tool Name | Primary Function | Official URL / GitHub |
| :--- | :--- | :--- |
| **Amass** | In-depth attack surface mapping and asset discovery | [github.com/owasp-amass/amass](https://github.com/owasp-amass/amass) |
| **Subfinder** | Fast passive subdomain enumeration tool | [github.com/projectdiscovery/subfinder](https://github.com/projectdiscovery/subfinder) |
| **httpx** | Multi-purpose HTTP toolkit for probing live domains | [github.com/projectdiscovery/httpx](https://github.com/projectdiscovery/httpx) |
| **theHarvester** | E-mails, subdomains, and names harvester | [github.com/laramies/theHarvester](https://github.com/laramies/theHarvester) |
| **SpiderFoot** | Open source intelligence (OSINT) automation tool | [spiderfoot.net](https://www.spiderfoot.net/) |
| **Recon-ng** | Full-featured Web Reconnaissance framework | [github.com/lanmaster53/recon-ng](https://github.com/lanmaster53/recon-ng) |
| **Sherlock** | Hunt down social media accounts by username | [github.com/sherlock-project/sherlock](https://github.com/sherlock-project/sherlock) |

---

## 4. Active Directory & Windows Pentesting

| Tool Name | Primary Function | Official URL / GitHub |
| :--- | :--- | :--- |
| **BloodHound** | AD attack path management & graph visualizer | [github.com/BloodHoundAD/BloodHound](https://github.com/BloodHoundAD/BloodHound) |
| **SharpHound** | C# data collector for BloodHound | [github.com/BloodHoundAD/SharpHound](https://github.com/BloodHoundAD/SharpHound) |
| **Impacket** | Python network protocol library (secretsdump, psexec) | [github.com/fortra/impacket](https://github.com/fortra/impacket) |
| **Mimikatz** | Extract plaintexts passwords, hashes, Kerberos tickets | [github.com/gentilkiwi/mimikatz](https://github.com/gentilkiwi/mimikatz) |
| **PowerView** | PowerShell tool to gain situational awareness in AD | [github.com/PowerShellMafia/PowerSploit](https://github.com/PowerShellMafia/PowerSploit) |
| **Rubeus** | C# toolset for raw Kerberos interaction and abuse | [github.com/GhostPack/Rubeus](https://github.com/GhostPack/Rubeus) |
| **CrackMapExec / NetExec** | Swiss army knife for pentesting networks and AD | [github.com/Pennyw0rth/NetExec](https://github.com/Pennyw0rth/NetExec) |
| **Evil-WinRM** | Ultimate WinRM shell for hacking Windows | [github.com/Hackplayers/evil-winrm](https://github.com/Hackplayers/evil-winrm) |

---

## 5. Exploitation & Post-Exploitation

| Tool Name | Primary Function | Official URL / GitHub |
| :--- | :--- | :--- |
| **Metasploit** | World's most used penetration testing framework | [metasploit.com](https://www.metasploit.com/) |
| **SearchSploit** | Command-line search tool for Exploit-DB | [exploit-db.com](https://www.exploit-db.com/) |
| **LinPEAS / WinPEAS** | Privilege escalation awesome scripts suite | [github.com/peass-ng/PEASS-ng](https://github.com/peass-ng/PEASS-ng) |
| **Chisel** | Fast TCP/UDP tunnel over HTTP secured via SSH | [github.com/jpillora/chisel](https://github.com/jpillora/chisel) |
| **Ligolo-ng** | Advanced, lightweight tunneling/pivoting tool | [github.com/nicocha30/ligolo-ng](https://github.com/nicocha30/ligolo-ng) |

---

## 6. Command & Control (C2) Frameworks

| Tool Name | Primary Function | Official URL / GitHub |
| :--- | :--- | :--- |
| **Sliver** | Cross-platform adversary emulation / C2 framework | [github.com/BishopFox/sliver](https://github.com/BishopFox/sliver) |
| **Mythic** | Multi-platform, post-exploit HTTP/Websocket C2 | [github.com/its-a-feature/Mythic](https://github.com/its-a-feature/Mythic) |
| **Havoc** | Modern, malleable post-exploitation C2 framework | [github.com/HavocFramework/Havoc](https://github.com/HavocFramework/Havoc) |
| **Covenant** | .NET command and control framework for red teamers | [github.com/cobbr/Covenant](https://github.com/cobbr/Covenant) |

---

## 7. Password Cracking & Forensics

| Tool Name | Primary Function | Official URL / GitHub |
| :--- | :--- | :--- |
| **Hashcat** | World's fastest and most advanced password recovery | [hashcat.net](https://hashcat.net/hashcat/) |
| **John the Ripper** | Fast password cracker with extensive format support | [openwall.com/john](https://www.openwall.com/john/) |
| **THC-Hydra** | Fast network logon cracker supporting 50+ protocols | [github.com/vanhauser-thc/thc-hydra](https://github.com/vanhauser-thc/thc-hydra) |
| **Volatility 3** | Advanced memory forensics framework | [github.com/volatilityfoundation/volatility3](https://github.com/volatilityfoundation/volatility3) |
| **Autopsy** | Digital forensics platform and graphical interface | [autopsy.com](https://www.autopsy.com/) |
| **Ghidra** | Software reverse engineering (SRE) framework (NSA) | [ghidra-sre.org](https://ghidra-sre.org/) |
| **x64dbg** | Open-source x64/x32 debugger for Windows | [x64dbg.com](https://x64dbg.com/) |
