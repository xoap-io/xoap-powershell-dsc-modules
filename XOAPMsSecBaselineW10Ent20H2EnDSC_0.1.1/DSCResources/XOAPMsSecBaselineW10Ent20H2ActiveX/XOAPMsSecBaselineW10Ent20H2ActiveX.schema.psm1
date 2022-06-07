<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 20H2 and Windows Server 20H2 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW10Ent20H2ActiveX".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​

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
Module Name    : XOAPMsSecBaselineW10Ent20H2EnDSC
Resource Name  : XOAPMsSecBaselineW10Ent20H2ActiveX.schema.psm1
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
configuration XOAPMsSecBaselineW10Ent20H2ActiveX
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Download\CheckExeSignatures'
        {
            ValueName = 'CheckExeSignatures'
            ValueType = 'String'
            Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Download'
            ValueData = 'yes'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\WarnOnBadCertRecving'
        {
            ValueName = 'WarnOnBadCertRecving'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
            ValueData = 1
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\EnableSSL3Fallback'
        {
            ValueName = 'EnableSSL3Fallback'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
            ValueData = 0
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\SecureProtocols'
        {
            ValueName = 'SecureProtocols'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings'
            ValueData = 2560
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1209'
        {
            ValueName = '1209'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1001'
        {
            ValueName = '1001'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
            ValueData = 3
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\270C'
        {
            ValueName = '270C'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\120c'
        {
            ValueName = '120c'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
            ValueData = 3
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\140C'
        {
            ValueName = '140C'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3'
            ValueData = 3
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1608'
        {
            ValueName = '1608'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1607'
        {
            ValueName = '1607'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1809'
        {
            ValueName = '1809'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
            ValueData = 0
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1004'
        {
            ValueName = '1004'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
            ValueData = 3
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1406'
        {
            ValueName = '1406'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\2000'
        {
            ValueName = '2000'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1405'
        {
            ValueName = '1405'
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1200'
        {
            ValueName = '1200'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
            ValueData = 3
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\120c'
        {
            ValueName = '120c'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
            ValueData = 3
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\140C'
        {
            ValueName = '140C'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4'
            ValueData = 3
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows\AxInstaller\OnlyUseAXISForActiveXInstall'
        {
            ValueName = 'OnlyUseAXISForActiveXInstall'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Windows\AxInstaller'
            ValueData = 1
        }

}
