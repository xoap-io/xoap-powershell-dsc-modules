<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent2004Meta".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​

.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​
Powershell Module: AuditPolicyDSC​
Powershell Module: SecurityPolicyDSC​
Powershell Module: PowerShellAccessControl​
​Powershell Module: WindowsDefender

.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPVdiOptimizeW10Ent2004EnDSC
Resource Name  : XOAPVdiOptimizeW10Ent2004Meta.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://www.microsoft.com/en-us/download/details.aspx?id=55319​
​
.LINK​
https://www.powershellgallery.com/packages/BaselineManagement/2.9.0​
​
.LINK​
https://gallery.technet.microsoft.com/scriptcenter/PowerShellAccessControl-d3be7b83​

.LINK
https://www.powershellgallery.com/packages/WindowsDefender/1.0.0.4
#>
configuration XOAPVdiOptimizeW10Ent2004Meta
{
    param(
        [bool] $Include_XOAPVdiOptimizeW10Ent2004WindowsMediaPlayerRemoval,
        [bool] $Include_XOAPVdiOptimizeW10Ent2004AppxPackagesRemoval,
        [bool] $Include_XOAPVdiOptimizeW10Ent2004DisableScheduleTasks,
        [bool] $Include_XOAPVdiOptimizeW10Ent2004UninstallOneDrive,
        [bool] $Include_XOAPVdiOptimizeW10Ent2004ServicesAutologgersDisable,
        [bool] $Include_XOAPVdiOptimizeW10Ent2004ServicesDisable,
        [bool] $Include_XOAPVdiOptimizeW10Ent2004NetworkOptimization
    )

    Import-DscResource -ModuleName 'XOAPVdiOptimizeW10Ent2004EnDsc'
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    if($Include_XOAPVdiOptimizeW10Ent2004WindowsMediaPlayerRemoval){
        XOAPVdiOptimizeW10Ent2004WindowsMediaPlayerRemoval "Vdi Optimize - XOAPVdiOptimizeW10Ent2004WindowsMediaPlayerRemoval"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent2004AppxPackagesRemoval){
        XOAPVdiOptimizeW10Ent2004AppxPackagesRemoval "Vdi Optimize - XOAPVdiOptimizeW10Ent2004AppxPackagesRemoval"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent2004DisableScheduleTasks){
        XOAPVdiOptimizeW10Ent2004DisableScheduleTasks  "Vdi Optimize - XOAPVdiOptimizeW10Ent2004DisableScheduleTasks"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent2004UninstallOneDrive){
        XOAPVdiOptimizeW10Ent2004UninstallOneDrive "Vdi Optimize - XOAPVdiOptimizeW10Ent2004UninstallOneDrive"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent2004ServicesAutologgersDisable){
        XOAPVdiOptimizeW10Ent2004ServicesAutologgersDisable "Vdi Optimize - XOAPVdiOptimizeW10Ent2004ServicesAutologgersDisable"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent2004ServicesDisable){
        XOAPVdiOptimizeW10Ent2004ServicesDisable "Vdi Optimize - XOAPVdiOptimizeW10Ent2004ServicesDisable"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent2004NetworkOptimization){
        XOAPVdiOptimizeW10Ent2004NetworkOptimization "Vdi Optimize - XOAPVdiOptimizeW10Ent2004NetworkOptimization"{
        }
    }
}
