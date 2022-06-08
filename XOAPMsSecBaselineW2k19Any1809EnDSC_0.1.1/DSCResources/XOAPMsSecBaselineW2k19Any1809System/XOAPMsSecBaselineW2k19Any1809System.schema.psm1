<#
.SYNOPSIS
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1809 & Windows Server 2019 1809 Security Baseline (EN)

.DESCRIPTION
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any1809System".
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
Resource Name  : XOAPMsSecBaselineW2k19Any1809System.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any1809System
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableAutomaticRestartSignOn'
    {
        ValueName = 'DisableAutomaticRestartSignOn'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\LocalAccountTokenFilterPolicy'
    {
        ValueName = 'LocalAccountTokenFilterPolicy'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 0
    }

    <#Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\MSAOptional'
    {
        ValueName = 'MSAOptional'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 1
    }#>

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableInstallerDetection'
    {
        ValueName = 'EnableInstallerDetection'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableSecureUIAPaths'
    {
        ValueName = 'EnableSecureUIAPaths'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorUser'
    {
        ValueName = 'ConsentPromptBehaviorUser'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 0
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin'
    {
        ValueName = 'ConsentPromptBehaviorAdmin'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 2
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA'
    {
        ValueName = 'EnableLUA'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableUIADesktopToggle'
    {
        ValueName = 'EnableUIADesktopToggle'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 0
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableVirtualization'
    {
        ValueName = 'EnableVirtualization'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\FilterAdministratorToken'
    {
        ValueName = 'FilterAdministratorToken'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\InactivityTimeoutSecs'
    {
        ValueName = 'InactivityTimeoutSecs'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
        ValueData = 900
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\System\DontDisplayNetworkSelectionUI'
    {
        ValueName = 'DontDisplayNetworkSelectionUI'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\System'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\System\EnumerateLocalUsers'
    {
        ValueName = 'EnumerateLocalUsers'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\System'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\System\EnableSmartScreen'
    {
        ValueName = 'EnableSmartScreen'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\System'
        ValueData = 1
    }

    <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\System\AllowDomainPINLogon'
    {
        ValueName = 'AllowDomainPINLogon'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\System'
        ValueData = 0
    }#>
}
