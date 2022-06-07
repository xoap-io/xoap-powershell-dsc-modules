<#
.SYNOPSIS
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1809 & Windows Server 2019 1809 Security Baseline (EN)

.DESCRIPTION
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any1809WindowsDefender".
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
Resource Name  : XOAPMsSecBaselineW2k19Any1809WindowsDefender.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any1809WindowsDefender
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\PUAProtection'
    {
        ValueName = 'PUAProtection'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection\DisableBehaviorMonitoring'
    {
        ValueName = 'DisableBehaviorMonitoring'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Real-Time Protection'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Scan\DisableRemovableDriveScanning'
    {
        ValueName = 'DisableRemovableDriveScanning'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Scan'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Scan\DisableEmailScanning'
    {
        ValueName = 'DisableEmailScanning'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Scan'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet\SubmitSamplesConsent'
    {
        ValueName = 'SubmitSamplesConsent'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet\SpynetReporting'
    {
        ValueName = 'SpynetReporting'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Spynet'
        ValueData = 2
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\ExploitGuard_ASR_Rules'
    {
        ValueName = 'ExploitGuard_ASR_Rules'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\75668c1f-73b5-4cf0-bb93-3ecf5cb7cc84'
    {
        ValueName = '75668c1f-73b5-4cf0-bb93-3ecf5cb7cc84'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\3b576869-a4ec-4529-8536-b80a7769e899'
    {
        ValueName = '3b576869-a4ec-4529-8536-b80a7769e899'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\d4f940ab-401b-4efc-aadc-ad5f3c50688a'
    {
        ValueName = 'd4f940ab-401b-4efc-aadc-ad5f3c50688a'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B'
    {
        ValueName = '92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\5beb7efe-fd9a-4556-801d-275e5ffc04cc'
    {
        ValueName = '5beb7efe-fd9a-4556-801d-275e5ffc04cc'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\d3e037e1-3eb8-44c8-a917-57927947596d'
    {
        ValueName = 'd3e037e1-3eb8-44c8-a917-57927947596d'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\be9ba2d9-53ea-4cdc-84e5-9b1eeee46550'
    {
        ValueName = 'be9ba2d9-53ea-4cdc-84e5-9b1eeee46550'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2'
    {
        ValueName = '9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4'
    {
        ValueName = 'b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\26190899-1602-49e8-8b27-eb1d0a1ce869'
    {
        ValueName = '26190899-1602-49e8-8b27-eb1d0a1ce869'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules\7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c'
    {
        ValueName = '7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection\EnableNetworkProtection'
    {
        ValueName = 'EnableNetworkProtection'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection'
        ValueData = 1
    }
}
