<#
.SYNOPSIS
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1809 & Windows Server 2019 1809 Security Baseline (EN)

.DESCRIPTION
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any1809WindowsFirewall".
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,
and apply them via a domain controller or inject them directly into testbed hosts to test their effects.

.COMPONENT
Information about PowerShell Modules to be required.
Powershell Module: PSDesiredStateConfiguration
Powershell Module: AuditPolicyDSC
Powershell Module: SecurityPolicyDSC
Powershell Module: PowerShellAccessControl
Powershell Module: WindowsDefender

.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPMsSecBaselineW2k19Any1809EnDSC
Resource Name  : XOAPMsSecBaselineW2k19Any1809WindowsFirewall.schema.psm1
Author         : info@XOAP.io

.LINK
https://www.microsoft.com/en-us/download/details.aspx?id=55319

.LINK
https://www.powershellgallery.com/packages/BaselineManagement/2.9.0

.LINK
https://gallery.technet.microsoft.com/scriptcenter/PowerShellAccessControl-d3be7b83

.LINK
https://www.powershellgallery.com/packages/WindowsDefender/1.0.0.4
#>
configuration XOAPMsSecBaselineW2k19Any1809WindowsFirewall
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PolicyVersion'
    {
        ValueName = 'PolicyVersion'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall'
        ValueData = 538
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultOutboundAction'
    {
        ValueName = 'DefaultOutboundAction'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
        ValueData = 0
    }

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DisableNotifications'
    {
        ValueName = 'DisableNotifications'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
        ValueData = 1
    }#>

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\EnableFirewall'
    {
        ValueName = 'EnableFirewall'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\DefaultInboundAction'
    {
        ValueName = 'DefaultInboundAction'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile'
        ValueData = 1
    }

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging\LogDroppedPackets'
    {
        ValueName = 'LogDroppedPackets'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging'
        ValueData = 1
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging\LogFileSize'
    {
        ValueName = 'LogFileSize'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging'
        ValueData = 16384
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging\LogSuccessfulConnections'
    {
        ValueName = 'LogSuccessfulConnections'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging'
        ValueData = 1
    }#>

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\EnableFirewall'
    {
        ValueName = 'EnableFirewall'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
        ValueData = 1
    }

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DisableNotifications'
    {
        ValueName = 'DisableNotifications'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
        ValueData = 1
    }#>

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultInboundAction'
    {
        ValueName = 'DefaultInboundAction'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\DefaultOutboundAction'
    {
        ValueName = 'DefaultOutboundAction'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile'
        ValueData = 0
    }

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging\LogSuccessfulConnections'
    {
        ValueName = 'LogSuccessfulConnections'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging'
        ValueData = 1
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging\LogDroppedPackets'
    {
        ValueName = 'LogDroppedPackets'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging'
        ValueData = 1
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging\LogFileSize'
    {
        ValueName = 'LogFileSize'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging'
        ValueData = 16384
    }#>

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultOutboundAction'
    {
        ValueName = 'DefaultOutboundAction'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\EnableFirewall'
    {
        ValueName = 'EnableFirewall'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
        ValueData = 1
    }

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DisableNotifications'
    {
        ValueName = 'DisableNotifications'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
        ValueData = 1
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalIPsecPolicyMerge'
    {
        ValueName = 'AllowLocalIPsecPolicyMerge'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
        ValueData = 0
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\AllowLocalPolicyMerge'
    {
        ValueName = 'AllowLocalPolicyMerge'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
        ValueData = 0
    }#>

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\DefaultInboundAction'
    {
        ValueName = 'DefaultInboundAction'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile'
        ValueData = 1
    }

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging\LogFileSize'
    {
        ValueName = 'LogFileSize'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging'
        ValueData = 16384
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging\LogDroppedPackets'
    {
        ValueName = 'LogDroppedPackets'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging'
        ValueData = 1
    }#>

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging\LogSuccessfulConnections'
    {
        ValueName = 'LogSuccessfulConnections'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging'
        ValueData = 1
    }#>
}
