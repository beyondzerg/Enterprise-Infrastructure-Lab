<#
.SYNOPSIS
Creates Active Directory security groups.

.DESCRIPTION
Creates enterprise security groups if they do not already exist.

Author: Grigoriy Kashevarov
Project: Enterprise Infrastructure Lab
#>

Import-Module ActiveDirectory

$DomainDN = "DC=corp,DC=local"
$GroupsOU = "OU=Groups,$DomainDN"

$Groups = @(
    @{
        Name = "IT"
        Description = "IT Department"
    },
    @{
        Name = "HR"
        Description = "Human Resources"
    },
    @{
        Name = "Accounting"
        Description = "Accounting Department"
    },
    @{
        Name = "Managers"
        Description = "Management Team"
    },
    @{
        Name = "Remote Users"
        Description = "WireGuard VPN Users"
    }
)

Write-Host ""
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host " Creating Active Directory Groups" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

foreach ($Group in $Groups)
{
    try
    {
        $Exists = Get-ADGroup -Filter "Name -eq '$($Group.Name)'" -ErrorAction SilentlyContinue

        if ($Exists)
        {
            Write-Host "[SKIP] $($Group.Name) already exists." -ForegroundColor Yellow
        }
        else
        {
            New-ADGroup `
                -Name $Group.Name `
                -SamAccountName $Group.Name `
                -GroupCategory Security `
                -GroupScope Global `
                -DisplayName $Group.Name `
                -Description $Group.Description `
                -Path $GroupsOU

            Write-Host "[ OK ] $($Group.Name) created." -ForegroundColor Green
        }
    }
    catch
    {
        Write-Host "[FAIL] $($Group.Name)" -ForegroundColor Red
        Write-Host $_.Exception.Message -ForegroundColor DarkRed
    }
}

Write-Host ""
Write-Host "Completed." -ForegroundColor Cyan
