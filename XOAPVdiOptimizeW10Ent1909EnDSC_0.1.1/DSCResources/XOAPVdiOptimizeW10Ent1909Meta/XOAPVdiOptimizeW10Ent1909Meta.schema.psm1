<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent1909Meta".​
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
Module Name    : XOAPVdiOptimizeW10Ent1909EnDSC
Resource Name  : XOAPVdiOptimizeW10Ent1909Meta.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent1909Meta
{
    param(
        [bool] $Include_XOAPVdiOptimizeW10Ent1909WindowsMediaPlayerRemoval,
        [bool] $Include_XOAPVdiOptimizeW10Ent1909AppxPackagesRemoval,
        [bool] $Include_XOAPVdiOptimizeW10Ent1909DisableScheduleTasks,
        [bool] $Include_XOAPVdiOptimizeW10Ent1909UninstallOneDrive,
        [bool] $Include_XOAPVdiOptimizeW10Ent1909ServicesAutologgersDisable,
        [bool] $Include_XOAPVdiOptimizeW10Ent1909ServicesDisable,
        [bool] $Include_XOAPVdiOptimizeW10Ent1909NetworkOptimization
    )

    Import-DscResource -ModuleName 'XOAPVdiOptimizeW10Ent1909EnDSC'
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    if($Include_XOAPVdiOptimizeW10Ent1909WindowsMediaPlayerRemoval){
        XOAPVdiOptimizeW10Ent1909WindowsMediaPlayerRemoval "Vdi Optimize - XOAPVdiOptimizeW10Ent1909WindowsMediaPlayerRemoval"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1909AppxPackagesRemoval){
        XOAPVdiOptimizeW10Ent1909AppxPackagesRemoval "Vdi Optimize - XOAPVdiOptimizeW10Ent1909AppxPackagesRemoval"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1909DisableScheduleTasks){
        XOAPVdiOptimizeW10Ent1909DisableScheduleTasks  "Vdi Optimize - XOAPVdiOptimizeW10Ent1909DisableScheduleTasks"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1909UninstallOneDrive){
        XOAPVdiOptimizeW10Ent1909UninstallOneDrive "Vdi Optimize - XOAPVdiOptimizeW10Ent1909UninstallOneDrive"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1909ServicesAutologgersDisable){
        XOAPVdiOptimizeW10Ent1909ServicesAutologgersDisable "Vdi Optimize - XOAPVdiOptimizeW10Ent1909ServicesAutologgersDisable"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1909ServicesDisable){
        XOAPVdiOptimizeW10Ent1909ServicesDisable "Vdi Optimize - XOAPVdiOptimizeW10Ent1909ServicesDisable"{
        }
    }
    if($Include_XOAPVdiOptimizeW10Ent1909NetworkOptimization){
        XOAPVdiOptimizeW10Ent1909NetworkOptimization "Vdi Optimize - XOAPVdiOptimizeW10Ent1909NetworkOptimization"{
        }
    }
}
