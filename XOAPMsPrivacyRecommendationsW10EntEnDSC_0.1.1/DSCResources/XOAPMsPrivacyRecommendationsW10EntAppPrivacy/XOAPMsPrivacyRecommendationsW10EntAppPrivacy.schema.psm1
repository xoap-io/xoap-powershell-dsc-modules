<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows 10 Enterprise (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsPrivacyRecommendationsW10EntAppPrivacy".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​

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
Resource Name  : XOAPMsPrivacyRecommendationsW10EntAppPrivacy.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
#>
configuration XOAPMsPrivacyRecommendationsW10EntAppPrivacy
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

    Registry 'LetAppsAccessLocation'
    {
        ValueName = 'LetAppsAccessLocation'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessCamera'
    {
        ValueName = 'LetAppsAccessCamera'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessMicrophone'
    {
        ValueName = 'LetAppsAccessMicrophone'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessNotifications'
    {
        ValueName = 'LetAppsAccessNotifications'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessAccountInfo'
    {
        ValueName = 'LetAppsAccessAccountInfo'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessContacts'
    {
        ValueName = 'LetAppsAccessContacts'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessCalendar'
    {
        ValueName = 'LetAppsAccessCalendar'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessCallHistory'
    {
        ValueName = 'LetAppsAccessCallHistory'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessEmail'
    {
        ValueName = 'LetAppsAccessEmail'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessMessaging'
    {
        ValueName = 'LetAppsAccessMessaging'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessPhone'
    {
        ValueName = 'LetAppsAccessPhonec'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessRadios'
    {
        ValueName = 'LetAppsAccessRadios'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsSyncWithDevices'
    {
        ValueName = 'LetAppsSyncWithDevices'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessTrustedDevices'
    {
        ValueName = 'LetAppsAccessTrustedDevices'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsRunInBackground'
    {
        ValueName = 'LetAppsRunInBackground'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessMotion'
    {
        ValueName = 'LetAppsAccessMotion'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsAccessTasks'
    {
        ValueName = 'LetAppsAccessTasks'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsGetDiagnosticInfo'
    {
        ValueName = 'LetAppsGetDiagnosticInfo'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsActivateWithVoice'
    {
        ValueName = 'LetAppsActivateWithVoice'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }

    Registry 'LetAppsActivateWithVoiceAboveLock'
    {
        ValueName = 'LetAppsActivateWithVoiceAboveLock'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy'
        ValueData = '2'
    }
}
