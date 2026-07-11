Import-Module ActiveDirectory

$DomainDN = "DC=corp,DC=local"

# Создаем основные OU
$RootOUs = @(
    "Computers",
    "Servers",
    "Users",
    "Groups",
    "Service Accounts"
)

foreach ($OU in $RootOUs) {
    New-ADOrganizationalUnit -Name $OU -Path $DomainDN -ProtectedFromAccidentalDeletion $true
}

# Создаем подразделения внутри Users
$UserOU = "OU=Users,$DomainDN"

$Departments = @(
    "IT",
    "HR",
    "Accounting"
)

foreach ($Dept in $Departments) {
    New-ADOrganizationalUnit -Name $Dept -Path $UserOU -ProtectedFromAccidentalDeletion $true
}

Write-Host "OU structure created successfully." -ForegroundColor Green

# PowerShell Scripts

| Script | Description |
|---------|-------------|
| Create-OU.ps1 | Creates Organizational Units |
| Create-Users.ps1 | Creates domain users |
| Create-Groups.ps1 | Creates security groups |
| Install-ADDS.ps1 | Installs Active Directory Domain Services |
| Configure-DHCP.ps1 | Configures DHCP Server |
| Configure-DNS.ps1 | Configures DNS Server |
