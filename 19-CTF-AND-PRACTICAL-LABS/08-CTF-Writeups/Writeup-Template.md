# CTF Challenge / Machine Writeup: [Machine Name]

- **Platform:** [HackTheBox / TryHackMe / Other]
- **Difficulty:** [Easy / Medium / Hard / Insane]
- **Target IP:** `10.10.x.x`
- **Date Completed:** YYYY-MM-DD
- **Key Concepts:** [e.g. SQLi, Linux PrivEsc, Cronjob abuse]

---

## 1. Summary
Brief executive overview of the attack chain and root vulnerabilities discovered.

## 2. Reconnaissance & Enumeration
### Nmap Scan
```bash
nmap -sC -sV -oA nmap/initial 10.10.x.x
```
### Service Enumeration Findings
- Port 80 (HTTP)
- Port 22 (SSH)

## 3. Initial Access (User Flag)
Detailed explanation of vulnerability exploitation, payloads used, and shell capture.

## 4. Privilege Escalation (Root Flag)
Local enumeration findings, privilege escalation vector, and proof of root access.

## 5. Remediation & Lessons Learned
Specific fixes to prevent this attack chain.
