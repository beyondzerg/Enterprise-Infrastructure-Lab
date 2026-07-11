<#
.SYNOPSIS
Installs Active Directory Domain Services.

.DESCRIPTION
Installs the AD DS role and management tools.

Author: Grigoriy Kashevarov
Project: Enterprise Infrastructure Lab
#>

Write-Host ""
Write-Host "======================================" -ForegroundColor Cyan
Write-Host " Installing Active Directory Services " -ForegroundColor Cyan
Write-Host "======================================" -ForegroundColor Cyan
Write-Host ""

try
{
    Install-WindowsFeature `
        AD-Domain-Services `
        -IncludeManagementTools

    Write-Host ""
    Write-Host "[ OK ] Active Directory installed successfully." -ForegroundColor Green
}
catch
{
    Write-Host ""
    Write-Host "[FAIL] Installation failed." -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor DarkRed
}
