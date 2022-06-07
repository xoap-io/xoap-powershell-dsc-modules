<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1607 & Windows Server 2016 1607 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k16Any1607LSA".​
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
Resource Name  : XOAPMsSecBaselineW2k16Any1607LSA.schema.psm1
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
configuration XOAPMsSecBaselineW2k16Any1607LSA
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\RestrictAnonymousSAM'
    {
        ValueName = 'RestrictAnonymousSAM'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinServerSec'
    {
        ValueName = 'NTLMMinServerSec'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
        ValueData = 537395200
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\EveryoneIncludesAnonymous'
    {
        ValueName = 'EveryoneIncludesAnonymous'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 0
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\RestrictAnonymous'
    {
        ValueName = 'RestrictAnonymous'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\UseMachineId'
    {
        ValueName = 'UseMachineId'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\allownullsessionfallback'
    {
        ValueName = 'allownullsessionfallback'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
        ValueData = 0
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\NoLMHash'
    {
        ValueName = 'NoLMHash'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\LmCompatibilityLevel'
    {
        ValueName = 'LmCompatibilityLevel'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 5
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0\NTLMMinClientSec'
    {
        ValueName = 'NTLMMinClientSec'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\MSV1_0'
        ValueData = 537395200
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\SCENoApplyLegacyAuditPolicy'
    {
        ValueName = 'SCENoApplyLegacyAuditPolicy'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\RestrictRemoteSAM'
    {
        ValueName = 'RestrictRemoteSAM'
        ValueType = 'String'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 'O:BAG:BAD:(A;;RC;;;BA)'
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse'
    {
        ValueName = 'LimitBlankPasswordUse'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\DisableDomainCreds'
    {
        ValueName = 'DisableDomainCreds'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa'
        ValueData = 1
    }

    Registry 'Registry(INF): HKLM:\System\CurrentControlSet\Control\Lsa\pku2u\AllowOnlineID'
    {
        ValueName = 'AllowOnlineID'
        ValueType = 'Dword'
        Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\pku2u'
        ValueData = 0
    }
}
