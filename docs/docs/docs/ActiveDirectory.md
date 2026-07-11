# Active Directory

## Overview

Active Directory Domain Services (AD DS) provides centralized authentication, authorization and management for all computers and users in the enterprise network.

---

## Domain Information

| Parameter | Value |
|----------|-------|
| Domain Name | corp.local |
| Forest Functional Level | Windows Server 2022 |
| Domain Functional Level | Windows Server 2022 |

---

## Server Roles

- Active Directory Domain Services
- DNS Server
- DHCP Server
- File Services

---

## Organizational Units

```
corp.local
│
├── Computers
├── Servers
├── Users
│   ├── IT
│   ├── HR
│   └── Accounting
├── Groups
└── Service Accounts
```

---

## Security Groups

| Group | Description |
|--------|-------------|
| Domain Admins | Full administration |
| IT | IT Department |
| HR | Human Resources |
| Accounting | Accounting Department |

---

## User Management

Users are organized into Organizational Units according to department.

Administrative tasks are automated using PowerShell scripts.

---

## PowerShell Automation

Examples:

- Create Organizational Units
- Create Users
- Create Groups
- Join Computers to Domain

---

## Screenshots

> Screenshots will be added after deployment.
