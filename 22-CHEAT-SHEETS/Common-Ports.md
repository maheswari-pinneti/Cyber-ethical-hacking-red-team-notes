# Common Ports & Protocols Cheat Sheet

> **Module:** `22-CHEAT-SHEETS`  
> **Topic:** Common Ports & Protocols  
> [← Back to Master Index](../README.md)

---

## Standard & Administrative Ports Reference

| Port | Protocol | Layer 4 | Common Service | Security Testing Notes |
| :--- | :--- | :--- | :--- | :--- |
| **20, 21** | FTP | TCP | File Transfer Protocol | Check anonymous login, cleartext credential sniffing. |
| **22** | SSH / SFTP | TCP | Secure Shell | Key brute-force, outdated OpenSSH CVEs, banner grabbing. |
| **23** | Telnet | TCP | Unencrypted Terminal | Insecure cleartext communication, default credentials. |
| **25** | SMTP | TCP | Simple Mail Transfer | User enumeration (`VRFY`, `EXPN`), open relay testing. |
| **53** | DNS | UDP/TCP | Domain Name System | DNS zone transfers (`AXFR`), cache snooping, DNS spoofing. |
| **67, 68** | DHCP | UDP | Dynamic Host Config | Rogue DHCP server, DHCP starvation attacks. |
| **69** | TFTP | UDP | Trivial File Transfer | Unauthenticated file read/write, configuration backups. |
| **80** | HTTP | TCP | Web Server (Cleartext) | Web application attacks (OWASP Top 10), HTTP header checks. |
| **88** | Kerberos | TCP/UDP | Kerberos Authentication | AS-REP Roasting, Kerberoasting, golden/silver tickets. |
| **110** | POP3 | TCP | Post Office Protocol | Unencrypted email retrieval, brute-forcing accounts. |
| **123** | NTP | UDP | Network Time Protocol | NTP amplification DDoS, time synchronization manipulation. |
| **135** | MSRPC | TCP | Microsoft RPC Endpoint | RPC enumeration, privilege escalation, potato attacks. |
| **139, 445** | SMB | TCP | Server Message Block | EternalBlue (MS17-010), share enumeration, Pass-the-Hash. |
| **143** | IMAP | TCP | Internet Message Access | Email retrieval, cleartext credential interception. |
| **161, 162** | SNMP | UDP | Network Management | Community string brute-forcing (`public`, `private`), OID walking. |
| **389** | LDAP | TCP/UDP | Directory Access Protocol | Anonymous binding, LDAP injection, user enumeration. |
| **443** | HTTPS | TCP | Secure Web (TLS) | SSL/TLS certificate auditing, web vulnerability analysis. |
| **636** | LDAPS | TCP | Secure LDAP over TLS | Domain enumeration over encrypted directory connection. |
| **1433** | MSSQL | TCP | Microsoft SQL Server | Default `sa` credentials, SQL injection, `xp_cmdshell` execution. |
| **1521** | Oracle | TCP | Oracle TNS Listener | SID enumeration, default administrative passwords. |
| **3306** | MySQL | TCP | MySQL Database | Remote root access, SQL injection, hash extraction. |
| **3389** | RDP | TCP/UDP | Remote Desktop Protocol | BlueKeep (CVE-2019-0708), brute-force, session hijacking. |
| **5432** | PostgreSQL| TCP | PostgreSQL Database | Unauthenticated databases, copy command execution. |
| **5985** | WinRM | TCP | Windows Remote Mgmt (HTTP)| Evil-WinRM shell access, remote administrative control. |
| **5986** | WinRM | TCP | Windows Remote Mgmt (HTTPS)| Encrypted WinRM administrative execution. |
| **8080, 8443**| HTTP-Alt| TCP | Alternate Web Services | Tomcat manager consoles, proxy endpoints, Jenkins servers. |
