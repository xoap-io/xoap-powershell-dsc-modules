<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 20H2 and Windows Server 20H2 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW10Ent20H2AuditPolicySubcategory".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​

.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​
Powershell Module: AuditPolicyDSC​
Powershell Module: SecurityPolicyDSC​
Powershell Module: PowerShellAccessControl​
​Powershell Module: WindowsDefender

.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPMsSecBaselineW10Ent20H2EnDSC
Resource Name  : XOAPMsSecBaselineW10Ent20H2AuditPolicySubcategory.schema.psm1
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
configuration XOAPMsSecBaselineW10Ent20H2AuditPolicySubcategory
{

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

        AuditPolicySubcategory 'Audit Credential Validation (Success) - Inclusion'
        {
            Name = 'Credential Validation'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Credential Validation (Failure) - Inclusion'
        {
            Name = 'Credential Validation'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Security Group Management (Success) - Inclusion'
        {
            Name = 'Security Group Management'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Security Group Management (Failure) - Inclusion'
        {
            Name = 'Security Group Management'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit User Account Management (Success) - Inclusion'
        {
            Name = 'User Account Management'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit User Account Management (Failure) - Inclusion'
        {
            Name = 'User Account Management'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit PNP Activity (Success) - Inclusion'
        {
            Name = 'Plug and Play Events'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit PNP Activity (Failure) - Inclusion'
        {
            Name = 'Plug and Play Events'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Process Creation (Success) - Inclusion'
        {
            Name = 'Process Creation'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Process Creation (Failure) - Inclusion'
        {
            Name = 'Process Creation'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Account Lockout (Failure) - Inclusion'
        {
            Name = 'Account Lockout'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Account Lockout (Success) - Inclusion'
        {
            Name = 'Account Lockout'
            Ensure = 'Absent'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Group Membership (Success) - Inclusion'
        {
            Name = 'Group Membership'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Group Membership (Failure) - Inclusion'
        {
            Name = 'Group Membership'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Logon (Success) - Inclusion'
        {
            Name = 'Logon'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Logon (Failure) - Inclusion'
        {
            Name = 'Logon'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Other Logon/Logoff Events (Success) - Inclusion'
        {
            Name = 'Other Logon/Logoff Events'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Other Logon/Logoff Events (Failure) - Inclusion'
        {
            Name = 'Other Logon/Logoff Events'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Special Logon (Success) - Inclusion'
        {
            Name = 'Special Logon'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Special Logon (Failure) - Inclusion'
        {
            Name = 'Special Logon'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Detailed File Share (Failure) - Inclusion'
        {
            Name = 'Detailed File Share'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Detailed File Share (Success) - Inclusion'
        {
            Name = 'Detailed File Share'
            Ensure = 'Absent'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit File Share (Success) - Inclusion'
        {
            Name = 'File Share'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit File Share (Failure) - Inclusion'
        {
            Name = 'File Share'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Other Object Access Events (Success) - Inclusion'
        {
            Name = 'Other Object Access Events'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Other Object Access Events (Failure) - Inclusion'
        {
            Name = 'Other Object Access Events'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Removable Storage (Success) - Inclusion'
        {
            Name = 'Removable Storage'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Removable Storage (Failure) - Inclusion'
        {
            Name = 'Removable Storage'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Audit Policy Change (Success) - Inclusion'
        {
            Name = 'Audit Policy Change'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Audit Policy Change (Failure) - Inclusion'
        {
            Name = 'Audit Policy Change'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Authentication Policy Change (Success) - Inclusion'
        {
            Name = 'Authentication Policy Change'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Authentication Policy Change (Failure) - Inclusion'
        {
            Name = 'Authentication Policy Change'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit MPSSVC Rule-Level Policy Change (Success) - Inclusion'
        {
            Name = 'MPSSVC Rule-Level Policy Change'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit MPSSVC Rule-Level Policy Change (Failure) - Inclusion'
        {
            Name = 'MPSSVC Rule-Level Policy Change'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Other Policy Change Events (Failure) - Inclusion'
        {
            Name = 'Other Policy Change Events'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Other Policy Change Events (Success) - Inclusion'
        {
            Name = 'Other Policy Change Events'
            Ensure = 'Absent'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Sensitive Privilege Use (Success) - Inclusion'
        {
            Name = 'Sensitive Privilege Use'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Sensitive Privilege Use (Failure) - Inclusion'
        {
            Name = 'Sensitive Privilege Use'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Other System Events (Success) - Inclusion'
        {
            Name = 'Other System Events'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Other System Events (Failure) - Inclusion'
        {
            Name = 'Other System Events'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Security State Change (Success) - Inclusion'
        {
            Name = 'Security State Change'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Security State Change (Failure) - Inclusion'
        {
            Name = 'Security State Change'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit Security System Extension (Success) - Inclusion'
        {
            Name = 'Security System Extension'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit Security System Extension (Failure) - Inclusion'
        {
            Name = 'Security System Extension'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }

        AuditPolicySubcategory 'Audit System Integrity (Success) - Inclusion'
        {
            Name = 'System Integrity'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }

        AuditPolicySubcategory 'Audit System Integrity (Failure) - Inclusion'
        {
            Name = 'System Integrity'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }

        <#AuditPolicySubcategory 'Audit Kerberos Authentication Service (Success) - Inclusion'
        {
            Name = 'Kerberos Authentication Service'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }#>

        <#AuditPolicySubcategory 'Audit Kerberos Authentication Service (Failure) - Inclusion'
        {
            Name = 'Kerberos Authentication Service'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }#>

        <#AuditPolicySubcategory 'Audit Kerberos Service Ticket Operations (Failure) - Inclusion'
        {
            Name = 'Kerberos Service Ticket Operations'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }#>

        <#AuditPolicySubcategory 'Audit Kerberos Service Ticket Operations (Success) - Inclusion'
        {
            Name = 'Kerberos Service Ticket Operations'
            Ensure = 'Absent'
            AuditFlag = 'Success'
        }#>

        <#AuditPolicySubcategory 'Audit Computer Account Management (Success) - Inclusion'
        {
            Name = 'Computer Account Management'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }#>

        <#AuditPolicySubcategory 'Audit Computer Account Management (Failure) - Inclusion'
        {
            Name = 'Computer Account Management'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }#>

        <#AuditPolicySubcategory 'Audit Other Account Management Events (Success) - Inclusion'
        {
            Name = 'Other Account Management Events'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }#>

        <#AuditPolicySubcategory 'Audit Other Account Management Events (Failure) - Inclusion'
        {
            Name = 'Other Account Management Events'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }#>

        <#AuditPolicySubcategory 'Audit Directory Service Access (Failure) - Inclusion'
        {
            Name = 'Directory Service Access'
            Ensure = 'Present'
            AuditFlag = 'Failure'
        }#>

        <#AuditPolicySubcategory 'Audit Directory Service Access (Success) - Inclusion'
        {
            Name = 'Directory Service Access'
            Ensure = 'Absent'
            AuditFlag = 'Success'
        }#>

        <#AuditPolicySubcategory 'Audit Directory Service Changes (Success) - Inclusion'
        {
            Name = 'Directory Service Changes'
            Ensure = 'Present'
            AuditFlag = 'Success'
        }#>

        <#AuditPolicySubcategory 'Audit Directory Service Changes (Failure) - Inclusion'
        {
            Name = 'Directory Service Changes'
            Ensure = 'Absent'
            AuditFlag = 'Failure'
        }#>
}
