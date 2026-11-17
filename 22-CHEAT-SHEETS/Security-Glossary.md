# Cybersecurity & Ethical Hacking Glossary

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** Security Glossary  
> [← Back to Master Index](../README.md)

---

## A - E
- **AMSI (Antimalware Scan Interface):** Windows interface standard that allows applications to integrate with installed antivirus products for script/memory scanning.
- **AS-REP Roasting:** An attack targeting Kerberos accounts where 'Do not require Kerberos preauthentication' is enabled, retrieving an encrypted TGT for offline password cracking.
- **Blue Team:** Defensive security personnel responsible for incident detection, response, system hardening, and architecture defense.
- **C2 (Command and Control):** Infrastructure and communication channels used by threat actors or red teamers to remotely manage compromised systems.
- **CIA Triad:** Core information security model comprising Confidentiality, Integrity, and Availability.
- **CVE (Common Vulnerabilities and Exposures):** Standardized dictionary of publicly disclosed cybersecurity vulnerabilities.
- **CVSS (Common Vulnerability Scoring System):** Open framework for communicating the characteristics and severity of software vulnerabilities (0.0 to 10.0 scale).
- **DCSync:** An Active Directory attack where an attacker simulates a Domain Controller via Directory Replication Service (DRS) protocol to dump password hashes.

## F - L
- **Golden Ticket:** A forged Kerberos Ticket Granting Ticket (TGT) created using the compromised `krbtgt` password hash, granting full domain dominance.
- **IDOR (Insecure Direct Object Reference):** Access control flaw where an application uses user-supplied input to access objects directly without authorization checks.
- **Kerberoasting:** An attack targeting Service Principal Names (SPNs) in Active Directory by requesting TGS tickets and cracking service account hashes offline.
- **Lateral Movement:** Techniques used by an attacker to extend access to other systems and resources on a network after initial compromise.
- **Living off the Land (LOLBAS):** Using legitimate, trusted, built-in operating system binaries and scripts to execute unauthorized actions without dropping external tools.

## M - P
- **MITRE ATT&CK:** Globally accessible knowledge base of adversary tactics, techniques, and procedures (TTPs) based on real-world observations.
- **OSINT (Open Source Intelligence):** Intelligence collected from publicly available, open sources without direct, invasive target interaction.
- **Pass-the-Hash (PtH):** Lateral movement technique where an attacker authenticates to a remote system using an NTLM hash rather than plaintext password.
- **Pivoting:** Using a compromised compromised system as a bridge or proxy to access network segments not directly reachable by the attacker.
- **Privilege Escalation:** Elevating permissions on a target system from low-privileged user to higher administrative or SYSTEM/root privilege.
- **Purple Team:** Collaborative security exercise where red and blue teams work together to measure, validate, and improve detection capabilities in real-time.

## R - Z
- **Red Team:** Offensive security professionals conducting objective-driven, adversarial simulations to evaluate an organization's holistic detection and response posture.
- **Reverse Shell:** A shell connection initiated from the victim back to the attacker's listening machine, bypassing inbound firewall restrictions.
- **Silver Ticket:** A forged Kerberos Ticket Granting Service (TGS) ticket created using a specific service account password hash.
- **SSRF (Server-Side Request Forgery):** A web security vulnerability allowing an attacker to induce the server-side application to make requests to an unintended location.
- **Zero-Day (0-day):** A vulnerability unknown to the software vendor with no security patch or mitigation currently available.
