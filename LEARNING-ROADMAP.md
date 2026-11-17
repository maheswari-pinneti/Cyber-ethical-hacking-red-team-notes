# Cybersecurity & Red Team Learning Roadmap

> **File:** `LEARNING-ROADMAP.md`  
> **Status:** Master Learning Path  
> [← Back to Master Index](./README.md)

---

## 🗺️ Visual Progression Path

```text
Phase 0: IT & Computer Fundamentals (Hardware, OS, Process Architecture)
   │
   ▼
Phase 1: Networking Mastery (OSI 7-Layer, TCP/IP, Routing, DNS, Wireshark)
   │
   ▼
Phase 2: Operating Systems & Scripting (Linux Admin, Windows Internals, Bash, Python, PowerShell)
   │
   ▼
Phase 3: Information Security Fundamentals (Cryptography, Identity, CIA, Threat Modeling)
   │
   ▼
Phase 4: Ethical Hacking & Network Pentesting (Recon, Scanning, Vulnerability Assessment, Metasploit)
   │
   ▼
Phase 5: Web Application & API Security (OWASP Top 10, PortSwigger Academy, REST/GraphQL)
   │
   ▼
Phase 6: Active Directory & Enterprise Windows Attacks (Kerberos, LDAP, GPO, BloodHound)
   │
   ▼
Phase 7: Red Team Operations & Adversary Simulation (C2, LOLBAS, AMSI Evasion, Persistence)
   │
   ▼
Phase 8: Defensive Operations & Purple Teaming (SIEM, Sysmon, EDR, Threat Hunting, MITRE ATT&CK)
   │
   ▼
Phase 9: Professional Certifications & Career Specialization (OSCP, CRTO, CISSP, Bug Bounty)
```

---

## Phase 0: IT & Computer Fundamentals
- [ ] Understand computer architecture: CPU, RAM, Cache, Storage, and System Bus.
- [ ] Learn how the OS interacts with hardware: Kernel Space vs. User Space.
- [ ] Understand Processes, Threads, Memory Paging, and Virtual Memory.
- [ ] Master file system architectures: NTFS (MFT, Permissions) and EXT4 (Inodes, Permissions).
- **Core Repository Reference:** `01-COMPUTER-AND-IT-FUNDAMENTALS/`

---

## Phase 1: Networking Fundamentals
- [ ] Master the OSI 7-Layer Model and TCP/IP 4-Layer Model.
- [ ] Deep dive into IP addressing (IPv4, IPv6) and Subnetting (CIDR notation).
- [ ] Understand core protocols: DNS, DHCP, ARP, ICMP, TCP (3-way handshake) vs. UDP.
- [ ] Learn application layer protocols: HTTP/HTTPS, SSH, FTP, SMTP, SMB, RDP.
- [ ] Capture and dissect traffic using **Wireshark** and **tcpdump**.
- **Core Repository Reference:** `02-NETWORKING-FUNDAMENTALS/`

---

## Phase 2: Operating Systems & Scripting
- [ ] **Linux Mastery:** Navigation, permissions (chmod, chown, SUID/SGID), process management, systemd.
- [ ] **Windows Internals:** CMD, PowerShell, Registry hives, Services, Event Viewer, UAC.
- [ ] **Scripting for Automation:**
  - **Bash:** Writing recon wrappers, loops, stream manipulation (awk, sed, grep).
  - **Python:** Socket programming, HTTP requests, web scraping, automation scripts.
  - **PowerShell:** Cmdlets, CIM/WMI queries, Active Directory module.
- **Core Repository Reference:** `03-LINUX-FUNDAMENTALS/`, `04-WINDOWS-FUNDAMENTALS/`, `05-PROGRAMMING-AND-SCRIPTING/`

---

## Phase 3: Security & Cryptography Fundamentals
- [ ] CIA Triad (Confidentiality, Integrity, Availability) and Non-repudiation.
- [ ] Symmetric encryption (AES, ChaCha20) vs Asymmetric encryption (RSA, ECC).
- [ ] Cryptographic hashing (SHA-256, Argon2, bcrypt) vs Salting & Peppering.
- [ ] Public Key Infrastructure (PKI), TLS/SSL handshakes, Digital Certificates.
- [ ] Identity & Access Management (IAM), MFA (TOTP, FIDO2/WebAuthn), OAuth 2.0 / OIDC.
- **Core Repository Reference:** `06-SECURITY-FUNDAMENTALS/`

---

## Phase 4: Ethical Hacking & Network Penetration Testing
- [ ] Ethical Hacking methodology (PTES): Pre-engagement, Recon, Scanning, Exploitation, Reporting.
- [ ] Active & Passive Reconnaissance (OSINT, DNS probing, Shodan, Google Dorking).
- [ ] Network scanning with **Nmap**: Port scanning, service fingerprinting, NSE scripts.
- [ ] Vulnerability scanning: Nessus, OpenVAS.
- [ ] Exploitation basics: SearchSploit, Exploit-DB, Metasploit Framework.
- **Core Repository Reference:** `07-ETHICAL-HACKING-METHODOLOGY/`, `08-RECONNAISSANCE-AND-OSINT/`, `09-NETWORK-PENETRATION-TESTING/`

---

## Phase 5: Web Application & API Penetration Testing
- [ ] Web architecture: HTTP requests/responses, headers, cookies, sessions, REST APIs.
- [ ] Setting up and mastering **Burp Suite Professional / Community**.
- [ ] OWASP Top 10 vulnerabilities:
  - SQL Injection (In-band, Blind, Error-based).
  - Cross-Site Scripting (Reflected, Stored, DOM).
  - Cross-Site Request Forgery (CSRF) & Server-Side Request Forgery (SSRF).
  - Insecure Direct Object References (IDOR / BOLA).
  - Command Injection, Path Traversal, File Upload bypasses, XXE.
- [ ] Hands-on training: PortSwigger Web Security Academy, DVWA, OWASP Juice Shop.
- **Core Repository Reference:** `10-WEB-APPLICATION-SECURITY/`, `11-API-SECURITY/`, `12-BUG-BOUNTY-HUNTING/`

---

## Phase 6: Active Directory & Enterprise Windows Pentesting
- [ ] Active Directory architecture: Domains, Forests, Trees, Domain Controllers, Trusts.
- [ ] Kerberos authentication mechanics: AS-REQ/REP, TGS-REQ/REP, PAC.
- [ ] AD Enumeration with **BloodHound / SharpHound**, PowerView, and LDAP.
- [ ] Common AD attacks:
  - Kerberoasting & AS-REP Roasting.
  - Pass-the-Hash (PtH) and Pass-the-Ticket (PtT).
  - DCSync attack (DRSUAPI replication abuse).
  - GPO abuse and ACL misconfigurations.
- **Core Repository Reference:** `14-ACTIVE-DIRECTORY-AND-WINDOWS-PENTESTING/`

---

## Phase 7: Red Team Operations & Tradecraft
- [ ] Adversary simulation lifecycle & Rules of Engagement.
- [ ] Threat Intelligence mapping with MITRE ATT&CK.
- [ ] Living off the Land Binaries and Scripts (**LOLBAS**).
- [ ] Command & Control (C2) frameworks: Sliver, Mythic, Havoc, Cobalt Strike.
- [ ] Defense Evasion: AMSI bypasses, process injection, obfuscation.
- **Core Repository Reference:** `13-RED-TEAM-OPERATIONS/`

---

## Phase 8: Defensive Security, SOC & Detection Engineering
- [ ] Blue team architecture: SIEM (Splunk, Elastic Security), EDR, and NDR.
- [ ] Windows Event Log auditing (Sysmon Event IDs 1, 3, 7, 8, 10, 11, 22).
- [ ] Detection engineering: Writing Sigma rules, YARA rules, and Snort/Suricata signatures.
- [ ] Incident Response lifecycle (NIST SP 800-61 / SANS 6 steps).
- **Core Repository Reference:** `18-DEFENSIVE-SECURITY-AND-SOC/`

---

## Phase 9: Certifications Roadmap
| Level | Recommended Certifications | Target Role |
| :--- | :--- | :--- |
| **Foundational** | CompTIA Security+, Network+, eJPTv2 | Junior SOC Analyst / Junior Pentester |
| **Intermediate** | PNPT (TCM Security), BCTI, CompTIA CySA+ | Penetration Tester / Incident Responder |
| **Advanced Hands-On**| OffSec OSCP, CPTS (HackTheBox), CRTO (Zero-Point Security) | Senior Pentester / Red Team Operator |
| **Expert / Leadership**| OffSec OSEP, CRTE, CISSP, CISM | Lead Red Team Engineer / Security Architect |
