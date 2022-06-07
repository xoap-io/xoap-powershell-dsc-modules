<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent1909ServicesAutologgersDisable".​
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
Resource Name  : XOAPVdiOptimizeW10Ent1909ServicesAutologgersDisable.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent1909ServicesAutologgersDisable
{
    param(
        [bool] $VdiOptimizeServicesAutologgersDisable
    )

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC' -ModuleVersion 1.4.0.0
    Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.10.0.0
    Import-DSCResource -ModuleName 'PowerShellAccessControl' -ModuleVersion 3.0.135.20150413
    Import-DscResource -ModuleName 'WindowsDefender' -ModuleVersion 1.0.0.4
    if($VdiOptimizeServicesAutologgersDisable){

        Registry "VdiOptimize - AppModel"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }

        Registry "VdiOptimize - CloudExperienceHost00BE"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOOBE\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }

        Registry "VdiOptimize - DiagLog"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }

        Registry "VdiOptimize - ReadyBoot"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }

        Registry "VdiOptimize - WDIContextLog"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDIContextLog\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }

        Registry "VdiOptimize - WiFiDriverIHVSession"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }

        Registry "VdiOptimize - WiFiSession"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }

        Registry "VdiOptimize - WinPhoneCritical"
        {
            Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical\"
            ValueName = "Start"
            ValueType = "DWORD"
            ValueData = "0"
        }
    }
}
