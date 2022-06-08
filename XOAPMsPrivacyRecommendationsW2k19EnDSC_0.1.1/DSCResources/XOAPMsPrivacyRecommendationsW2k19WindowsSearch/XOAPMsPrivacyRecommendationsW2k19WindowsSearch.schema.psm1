<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows Server 2019 (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsPrivacyRecommendationsW2k19WindowsSearch".​
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
Module Name    : XOAPMsPrivacyRecommendationsW2k19EnDSC
Resource Name  : XOAPMsPrivacyRecommendationsW2k19WindowsSearch.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
#>
configuration XOAPMsPrivacyRecommendationsW2k19WindowsSearch
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

    Registry 'AllowCortana'
    {
        ValueName = 'AllowCortana'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\Windows Search'
        ValueData = 0
    }

    Registry 'AllowSearchToUseLocation'
    {
        ValueName = 'AllowSearchToUseLocation'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\Windows Search'
        ValueData = 0
    }

    Registry 'DisableWebSearch'
    {
        ValueName = 'DisableWebSearch'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\Windows Search'
        ValueData = 1
    }

    Registry 'ConnectedSearchUseWeb'
    {
        ValueName = 'ConnectedSearchUseWeb'
        ValueType = 'Dword'
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\Windows Search'
        ValueData = 0
    }
}
