<#
.SYNOPSIS
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1809 & Windows Server 2019 1809 Security Baseline (EN)

.DESCRIPTION
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any1809ActiveX".
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
Resource Name  : XOAPMsSecBaselineW2k19Any1809ActiveX.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any1809ActiveX
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext\RunThisTimeEnabled'
    {
        ValueName = 'RunThisTimeEnabled'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext\VersionCheckEnabled'
    {
        ValueName = 'VersionCheckEnabled'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Ext'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Download\RunInvalidSignatures'
    {
        ValueName = 'RunInvalidSignatures'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Download'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\DisableEPMCompat'
    {
        ValueName = 'DisableEPMCompat'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Security\ActiveX\BlockNonAdminActiveXInstall'
    {
        ValueName = 'BlockNonAdminActiveXInstall'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Security\ActiveX'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\AxInstaller\OnlyUseAXISForActiveXInstall'
    {
        ValueName = 'OnlyUseAXISForActiveXInstall'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\AxInstaller'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\270C'
    {
        ValueName = '270C'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\270C'
    {
        ValueName = '270C'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1201'
    {
        ValueName = '1201'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2\270C'
    {
        ValueName = '270C'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2\1201'
    {
        ValueName = '1201'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201'
    {
        ValueName = '1201'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1406'
    {
        ValueName = '1406'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1209'
    {
        ValueName = '1209'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1001'
    {
        ValueName = '1001'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004'
    {
        ValueName = '1004'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\120b'
    {
        ValueName = '120b'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\270C'
    {
        ValueName = '270C'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\120c'
    {
        ValueName = '120c'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1201'
    {
        ValueName = '1201'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1001'
    {
        ValueName = '1001'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\120b'
    {
        ValueName = '120b'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1004'
    {
        ValueName = '1004'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1406'
    {
        ValueName = '1406'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2000'
    {
        ValueName = '2000'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1209'
    {
        ValueName = '1209'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\270C'
    {
        ValueName = '270C'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1405'
    {
        ValueName = '1405'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1200'
    {
        ValueName = '1200'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\120c'
    {
        ValueName = '120c'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }
}
