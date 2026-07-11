# Enterprise Network Architecture

## Overview

The laboratory environment simulates a small enterprise network based on Microsoft Windows infrastructure.

The environment includes:

- MikroTik Router
- Layer 3 Switch
- Windows Server 2022
- Active Directory
- DNS
- DHCP
- WireGuard VPN
- Proxmox VE
- Windows 11 Client

---

# Network Topology

![Enterprise Network](../diagrams/Enterprise-Network.png)

---

# Infrastructure Components

| Device | Purpose |
|---------|----------|
| MikroTik Router | Internet Gateway |
| Core Switch | VLAN Segmentation |
| Windows Server 2022 | Active Directory, DNS, DHCP, File Server |
| Windows 11 Client | Domain Workstation |
| Proxmox VE | Virtual Infrastructure |
| WireGuard | Secure Remote Access |

---

# IP Addressing

| Network | Purpose |
|----------|----------|
| 192.168.10.0/24 | Management |
| 192.168.20.0/24 | Office Users |
| 192.168.30.0/24 | Servers |

---

# Services

- Active Directory Domain Services
- DNS
- DHCP
- File Services
- WireGuard VPN
- PowerShell Administration

---

# Design Goals

- Centralized authentication
- Secure remote access
- Automatic IP address assignment
- Centralized management
- Enterprise network segmentation
