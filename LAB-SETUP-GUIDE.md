# Complete Cybersecurity Home Lab Setup Guide

> **File:** `LAB-SETUP-GUIDE.md`  
> **Status:** Step-by-Step Architecture Guide  
> [← Back to Master Index](./README.md)

---

## 1. Lab Architecture Overview

Building an isolated, safe home lab is essential to practice penetration testing, malware analysis, and defensive engineering without risking host systems or production networks.

```text
                               +-----------------------------+
                               |     Physical Host System    |
                               | (Windows / macOS / Linux)   |
                               +--------------+--------------+
                                              |
                       +----------------------+----------------------+
                       |       Type-2 Hypervisor (VirtualBox /       |
                       |       VMware Workstation Pro / Player)      |
                       +----------------------+----------------------+
                                              |
             =================== NAT Network (10.0.2.0/24) ===================
             |                                |                              |
+------------+------------+      +------------+------------+   +-------------+-------------+
|    Attacking Machine    |      |    Vulnerable Targets   |   |   Active Directory Domain   |
|       Kali Linux        |      |  - Metasploitable 2     |   |  - Windows Server 2022 DC   |
|   IP: 10.0.2.15         |      |  - Docker (DVWA/Juice)  |   |  - Windows 10 Client        |
|                         |      |  IP: 10.0.2.20          |   |  IPs: 10.0.2.100, 10.0.2.101|
+-------------------------+      +-------------------------+   +---------------------------+
```

---

## 2. Hardware Recommendations

| Component | Minimum Spec | Recommended Spec |
| :--- | :--- | :--- |
| **CPU** | 4 Cores (VT-x / AMD-V enabled in BIOS) | 8 Cores / 16 Threads |
| **RAM** | 16 GB | 32 GB or 64 GB |
| **Storage** | 250 GB SSD | 1 TB NVMe SSD |
| **Host OS** | Windows 10/11, Ubuntu 22.04+, or macOS | Any 64-bit OS with hypervisor support |

---

## 3. Selecting Your Hypervisor
- **Oracle VirtualBox (Free & Open Source):** Excellent for beginners, cross-platform, native NAT Network support.
- **VMware Workstation Pro (Free for Personal Use):** Superior performance, seamless snapshot management, reliable virtual networking.
- **Proxmox VE (Type-1 Bare-Metal):** Recommended if you have a dedicated secondary PC or mini-PC server.

---

## 4. Virtual Network Isolation (Crucial)
> ⚠️ **CRITICAL WARNING:** Never set vulnerable victim machines (e.g., Metasploitable, Windows DC with default passwords) to **Bridged Networking**. Bridged mode exposes unpatched vulnerabilities directly to your physical home Wi-Fi and local network devices.

### Recommended Configuration:
1. Create a **NAT Network** (e.g., named `HackingLabNet` with subnet `10.0.2.0/24`).
2. Attach both Kali Linux and all victim VMs to `HackingLabNet`.
3. In this mode, VMs can communicate with each other, Kali can reach the internet for updates, but outside devices on your physical LAN cannot directly reach the vulnerable VMs.

---

## 5. Step-by-Step Machine Deployment

### Machine 1: The Attacking Machine (Kali Linux)
1. Download the pre-built VM image from [kali.org/get-kali/](https://www.kali.org/get-kali/).
2. Import the `.ova` / `.vmx` into your hypervisor.
3. Allocate: **2-4 vCPUs**, **4-8 GB RAM**, **80 GB disk**.
4. First boot tasks:
   ```bash
   sudo apt update && sudo apt dist-upgrade -y
   sudo apt install -y seclists curl git bloodhound-python responder feroxbuster
   ```

### Machine 2: Vulnerable Linux Target (Metasploitable 2)
1. Download from [SourceForge](https://sourceforge.net/projects/metasploitable/).
2. Unzip and attach the `.vmdk` disk to a new Linux VM.
3. Allocate: **1 vCPU**, **1 GB RAM**.
4. Attach strictly to `HackingLabNet`. Default credentials: `msfadmin` / `msfadmin`.

### Machine 3: Dockerized Vulnerable Web Applications
Run DVWA and OWASP Juice Shop on Kali or a dedicated Ubuntu Docker VM:
```bash
# Run Damn Vulnerable Web App (DVWA)
sudo docker run -d -p 8080:80 vulnerables/web-dvwa

# Run OWASP Juice Shop
sudo docker run -d -p 3000:3000 bkimminich/juice-shop
```
Access in your browser:
- DVWA: `http://localhost:8080` (Default: `admin` / `password`)
- Juice Shop: `http://localhost:3000`

### Machine 4: Active Directory Lab
1. Download evaluation ISOs from Microsoft Evaluation Center:
   - **Windows Server 2022 Evaluation (180-day trial)**
   - **Windows 10/11 Enterprise Evaluation (90-day trial)**
2. Install Windows Server:
   - Promote to Domain Controller (`Active Directory Domain Services` role).
   - Domain name: `CORP.LOCAL`.
   - Create OUs, user accounts (with SPNs for Kerberoasting practice), and groups.
3. Install Windows 10/11 Client:
   - Configure DNS to point to the Server IP.
   - Join `CORP.LOCAL` domain.

---

## 6. Snapshot Management Hygiene
- **Always take a clean snapshot immediately after initial installation and setup.**
- Label snapshots clearly: `Clean-Baseline`, `Post-AD-Install`, `Exploitation-Target`.
- If a machine gets broken, infected, or unstable during an attack exercise, revert to the clean snapshot in seconds.
