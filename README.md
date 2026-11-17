<div align="center">

# ⚔️ Cyber Security, Ethical Hacking & Red Team Notes

### 🚀 *The Complete Production-Grade Offensive Tradecraft & Cyber Defense Playbook*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![Curriculum: 51 Modules](https://img.shields.io/badge/Curriculum-51%20Modules-blue.svg)](#-curriculum-directory)
[![Notes & Guides: 730+](https://img.shields.io/badge/Notes%20%26%20Guides-730%2B%20Files-success.svg)](#-curriculum-directory)
[![Portfolio: 12 Projects](https://img.shields.io/badge/Portfolio%20Projects-12%20Capstones-purple.svg)](./50-PROFESSIONAL-SECURITY-PROJECTS-AND-PORTFOLIO/)
[![Pull Requests: 52 Modular](https://img.shields.io/badge/Pull%20Requests-52%20Modular%20Branches-orange.svg)](./PULL_REQUESTS.md)
[![Status: Actively Maintained](https://img.shields.io/badge/Status-Actively%20Maintained-brightgreen.svg)](#)

<p align="center">
  <b>A comprehensive, battle-tested reference manual and curriculum spanning Computer Internals, Network Penetration Testing, Active Directory Exploitation, Red Team Operations, DevSecOps, Cloud Security, Threat Hunting, and Capstone Portfolios.</b>
</p>

[📚 Explore Curriculum](#-curriculum-directory) • [🗺️ Learning Roadmap](./LEARNING-ROADMAP.md) • [🛠️ 100+ Tools Index](./TOOLS-INDEX.md) • [💻 Lab Setup Guide](./LAB-SETUP-GUIDE.md) • [📺 YouTube Hub](./youtube/README.md)

</div>

---

> [!IMPORTANT]
> **Strictly Authorized Educational & Ethical Scope:** All methodologies, scripts, payloads, and architectural breakdowns in this repository are published solely for lawful educational training, defensive posture verification, and authorized security assessments conducted with explicit written permission. Refer to the official **[SECURITY.md](./SECURITY.md)** for our full compliance guidelines.

---

## 🌟 Key Highlights & Repository Features

Whether you're breaking into the industry as an aspiring **Security Analyst**, preparing for hands-on certifications like **OSCP / CRTO / PNPT / CISSP**, or conducting operations as an **Enterprise Red/Blue Team Engineer**, this repository provides high-signal, zero-fluff knowledge:

- 🧱 **Ground-Up Systems Engineering:** Hardware architecture, OS kernels (Windows & Linux internals), memory structures, and enterprise networking.
- 🎯 **Tactical Offensive Tradecraft:** Active Directory attacks (Kerberos abuse, BloodHound graph analysis, DCSync), web/API security (OWASP Top 10), and C2 adversary emulation.
- 🛡️ **Resilient Cyber Defense:** Threat intelligence (MITRE ATT&CK), detection engineering (Sigma, Sysmon), SOC log analysis (Splunk/ELK), and incident response runbooks.
- ☁️ **Cloud-Native & Modern AppSec:** AWS/Azure/GCP identity security, Docker & Kubernetes defense, DevSecOps CI/CD pipelines, and LLM/AI red teaming.
- 🏆 **12 Production-Ready Capstone Projects:** Complete, end-to-end portfolio templates for network analysis, Linux/Windows audits, web pentests, and adversary simulations.

---

## 📌 Fast Navigation & Quick Access Guides

| Resource | Category | Key Contents |
| :--- | :--- | :--- |
| 🛡️ **[SECURITY.md](./SECURITY.md)** | **Ethical Policy** | Rules of engagement, legal boundaries (CFAA, GDPR, IT Act), and responsible disclosure |
| 🗺️ **[LEARNING-ROADMAP.md](./LEARNING-ROADMAP.md)** | **Learning Progression** | Step-by-step 10-phase milestone roadmap from fundamentals to senior red teamer |
| 🛠️ **[TOOLS-INDEX.md](./TOOLS-INDEX.md)** | **Tools Catalog** | 100+ categorized security tools with official links, GitHub repos, and operational syntax |
| 💻 **[LAB-SETUP-GUIDE.md](./LAB-SETUP-GUIDE.md)** | **Lab Architecture** | Blueprint for setting up isolated virtual labs (Kali Linux, Metasploitable, Docker, AD) |
| 🌐 **[RESOURCE-INDEX.md](./RESOURCE-INDEX.md)** | **Master Directory** | Industry standards (NIST, CIS, OWASP), web decoders, sandboxes, and CTF platforms |
| 📺 **[youtube/](./youtube/README.md)** | **Video Learning Hub** | Curated playlists and top video courses across 8 major security disciplines |
| 🚀 **[PULL_REQUESTS.md](./PULL_REQUESTS.md)** | **Modular Pull Requests** | Direct one-click links to open and review all 52 isolated Pull Requests targeting `main` |
| 🤝 **[CONTRIBUTING.md](./CONTRIBUTING.md)** | **Contribution Guide** | Markdown style guides, contribution workflow, and community standards |

---

## 🗺️ Curriculum Directory

The 51 modules are organized into **6 progressive operational tracks**:

### 📘 Track 1: Foundations & Systems Architecture
*Master the foundational architecture of modern computing, networking, and security.*

| Module | Core Focus | Key Concepts Covered |
| :--- | :--- | :--- |
| **[`00-START-HERE`](./00-START-HERE/)** | Orientation & Ethics | Industry specializations, hacker mindset, learning roadmaps, and lab hygiene. |
| **[`01-COMPUTER-AND-IT-FUNDAMENTALS`](./01-COMPUTER-AND-IT-FUNDAMENTALS/)** | Computer Architecture | Von Neumann model, CPU registers, paging, virtual memory, and file systems. |
| **[`02-NETWORKING-FUNDAMENTALS`](./02-NETWORKING-FUNDAMENTALS/)** | Networking Protocols | OSI 7-layer, TCP/IP, CIDR subnetting, DNS resolution, ARP, routing, and Wireshark. |
| **[`03-LINUX-FUNDAMENTALS`](./03-LINUX-FUNDAMENTALS/)** | Linux Administration | Filesystem Hierarchy Standard (FHS), permissions, SUID bits, bash scripting, and SSH. |
| **[`04-WINDOWS-FUNDAMENTALS`](./04-WINDOWS-FUNDAMENTALS/)** | Windows Internals | Windows architecture, CMD, PowerShell cmdlets, NTFS ACLs, Registry, and Event Logs. |
| **[`05-PROGRAMMING-AND-SCRIPTING`](./05-PROGRAMMING-AND-SCRIPTING/)** | Security Programming | Python for security, advanced Bash automation, PowerShell, SQL, and Git hygiene. |
| **[`06-SECURITY-FUNDAMENTALS`](./06-SECURITY-FUNDAMENTALS/)** | Core InfoSec Principles | CIA triad, symmetric/asymmetric encryption, hashing, PKI, MFA, and risk frameworks. |

---

### ⚔️ Track 2: Offensive Security & Penetration Testing
*Execute authorized assessments, exploit vulnerabilities, and simulate real-world attacks.*

| Module | Core Focus | Key Concepts Covered |
| :--- | :--- | :--- |
| **[`07-ETHICAL-HACKING-METHODOLOGY`](./07-ETHICAL-HACKING-METHODOLOGY/)** | Pentesting Lifecycle | PTES standard, Rules of Engagement (RoE), scoping contracts, and technical reporting. |
| **[`08-RECONNAISSANCE-AND-OSINT`](./08-RECONNAISSANCE-AND-OSINT/)** | Recon & Intelligence | Passive/active recon, DNS footprinting, Google Dorking, metadata, and OSINT tools. |
| **[`09-NETWORK-PENETRATION-TESTING`](./09-NETWORK-PENETRATION-TESTING/)** | Network Exploitation | Nmap scan flags, service enumeration, Nessus, Metasploit, and bind/reverse shells. |
| **[`10-WEB-APPLICATION-SECURITY`](./10-WEB-APPLICATION-SECURITY/)** | Web App Vulnerabilities | OWASP Top 10 (SQLi, XSS, CSRF, SSRF, IDOR, XXE), Burp Suite, and business logic bugs. |
| **[`11-API-SECURITY`](./11-API-SECURITY/)** | API Vulnerability Testing | REST/GraphQL APIs, JWT attacks, BOLA/BFLA, rate limiting, and OWASP API Top 10. |
| **[`12-BUG-BOUNTY-HUNTING`](./12-BUG-BOUNTY-HUNTING/)** | Bug Bounty Methodologies | HackerOne/Bugcrowd, wide recon workflows, non-destructive PoCs, and report writing. |
| **[`13-RED-TEAM-OPERATIONS`](./13-RED-TEAM-OPERATIONS/)** | Adversary Emulation | Red team lifecycle, initial access, LOLBAS execution, defense evasion, and C2 frameworks. |
| **[`14-ACTIVE-DIRECTORY-AND-WINDOWS-PENTESTING`](./14-ACTIVE-DIRECTORY-AND-WINDOWS-PENTESTING/)** | Enterprise AD Exploitation | Kerberos authentication, BloodHound graph analysis, Kerberoasting, and DCSync. |

---

### 🏗️ Track 3: Infrastructure, Binary & Systems Security
*Deep-dive into cloud architectures, binary reverse engineering, and low-level security.*

| Module | Core Focus | Key Concepts Covered |
| :--- | :--- | :--- |
| **[`15-CLOUD-SECURITY`](./15-CLOUD-SECURITY/)** | Cloud Security (AWS/Azure/GCP) | Shared responsibility model, IAM misconfigurations, storage security, and audit logs. |
| **[`16-MALWARE-AND-REVERSE-ENGINEERING`](./16-MALWARE-AND-REVERSE-ENGINEERING/)** | Malware Dissection | Static/dynamic analysis, x86/x64 assembly, Ghidra decompilation, and YARA rules. |
| **[`17-TOOLS-AND-TECHNOLOGIES`](./17-TOOLS-AND-TECHNOLOGIES/)** | Tooling Master Reference | Comprehensive syntax manuals for Kali, Nmap, Burp Suite, Wireshark, SQLMap, etc. |
| **[`25-WIRELESS-AND-NETWORK-SECURITY`](./25-WIRELESS-AND-NETWORK-SECURITY/)** | Wireless & Network Security | 802.11 standards, WPA3, 802.1X/RADIUS, rogue AP detection, VLAN security, and NAC. |
| **[`29-EXPLOIT-DEVELOPMENT-AND-BINARY-SECURITY`](./29-EXPLOIT-DEVELOPMENT-AND-BINARY-SECURITY/)** | Exploit Dev & Memory | Stack/heap memory corruption, buffer overflows, UAF, format strings, and ASLR/DEP. |

---

### 🛡️ Track 4: Defensive Operations, SOC & Digital Forensics
*Detect threats, analyze forensic artifacts, and engineer resilient security postures.*

| Module | Core Focus | Key Concepts Covered |
| :--- | :--- | :--- |
| **[`18-DEFENSIVE-SECURITY-AND-SOC`](./18-DEFENSIVE-SECURITY-AND-SOC/)** | SOC & Blue Teaming | SIEM architectures (Splunk/ELK), log correlation, EDR, and MITRE ATT&CK mapping. |
| **[`19-CTF-AND-PRACTICAL-LABS`](./19-CTF-AND-PRACTICAL-LABS/)** | Practical Wargames | TryHackMe, HackTheBox, PortSwigger Academy, DVWA, and report templates. |
| **[`20-REAL-WORLD-CASE-STUDIES`](./20-REAL-WORLD-CASE-STUDIES/)** | Incident Case Studies | Post-mortems of major web, API, supply chain, cloud, and Active Directory breaches. |
| **[`27-DIGITAL-FORENSICS-AND-INCIDENT-RESPONSE`](./27-DIGITAL-FORENSICS-AND-INCIDENT-RESPONSE/)** | DFIR & Threat Analysis | Evidence handling, chain of custody, memory/disk/network forensics, and ransomware IR. |
| **[`33-THREAT-INTELLIGENCE-AND-ADVERSARY-EMULATION`](./33-THREAT-INTELLIGENCE-AND-ADVERSARY-EMULATION/)** | Threat Intel & Purple Team | Cyber Threat Intelligence (CTI), IOCs vs IOAs, STIX/TAXII, and purple team validation. |
| **[`38-ENDPOINT-SECURITY-AND-EDR-XDR`](./38-ENDPOINT-SECURITY-AND-EDR-XDR/)** | Endpoint Security & EDR | Endpoint telemetry, Sysmon event filtering, process inspection, and detection engineering. |

---

### 🚀 Track 5: Specialized & Enterprise Security Disciplines
*Master emerging and enterprise cybersecurity domains.*

| Module | Core Focus | Key Concepts Covered |
| :--- | :--- | :--- |
| **[`26-IDENTITY-AND-ACCESS-MANAGEMENT`](./26-IDENTITY-AND-ACCESS-MANAGEMENT/)** | IAM & Access Control | RBAC, ABAC, SSO, OAuth 2.0, OpenID Connect, SAML, WebAuthn, PAM, and Entra ID. |
| **[`28-SECURE-SOFTWARE-DEVELOPMENT-AND-DEVSECOPS`](./28-SECURE-SOFTWARE-DEVELOPMENT-AND-DEVSECOPS/)** | DevSecOps & AppSec | SSDLC, Threat modeling (STRIDE), SAST, DAST, SCA, dependency security, and CI/CD. |
| **[`30-MOBILE-APPLICATION-SECURITY`](./30-MOBILE-APPLICATION-SECURITY/)** | Mobile App Security | Android/iOS security models, APK/IPA analysis, reverse engineering, and OWASP MASVS. |
| **[`31-IOT-AND-OT-SECURITY`](./31-IOT-AND-OT-SECURITY/)** | IoT & Industrial Control | Embedded systems, firmware analysis, MQTT/CoAP, SCADA, PLC security, and segmentation. |
| **[`32-SECURITY-GOVERNANCE-RISK-AND-COMPLIANCE`](./32-SECURITY-GOVERNANCE-RISK-AND-COMPLIANCE/)** | GRC & Auditing | ISO 27001, NIST CSF/RMF, risk treatment, security auditing, BCP/DR, and vendor risk. |
| **[`34-SECURITY-RESEARCH-AND-VULNERABILITY-DISCLOSURE`](./34-SECURITY-RESEARCH-AND-VULNERABILITY-DISCLOSURE/)** | Research & Disclosure | CVE research, CWE classification, CVSS v3.1/v4.0 scoring, CVD, and PoC development. |
| **[`35-CRYPTOGRAPHY-AND-APPLIED-CRYPTANALYSIS`](./35-CRYPTOGRAPHY-AND-APPLIED-CRYPTANALYSIS/)** | Applied Cryptography | Symmetric/asymmetric ciphers, digital signatures, Diffie-Hellman, TLS 1.3, and PQC. |
| **[`36-PASSWORD-SECURITY-AND-AUTHENTICATION-TESTING`](./36-PASSWORD-SECURITY-AND-AUTHENTICATION-TESTING/)** | Password Security | Modern hashing (bcrypt, scrypt, Argon2), lockout mechanisms, and credential stuffing defense. |
| **[`37-VULNERABILITY-AND-PATCH-MANAGEMENT`](./37-VULNERABILITY-AND-PATCH-MANAGEMENT/)** | Vulnerability Lifecycle | Vulnerability management lifecycles, exposure assessment, and remediation retesting. |
| **[`39-CONTAINER-AND-KUBERNETES-SECURITY`](./39-CONTAINER-AND-KUBERNETES-SECURITY/)** | Container & K8s Security | Dockerfile hardening, container image scanning, K8s RBAC, Network Policies, and PSS. |
| **[`40-EMAIL-SECURITY-AND-PHISHING-ANALYSIS`](./40-EMAIL-SECURITY-AND-PHISHING-ANALYSIS/)** | Email & Phishing Defense | SMTP/IMAP protocol mechanics, SPF, DKIM, DMARC, BEC investigations, and secure email gateways. |
| **[`41-SECURITY-AUTOMATION-AND-SCRIPTING`](./41-SECURITY-AUTOMATION-AND-SCRIPTING/)** | Security Automation | Python/Bash security automation, API workflows, FIM monitoring, and SOAR integrations. |
| **[`42-DATABASE-AND-DATA-SECURITY`](./42-DATABASE-AND-DATA-SECURITY/)** | Database & Data Protection | RDBMS security, SQL Server, MySQL/PostgreSQL hardening, encryption, and DLP. |
| **[`43-BLOCKCHAIN-AND-WEB3-SECURITY`](./43-BLOCKCHAIN-AND-WEB3-SECURITY/)** | Blockchain & Web3 Security | Smart contract fundamentals, Solidity security, reentrancy attacks, and auditing. |
| **[`44-AI-ML-AND-CYBERSECURITY`](./44-AI-ML-AND-CYBERSECURITY/)** | AI/ML & LLM Security | AI for threat detection, prompt injection, LLM data leakage, AI red teaming, and OWASP LLM Top 10. |
| **[`45-SECURITY-ARCHITECTURE-AND-ZERO-TRUST`](./45-SECURITY-ARCHITECTURE-AND-ZERO-TRUST/)** | Zero Trust Architecture | Zero Trust Architecture (ZTA), defense-in-depth, microservices trust boundaries, and design patterns. |
| **[`46-WEB-INFRASTRUCTURE-AND-PROTOCOL-SECURITY`](./46-WEB-INFRASTRUCTURE-AND-PROTOCOL-SECURITY/)** | Web Infrastructure | Nginx/Apache hardening, reverse proxies, CDN security, DNSSEC, HTTP/3, and security headers. |
| **[`47-SOFTWARE-SUPPLY-CHAIN-AND-DEPENDENCY-SECURITY`](./47-SOFTWARE-SUPPLY-CHAIN-AND-DEPENDENCY-SECURITY/)** | Supply Chain Defense | Open-source risks, package manager security (npm/PyPI), dependency confusion, and SBOMs. |
| **[`48-PRIVACY-ENGINEERING-AND-DATA-PROTECTION`](./48-PRIVACY-ENGINEERING-AND-DATA-PROTECTION/)** | Privacy Engineering | Privacy-by-Design, data classification, anonymization, GDPR, and India DPDP Act compliance. |
| **[`49-SECURITY-TESTING-QUALITY-ASSURANCE-AND-VALIDATION`](./49-SECURITY-TESTING-QUALITY-ASSURANCE-AND-VALIDATION/)** | Security QA & Testing | Security test planning, authentication/authorization test cases, regression testing, and retests. |

---

### 💼 Track 6: Capstone Projects, Career & Reference Manuals
*High-density cheat sheets, technical interview guides, and professional portfolio projects.*

| Module | Core Focus | Key Concepts Covered |
| :--- | :--- | :--- |
| **[`21-INTERVIEW-PREPARATION`](./21-INTERVIEW-PREPARATION/)** | Interview Mastery | Technical Q&A covering fundamentals, Linux, Windows, networking, web, and red teaming. |
| **[`22-CHEAT-SHEETS`](./22-CHEAT-SHEETS/)** | Quick Command Reference | Production command references for Linux, Windows, PowerShell, Networking, Nmap, and Git. |
| **[`23-CAREER-AND-CERTIFICATIONS`](./23-CAREER-AND-CERTIFICATIONS/)** | Career Roadmaps | Career tracks (Pentester, Red Team, SOC), certifications guide (OSCP, CRTO, CISSP), and resumes. |
| **[`24-REFERENCES-AND-RESOURCES`](./24-REFERENCES-AND-RESOURCES/)** | External Resources | Curated GitHub security repositories, academic books, authoritative blogs, and official standards. |
| **[`50-PROFESSIONAL-SECURITY-PROJECTS-AND-PORTFOLIO`](./50-PROFESSIONAL-SECURITY-PROJECTS-AND-PORTFOLIO/)** | 12 Capstone Projects | Complete hands-on projects for Network Analysis, Linux/Windows Audits, Web/API Pentests, AD Labs, etc. |

---

## 📈 Visual Learning Progression

```text
┌────────────────────────────────────────────────────────┐
│  Phase 1: IT, Networking & Systems (Modules 00 - 06)   │
└──────────────────────────┬─────────────────────────────┘
                           │
                           ▼
┌────────────────────────────────────────────────────────┐
│  Phase 2: Penetration Testing & Web (Modules 07 - 12)  │
└──────────────────────────┬─────────────────────────────┘
                           │
                           ▼
┌────────────────────────────────────────────────────────┐
│  Phase 3: Active Directory & Red Team (Modules 13 - 17)│
└──────────────────────────┬─────────────────────────────┘
                           │
                           ▼
┌────────────────────────────────────────────────────────┐
│  Phase 4: Blue Team, SOC & Forensics (Modules 18 - 20) │
└──────────────────────────┬─────────────────────────────┘
                           │
                           ▼
┌────────────────────────────────────────────────────────┐
│  Phase 5: DevSecOps, Cloud & AI Security (25 - 49)     │
└──────────────────────────┬─────────────────────────────┘
                           │
                           ▼
┌────────────────────────────────────────────────────────┐
│  Phase 6: 12 Capstones & Interview Prep (21 - 24, 50)  │
└────────────────────────────────────────────────────────┘
```

---

## 🤝 Community, Contributions & License

- **Found a typo, outdated syntax, or want to contribute a capstone project?** Review our **[CONTRIBUTING.md](./CONTRIBUTING.md)** for styling standards and pull request workflows.
- **Support the Project:** If you find this repository valuable for your learning or professional work, consider giving it a ⭐ on GitHub!
- **License:** Distributed under the **[MIT License](./LICENSE)**.
