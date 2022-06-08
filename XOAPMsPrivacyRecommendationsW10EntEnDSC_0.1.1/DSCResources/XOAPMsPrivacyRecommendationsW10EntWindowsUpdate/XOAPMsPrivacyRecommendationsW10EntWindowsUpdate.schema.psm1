<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows 10 Enterprise (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsPrivacyRecommendationsW10EntWindowsUpdate".​
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
Resource Name  : XOAPMsPrivacyRecommendationsW10EntWindowsUpdate.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
#>
configuration XOAPMsPrivacyRecommendationsW10EntWindowsUpdate
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

    Registry 'DODownloadMode'
    {
        ValueName = 'DODownloadMode'
        ValueType = 'DWORD'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization'
        ValueData = '100'
    }

    Registry 'DoNotConnectToWindowsUpdateInternetLocations'
    {
        ValueName = 'DoNotConnectToWindowsUpdateInternetLocations'
        ValueType = 'DWORD'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        ValueData = '1'
    }

    Registry 'DisableWindowsUpdateAccess'
    {
        ValueName = 'DisableWindowsUpdateAccess'
        ValueType = 'DWORD'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        ValueData = '1'
    }

    Registry 'WUServer'
    {
        ValueName = 'WUServer'
        ValueType = 'String'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        ValueData = ' '
    }

    Registry 'WUStatusServer'
    {
        ValueName = 'WUStatusServer'
        ValueType = 'String'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        ValueData = ' '
    }

    Registry 'UpdateServiceUrlAlternate'
    {
        ValueName = 'UpdateServiceUrlAlternate'
        ValueType = 'String'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        ValueData = ' '
    }

    Registry 'UseWUServer'
    {
        ValueName = 'UseWUServer'
        ValueType = 'DWORD'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        ValueData = '1'
    }

    Registry 'AllowBuildPreview'
    {
        ValueName = 'AllowBuildPreview'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds'
        ValueData = '0'
    }
}
