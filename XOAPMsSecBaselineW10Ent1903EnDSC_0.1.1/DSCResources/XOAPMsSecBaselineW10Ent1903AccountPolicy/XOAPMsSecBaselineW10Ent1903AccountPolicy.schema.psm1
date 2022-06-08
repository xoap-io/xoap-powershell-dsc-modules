<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 1903 and Windows Server 2019 1903 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW10Ent1903AccountPolicy".​
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
Module Name    : XOAPMsSecBaselineW10Ent1903EnDSC
Resource Name  : XOAPMsSecBaselineW10Ent1903AccountPolicy.schema.psm1
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
configuration XOAPMsSecBaselineW10Ent1903AccountPolicy
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    AccountPolicy 'SecuritySetting(INF): LockoutBadCount'
    {
        Name = 'Account_lockout_threshold'
        Account_lockout_threshold = 10
    }

    AccountPolicy 'SecuritySetting(INF): ResetLockoutCount'
    {
        Reset_account_lockout_counter_after = 15
        Name = 'Reset_account_lockout_counter_after'
    }

    AccountPolicy 'SecuritySetting(INF): PasswordComplexity'
    {
        Name = 'Password_must_meet_complexity_requirements'
        Password_must_meet_complexity_requirements = 'Enabled'
    }

    AccountPolicy 'SecuritySetting(INF): LockoutDuration'
    {
        Name = 'Account_lockout_duration'
        Account_lockout_duration = 15
    }

    AccountPolicy 'SecuritySetting(INF): PasswordHistorySize'
    {
        Name = 'Enforce_password_history'
        Enforce_password_history = 24
    }

    AccountPolicy 'SecuritySetting(INF): ClearTextPassword'
    {
        Name = 'Store_passwords_using_reversible_encryption'
        Store_passwords_using_reversible_encryption = 'Disabled'
    }

    AccountPolicy 'SecuritySetting(INF): MinimumPasswordLength'
    {
        Name = 'Minimum_Password_Length'
        Minimum_Password_Length = 14
    }
}
