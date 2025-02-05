# Cybersecurity Homelab

![Cybersecurity](https://img.shields.io/badge/Cybersecurity-Homelab-blue.svg)

# High-Level Network Diagram
![Homelab Diagram](https://raw.githubusercontent.com/SecurelyClueless/Cybersecurity-Homelab/refs/heads/main/Homenet.jpg)


## Overview
This repository documents my **Cybersecurity Homelab** setup, configurations, hardening and security tools. The lab is designed for hands-on learning, network security testing, and penetration testing. It includes various security services and monitoring tools in a controlled virtual environment.

## Lab Infrastructure
### 🖥️ Core Components
- **Linux-based Router** (Configured & Running)
- **Apache2 Web Server**
- **Bind9 DNS Server**
- **FTP Server (SFTP Configured)**
- **SSH Server**
- **Firewall**
- **SIEM Setup**
- **IDS & IPS Configuration**
- **VPN Server**
- **Vulnerability Scanner**
- **Monitoring System**
- **Centralized Syslog Server**
- **NAS (Network Attached Storage)**
- **Proxy Server**

## Network Setup
- **Subnet 1 (10.1.1.0/24)**: Servers & Kali Linux
- **Subnet 2 (192.168.2.0/24)**: Active Directory
- **Router**: Segments and routes traffic between subnets
- **DHCP Server**: Enabled on `ens38` (10.1.1.0/24) and `ens36` (192.168.2.0/24)

## Tools & Technologies
- **Operating System**: Debian Minimal Netinst, Kali Linux, Ubuntu
- **Routing Protocol**: Static Routing
- **Firewall**: iptables 
- **Logging**: Syslog, SIEM (e.g., ELK Stack, Splunk)
- **IDS/IPS**: Snort 
- **Vulnerability Scanning**: Nessus

## Installation & Configuration
Each service's configuration files and setup instructions are documented within their respective directories. Follow the `docs/` directory for step-by-step guides.

## Future Enhancements
- Implement advanced threat detection mechanisms
- Automate log correlation and SIEM alerts
- Harden SSH & Web Server security
- Enable multi-factor authentication (MFA) for VPN
- Intergrate Active Directorty 

## Contributions
Feel free to submit pull requests or report issues to improve this project.

## Disclaimer
This lab is for educational and ethical security research purposes only. Use responsibly and ensure compliance with legal regulations.

---

