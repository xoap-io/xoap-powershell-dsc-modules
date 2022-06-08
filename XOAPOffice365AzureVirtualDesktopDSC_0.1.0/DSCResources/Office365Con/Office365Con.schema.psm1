<#
.SYNOPSIS​
This DSC Module will configure the necessary points in order to install Office365 ProPlus, OneDrive on a master virtual hard disk.
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "Office365Conf".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​

.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​

.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPOffice365WindowsVirtualDesktopDSC
Resource Name  : Office365Conf.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/azure/virtual-desktop/install-office-on-wvd-master-image
​
#>
configuration Office365Con
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'

    Registry 'Set the Office Update UI behavior 1'
    {
        Key = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\office\16.0\common\officeupdate'
        Ensure = 'Present'
        ValueName = 'hideupdatenotifications'
        ValueType = 'DWord'
        ValueData = '1'
    }

    Registry 'Set the Office Update UI behavior 2'
    {
        Key = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\office\16.0\common\officeupdate'
        Ensure = 'Present'
        ValueName = 'hideenabledisableupdates'
        ValueType = 'DWord'
        ValueData = '1'
    }

    Registry 'Set AllUsersInstall Registry'
    {
        Key = 'HKEY_LOCAL_MACHINE\Software\Microsoft\OneDrive'
        Ensure = 'Present'
        ValueName = 'AllUsersInstall'
        ValueType = 'DWord'
        ValueData = '1'
    }

    Registry 'Start OneDrive at sign in'
    {
        Key = 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run'
        Ensure = 'Present'
        ValueName = 'OneDrive'
        ValueType = 'String'
        ValueData = 'C:\Program Files (x86)\Microsoft OneDrive\OneDrive.exe /background'
    }

    Registry 'Silently configure user account'
    {
        Key = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\OneDrive'
        Ensure = 'Present'
        ValueName = 'SilentAccountConfig'
        ValueType = 'Dword'
        ValueData = '1'
    }

    Registry 'Redirect and move Windows known folders to OneDrive'
    {
        Key = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\OneDrive'
        Ensure = 'Present'
        ValueName = 'KFMSilentOptIn'
        ValueType = 'String'
        ValueData = '<your-AzureAdTenantId>'
    }
}
