<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent1909WindowsMediaPlayerRemoval".​
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
Resource Name  : XOAPVdiOptimizeW10Ent1909WindowsMediaPlayerRemoval.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent1909WindowsMediaPlayerRemoval
{
    param(
        [bool] $VdiOptimizeWindowsMediaPlayerRemoval
    )

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC' -ModuleVersion 1.4.0.0
    Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.10.0.0
    Import-DSCResource -ModuleName 'PowerShellAccessControl' -ModuleVersion 3.0.135.20150413
    Import-DscResource -ModuleName 'WindowsDefender' -ModuleVersion 1.0.0.4
    if($VdiOptimizeWindowsMediaPlayerRemoval){

        WindowsOptionalFeature "Vdi Optimize - XOAPVdiOptimizeW10Ent2004EnDSCWindowsMediaPlayerRemoval"
        {
            Name = "WindowsMediaPlayer"
            Ensure = "Disable"
        }
    }
}
