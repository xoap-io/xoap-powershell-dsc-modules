<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 20H2 and Windows Server 20H2 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW10Ent20H2IE".​
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
Resource Name  : XOAPMsSecBaselineW10Ent20H2IE.schema.psm1
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
configuration XOAPMsSecBaselineW10Ent20H2IE
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

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\Isolation64Bit'
        {
            ValueName = 'Isolation64Bit'
            ValueType = 'Dword'
            Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
            ValueData = 1
        }

        Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Internet Explorer\Main\DisableEPMCompat'
        {
            ValueName = 'DisableEPMCompat'
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
}
