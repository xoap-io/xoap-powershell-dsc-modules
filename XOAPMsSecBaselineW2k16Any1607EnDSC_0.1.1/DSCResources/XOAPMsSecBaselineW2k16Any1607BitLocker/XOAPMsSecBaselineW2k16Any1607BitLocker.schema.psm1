<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1607 & Windows Server 2016 1607 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k16Any1607BitLocker".​
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
Module Name    : XOAPMsSecBaselineW2k16Any1607EnDSC
Resource Name  : XOAPMsSecBaselineW2k16Any1607BitLocker.schema.psm1
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
configuration XOAPMsSecBaselineW2k16Any1607BitLocker
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\SOFTWARE\Policies\Microsoft\FVE\UseEnhancedPin'
    {
        ValueName = 'UseEnhancedPin'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\SOFTWARE\Policies\Microsoft\FVE\OSAllowSecureBootForIntegrity'
    {
        ValueName = 'OSAllowSecureBootForIntegrity'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE'
        ValueData = 1
    }

    Registry 'Registry(POL): HKLM:\SOFTWARE\Policies\Microsoft\FVE\MinimumPIN'
    {
        ValueName = 'MinimumPIN'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE'
        ValueData = 7
    }

    Registry 'Registry(POL): HKLM:\SOFTWARE\Policies\Microsoft\FVE\RDVDenyCrossOrg'
    {
        ValueName = 'RDVDenyCrossOrg'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE'
        ValueData = 0
    }

    Registry 'Registry(POL): HKLM:\SOFTWARE\Policies\Microsoft\FVE\EncryptionMethodWithXtsOs'
    {
        ValueName = 'EncryptionMethodWithXtsOs'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE'
        ValueData = 7
    }

    Registry 'Registry(POL): HKLM:\SOFTWARE\Policies\Microsoft\FVE\EncryptionMethodWithXtsFdv'
    {
        ValueName = 'EncryptionMethodWithXtsFdv'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE'
        ValueData = 7
    }

    Registry 'Registry(POL): HKLM:\SOFTWARE\Policies\Microsoft\FVE\EncryptionMethodWithXtsRdv'
    {
        ValueName = 'EncryptionMethodWithXtsRdv'
        ValueType = 'Dword'
        Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE'
        ValueData = 4
    }

    Registry 'Registry(POL): HKLM:\System\CurrentControlSet\Policies\Microsoft\FVE\RDVDenyWriteAccess'
    {
        ValueName = 'RDVDenyWriteAccess'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Policies\Microsoft\FVE'
        ValueData = 1
    }
}
