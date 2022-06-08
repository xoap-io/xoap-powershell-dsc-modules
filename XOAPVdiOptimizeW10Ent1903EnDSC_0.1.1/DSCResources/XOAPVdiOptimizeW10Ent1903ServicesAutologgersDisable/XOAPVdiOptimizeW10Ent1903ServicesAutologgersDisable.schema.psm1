<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent1903ServicesAutologgersDisable".​
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
Resource Name  : XOAPVdiOptimizeW10Ent1903ServicesAutologgersDisable.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent1903ServicesAutologgersDisable
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry "VdiOptimize - disableAutologger AppModel"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger AutoLoggerDiagtrackListener"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger CloudExperienceHost00BE"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOOBE\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger DiagLog"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger NtfsLog"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger ReadyBoot"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger TileStore"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger TPM"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPM\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger UBPM"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger WDIContextLog"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDIContextLog\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger WiFiDriverIHVSession"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger WiFiSession"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }

    Registry "VdiOptimize - disableAutologger WinPhoneCritical"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "0"
    }
}
