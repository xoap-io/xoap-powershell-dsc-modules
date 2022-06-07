<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent1903ServicesDisable".​
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
Resource Name  : XOAPVdiOptimizeW10Ent1903ServicesDisable.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent1903ServicesDisable
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry "VdiOptimize - disable autotimesvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\autotimesvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable BcastDVRUserService"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\BcastDVRUserService\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable AppModel"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\CDPSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable CDPUserSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\CDPUserSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable defragsvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\defragsvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable DiagSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\DiagSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable DiagTrack"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\DiagTrack\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable DPS"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\DPS\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable DsmSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\DsmSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable DusmSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\DusmSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable icssvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\icssvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable InstallService"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\InstallService\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable lfsvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable MapsBroker"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\MapsBroker\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable MessagingService"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\MessagingService\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable OneSyncSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\OneSyncSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable PimIndexMaintenanceSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable Power"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\Power\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable SEMgrSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\SEMgrSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable SmsRouter"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\SmsRouter\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable SysMain"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\SysMain\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable TabletInputService"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\TabletInputService\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable UsoSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\UsoSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable VSS"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\VSS\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable WaaSMedicSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable WdiSystemHost"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\WdiSystemHost\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable WerSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\WerSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable WMPNetworkSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable WSearch"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\WSearch\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable XblAuthManager"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\XblAuthManager\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable XblGameSave"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\XblGameSave\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable XboxGipSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\XboxGipSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }

    Registry "VdiOptimize - disable XboxNetApiSvc"
    {
        Key = "HKLM:\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc\"
        ValueName = "Start"
        ValueType = "DWORD"
        ValueData = "4"
    }
}
