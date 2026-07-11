# ==========================================
# Create Active Directory Users
# Enterprise Infrastructure Lab
# ==========================================

Import-Module ActiveDirectory

$DomainDN = "DC=corp,DC=local"

# Default password
$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

$Users = @(
    @{
        FirstName = "Ivan"
        LastName  = "Ivanov"
        Login     = "iivanov"
        OU        = "OU=IT,OU=Users,$DomainDN"
        Group     = "IT"
    },
    @{
        FirstName = "Petr"
        LastName  = "Petrov"
        Login     = "ppetrov"
        OU        = "OU=HR,OU=Users,$DomainDN"
        Group     = "HR"
    },
    @{
        FirstName = "Anna"
        LastName  = "Sidorova"
        Login     = "asidorova"
        OU        = "OU=Accounting,OU=Users,$DomainDN"
        Group     = "Accounting"
    }
)

foreach ($User in $Users)
{
    New-ADUser `
        -Name "$($User.FirstName) $($User.LastName)" `
        -GivenName $User.FirstName `
        -Surname $User.LastName `
        -SamAccountName $User.Login `
        -UserPrincipalName "$($User.Login)@corp.local" `
        -Path $User.OU `
        -AccountPassword $Password `
        -Enabled $true `
        -ChangePasswordAtLogon $true

    Add-ADGroupMember `
        -Identity $User.Group `
        -Members $User.Login
}

Write-Host "Users created successfully." -ForegroundColor Green
