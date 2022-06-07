<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows 10 Enterprise (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsPrivacyRecommendationsW10EntMicrosoftEdge".​
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
Resource Name  : XOAPMsPrivacyRecommendationsW10EntMicrosoftEdge.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
#>
configuration XOAPMsPrivacyRecommendationsW10EntMicrosoftEdge
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

    Registry 'DropDownSuggestions'
    {
        ValueName = 'ShowOneNox'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI'
        ValueData = '0'
    }

    Registry 'AllowConfigurationUpdateForBooksLibrary'
    {
        ValueName = 'AllowConfigurationUpdateForBooksLibrary'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BooksLibrary'
        ValueData = '0'
    }

    Registry 'Use FormSuggest'
    {
        ValueName = 'Use FormSuggest'
        ValueType = 'String'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
        ValueData = 'No'
    }

    Registry 'DoNotTrack'
    {
        ValueName = 'DoNotTrack'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
        ValueData = '1'
    }

    Registry 'FormSuggest Passwords'
    {
        ValueName = 'FormSuggest Passwords'
        ValueType = 'String'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
        ValueData = 'No'
    }

    Registry 'ShowSearchSuggestionsGlobal'
    {
        ValueName = 'ShowSearchSuggestionsGlobal'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\SearchScopes'
        ValueData = '0'
    }

    Registry 'EdgeWindowsDefenderSmartScreen'
    {
        ValueName = 'EnabledV9'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
        ValueData = '0'
    }

    Registry 'AllowWebContentOnNewTabPage'
    {
        ValueName = 'AllowWebContentOnNewTabPage'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI'
        ValueData = '0'
    }

    Registry 'ProvisionedHomePages'
    {
        ValueName = 'ProvisionedHomePages'
        ValueType = 'String'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings'
        ValueData = 'about:blank'
    }

    Registry 'PreventFirstRunPage'
    {
        ValueName = 'PreventFirstRunPage'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
        ValueData = '1'
    }

    Registry 'MSCompatibilityMod'
    {
        ValueName = 'MSCompatibilityMod'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BrowserEmulation'
        ValueData = '0'
    }
}
