<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent1903Meta".​
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
Module Name    : XOAPVdiOptimizeW10Ent1903EnDSC
Resource Name  : XOAPVdiOptimizeW10Ent1903Meta.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent1903Meta
{
    param(
        [bool] $Include_XOAPVdiOptimizeW10Ent1903WindowsMediaPlayerRemoval,
        [bool] $Include_XOAPVdiOptimizeW10Ent1903AppxPackagesRemoval,
        [bool] $Include_XOAPVdiOptimizeW10Ent1903DisableScheduleTasks,
        [bool] $Include_XOAPVdiOptimizeW10Ent1903UninstallOneDrive,
        [bool] $Include_XOAPVdiOptimizeW10Ent1903ServicesAutologgersDisable,
        [bool] $Include_XOAPVdiOptimizeW10Ent1903ServicesDisable,
        [bool] $Include_XOAPVdiOptimizeW10Ent1903NetworkOptimization
    )

    Import-DscResource -ModuleName 'XOAPVdiOptimizeW10Ent1903EnDSC'
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    if($Include_XOAPVdiOptimizeW10Ent1903WindowsMediaPlayerRemoval){
        XOAPVdiOptimizeW10Ent1903WindowsMediaPlayerRemoval "Vdi Optimize - XOAPVdiOptimizeW10Ent1903WindowsMediaPlayerRemoval"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1903AppxPackagesRemoval){
        XOAPVdiOptimizeW10Ent1903AppxPackagesRemoval "Vdi Optimize - XOAPVdiOptimizeW10Ent1903AppxPackagesRemoval"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1903DisableScheduleTasks){
        XOAPVdiOptimizeW10Ent1903DisableScheduleTasks  "Vdi Optimize - XOAPVdiOptimizeW10Ent1903DisableScheduleTasks"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1903UninstallOneDrive){
        XOAPVdiOptimizeW10Ent1903UninstallOneDrive "Vdi Optimize - XOAPVdiOptimizeW10Ent1903UninstallOneDrive"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1903ServicesAutologgersDisable){
        XOAPVdiOptimizeW10Ent1903ServicesAutologgersDisable "Vdi Optimize - XOAPVdiOptimizeW10Ent1903ServicesAutologgersDisable"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1903ServicesDisable){
        XOAPVdiOptimizeW10Ent1903ServicesDisable "Vdi Optimize - XOAPVdiOptimizeW10Ent1903ServicesDisable"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1903NetworkOptimization){
        XOAPVdiOptimizeW10Ent1903NetworkOptimization "Vdi Optimize - XOAPVdiOptimizeW10Ent1903NetworkOptimization"{
        }
    }
}
