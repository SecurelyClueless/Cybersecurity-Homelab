# Network Setup Overview
This document outlines the network architecture of my **Cybersecurity Homelab**, including subnet configurations, routing, firewall rules, and connected services.

## Network Architecture
The lab consists of **two main subnets** segmented for different purposes:

| Subnet | Network Address  | Purpose |
|--------|----------------|---------|
| **Server Network** | `10.1.1.0/24` | Hosts web, DNS, FTP, SSH, SIEM, and other security services |
| **Active Directory Network** | `192.168.2.0/24` | Contains AD services and clients |
| **Router Interface (ISP)** | `ens33` (192.168.137.2) | Connected to the Internet |
| **Router Internal (LAN)** | `ens38` (10.1.1.1) & `ens36` (192.168.2.1) | Routes between networks |

📌 **Key Component:** A **Linux-based router** manages traffic and segmentation between these networks.

---

## Network Services
### Web Server
- **Apache2 Web Server** hosts a personal portfolio.
- TLS/SSL encryption enabled for secure access.

### SSH Server
- Secure remote access via SSH.
- Key-based authentication enforced.
- Root login disabled for added security.

### FTP & SFTP Server
- **FTP Server** configured for internal file sharing.
- **SFTP** enabled for secure file transfers.

### DHCP Server
- Configured on internal router for dynamic IP allocation in both the subnets.
  
### DNS Server (Bind9)
- Handles local domain resolution and caching.
- Uses external forwarders for resolving public domains.

---

## Routing Configuration
- **Static Routes on the Internal Router:** 10.1.1.0/24 via ens38 , 192.168.2.0/24 via ens36.
- **Default Gateway:** The Internal router acts as the primary gateway for all devices inside both the subnets.

---

## Firewall Rules (iptables/ufw)
### For Ubuntu server (ufw)
#### INBOUND
- Allows DNS
- Allows Apache2
- Allows FTP
- ALlows SSH on port 2222 from 10.1.1.0/24, 192.168.1.114, 192.168.137.1
#### OUTBOUND
- Allows syslog
### For Internal Router (iptables)
#### NAT Table Rules:
- **MASQUERADE rule** for source NAT on interface `ens33` for subnet `10.1.1.0/24`.
- **PREROUTING, INPUT, OUTPUT, POSTROUTING chains** follow default accept policies.

#### Filter Table Rules:
- **FORWARD chain**:
  - Accepts traffic from `ens38` to `ens33`.
  - Accepts traffic from `ens33` to `ens38` if in `RELATED,ESTABLISHED` state.

- **INPUT and OUTPUT chains**:
  - Default policy: ACCEPT.
 
---
  


## Monitoring & Logging
- **SIEM** (e.g., ELK Stack or Splunk) for centralized logging.
- **IDS/IPS** (Snort) for network intrusion detection.
- **Syslog Server** to collect logs from all network devices
