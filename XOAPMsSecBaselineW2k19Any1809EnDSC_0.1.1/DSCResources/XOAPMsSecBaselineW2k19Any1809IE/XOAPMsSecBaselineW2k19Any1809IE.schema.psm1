<#
.SYNOPSIS
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1809 & Windows Server 2019 1809 Security Baseline (EN)

.DESCRIPTION
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any1809IE".
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
Resource Name  : XOAPMsSecBaselineW2k19Any1809IE.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any1809IE
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Feeds\DisableEnclosureDownload'
    {
        ValueName = 'DisableEnclosureDownload'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Feeds'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Download\CheckExeSignatures'
    {
        ValueName = 'CheckExeSignatures'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Download'
        ValueData = 'yes'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\Isolation64Bit'
    {
        ValueName = 'Isolation64Bit'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\Isolation'
    {
        ValueName = 'Isolation'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
        ValueData = 'PMEM'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_DISABLE_MK_PROTOCOL'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_HANDLING'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MIME_SNIFFING'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SECURITYBAND'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\(Reserved)'
    {
        ValueName = '(Reserved)'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\explorer.exe'
    {
        ValueName = 'explorer.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\iexplore.exe'
    {
        ValueName = 'iexplore.exe'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter\PreventOverrideAppRepUnknown'
    {
        ValueName = 'PreventOverrideAppRepUnknown'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter\PreventOverride'
    {
        ValueName = 'PreventOverride'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter\EnabledV9'
    {
        ValueName = 'EnabledV9'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\PhishingFilter'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoCrashDetection'
    {
        ValueName = 'NoCrashDetection'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Restrictions'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Security\DisableSecuritySettingsCheck'
    {
        ValueName = 'DisableSecuritySettingsCheck'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Security'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\CertificateRevocation'
    {
        ValueName = 'CertificateRevocation'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\PreventIgnoreCertErrors'
    {
        ValueName = 'PreventIgnoreCertErrors'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Security_zones_map_edit'
    {
        ValueName = 'Security_zones_map_edit'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Security_options_edit'
    {
        ValueName = 'Security_options_edit'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Security_HKLM_only'
    {
        ValueName = 'Security_HKLM_only'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\WarnOnBadCertRecving'
    {
        ValueName = 'WarnOnBadCertRecving'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\SecureProtocols'
    {
        ValueName = 'SecureProtocols'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 2560
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\EnableSSL3Fallback'
    {
        ValueName = 'EnableSSL3Fallback'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3\2301'
    {
        ValueName = '2301'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4\2301'
    {
        ValueName = '2301'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\UNCAsIntranet'
    {
        ValueName = 'UNCAsIntranet'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1'
        ValueData = 65536
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'
        ValueData = 65536
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2001'
    {
        ValueName = '2001'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2102'
    {
        ValueName = '2102'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1802'
    {
        ValueName = '1802'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\160A'
    {
        ValueName = '160A'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1804'
    {
        ValueName = '1804'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2200'
    {
        ValueName = '2200'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1206'
    {
        ValueName = '1206'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1809'
    {
        ValueName = '1809'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2500'
    {
        ValueName = '2500'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2103'
    {
        ValueName = '2103'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1606'
    {
        ValueName = '1606'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2402'
    {
        ValueName = '2402'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2004'
    {
        ValueName = '2004'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1A00'
    {
        ValueName = '1A00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 65536
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2708'
    {
        ValueName = '2708'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1407'
    {
        ValueName = '1407'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1409'
    {
        ValueName = '1409'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1607'
    {
        ValueName = '1607'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2709'
    {
        ValueName = '2709'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2101'
    {
        ValueName = '2101'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\2301'
    {
        ValueName = '2301'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1806'
    {
        ValueName = '1806'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1608'
    {
        ValueName = '1608'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1607'
    {
        ValueName = '1607'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1809'
    {
        ValueName = '1809'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1606'
    {
        ValueName = '1606'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1407'
    {
        ValueName = '1407'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\160A'
    {
        ValueName = '160A'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2102'
    {
        ValueName = '2102'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2004'
    {
        ValueName = '2004'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2200'
    {
        ValueName = '2200'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1402'
    {
        ValueName = '1402'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1803'
    {
        ValueName = '1803'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2402'
    {
        ValueName = '2402'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1400'
    {
        ValueName = '1400'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1A00'
    {
        ValueName = '1A00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 196608
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2001'
    {
        ValueName = '2001'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2500'
    {
        ValueName = '2500'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1409'
    {
        ValueName = '1409'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1C00'
    {
        ValueName = '1C00'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1206'
    {
        ValueName = '1206'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2708'
    {
        ValueName = '2708'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1802'
    {
        ValueName = '1802'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2103'
    {
        ValueName = '2103'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2709'
    {
        ValueName = '2709'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2101'
    {
        ValueName = '2101'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2301'
    {
        ValueName = '2301'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1804'
    {
        ValueName = '1804'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1806'
    {
        ValueName = '1806'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\140C'
    {
        ValueName = '140C'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
        ValueData = 3
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\140C'
    {
        ValueName = '140C'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
        ValueData = 3
    }
}
