<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 1909 and Windows Server 2019 1909 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW10Ent1909MicrosoftEdge".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects.
​
.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​
Powershell Module: AuditPolicyDSC​
Powershell Module: SecurityPolicyDSC​
Powershell Module: PowerShellAccessControl​
Powershell Module: WindowsDefender
​
.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPMsSecBaselineW10Ent1909EnDSC
Resource Name  : XOAPMsSecBaselineW10Ent1909MicrosoftEdge.schema.psm1
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
configuration XOAPMsSecBaselineW10Ent1909MicrosoftEdge
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings\PreventCertErrorOverrides'
    {
        ValueName = 'PreventCertErrorOverrides'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\MicrosoftEdge\Main\FormSuggest Passwords'
    {
        ValueName = 'FormSuggest Passwords'
        ValueType = 'String'
        Key = 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\Main'
        ValueData = 'no'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter\EnabledV9'
    {
        ValueName = 'EnabledV9'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter\PreventOverride'
    {
        ValueName = 'PreventOverride'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
        ValueData = '1'
    }

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter\PreventOverrideAppRepUnknown'
    {
        ValueName = 'PreventOverrideAppRepUnknown'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
        ValueData = '1'
    }
}
