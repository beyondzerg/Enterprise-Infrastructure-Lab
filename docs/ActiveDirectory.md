# Active Directory Deployment

## Overview

This document describes the deployment of an Active Directory Domain Services (AD DS) environment based on Windows Server 2022.

---

## Server Information

| Parameter | Value |
|-----------|-------|
| Server Name | DC01 |
| Operating System | Windows Server 2022 |
| Role | Domain Controller |
| Forest | corp.local |
| Domain | corp.local |

---

## Installed Roles

- Active Directory Domain Services
- DNS Server
- DHCP Server
- File Server

---

## Organizational Units

- IT
- HR
- Finance
- Management
- Servers
- Workstations

---

## Security Groups

- Domain Admins
- IT Support
- HR Users
- Finance Users
- Office Users

---

## PowerShell Automation

Deployment scripts are available in the `/scripts` directory.

- Install-Forest.ps1
- Create-OU.ps1
- Create-Groups.ps1
- Create-Users.ps1
