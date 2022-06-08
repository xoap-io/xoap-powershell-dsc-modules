<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows 10 Enterprise (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsPrivacyRecommendationsW10EntSynchronization".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​
​
.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​
​
.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPMsPrivacyRecommendationsW10EntW10EntEnDSC
Resource Name  : XOAPMsPrivacyRecommendationsW10EntSynchronization.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
#>
configuration XOAPMsPrivacyRecommendationsW10EntSynchronization
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

    Registry 'MailSync'
    {
        ValueName = 'ManualLaunchAllowed'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Mail'
        ValueData = '0'
    }

    Registry 'AllowMessageSync'
    {
        ValueName = 'AllowMessageSync'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Messaging'
        ValueData = '0'
    }

    Registry 'DisableSettingSync'
    {
        ValueName = 'DisableSettingSync'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync'
        ValueData = '2'
    }

    Registry 'DisableSettingSyncUserOverride'
    {
        ValueName = 'DisableSettingSyncUserOverride'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync'
        ValueData = '1'
    }
}
