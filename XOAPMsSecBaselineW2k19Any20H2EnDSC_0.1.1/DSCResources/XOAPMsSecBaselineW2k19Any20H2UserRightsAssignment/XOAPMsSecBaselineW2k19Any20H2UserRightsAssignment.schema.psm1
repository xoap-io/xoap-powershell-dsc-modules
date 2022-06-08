<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 20H2 and Windows Server 20H2 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any20H2UserRightsAssignment".​
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
Module Name    : XOAPMsSecBaselineW2k19Any20H2EnDSC
Resource Name  : XOAPMsSecBaselineW2k19Any20H2UserRightsAssignment.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any20H2UserRightsAssignment
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

        UserRightsAssignment 'UserRightsAssignment(INF): Access_Credential_Manager_as_a_trusted_caller'
        {
            Policy = 'Access_Credential_Manager_as_a_trusted_caller'
            Force = $True
            Identity = @('')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Access_this_computer_from_the_network'
        {
            Policy = 'Access_this_computer_from_the_network'
            Force = $True
            Identity = @('*S-1-5-11', '*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Act_as_part_of_the_operating_system'
        {
            Policy = 'Act_as_part_of_the_operating_system'
            Force = $True
            Identity = @('')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Allow_log_on_locally'
        {
            Policy = 'Allow_log_on_locally'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Deny_access_to_this_computer_from_the_network'
        {
            Policy = 'Deny_access_to_this_computer_from_the_network'
            Force = $True
            Identity = @('*S-1-5-114')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Back_up_files_and_directories'
        {
            Policy = 'Back_up_files_and_directories'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Create_a_pagefile'
        {
            Policy = 'Create_a_pagefile'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Create_a_token_object'
        {
            Policy = 'Create_a_token_object'
            Force = $True
            Identity = @('')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Create_global_objects'
        {
            Policy = 'Create_global_objects'
            Force = $True
            Identity = @('*S-1-5-20', '*S-1-5-19', '*S-1-5-6', '*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Create_permanent_shared_objects'
        {
            Policy = 'Create_permanent_shared_objects'
            Force = $True
            Identity = @('')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Debug_programs'
        {
            Policy = 'Debug_programs'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Deny_log_on_through_Remote_Desktop_Services'
        {
            Policy = 'Deny_log_on_through_Remote_Desktop_Services'
            Force = $True
            Identity = @('*S-1-5-113')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
        {
            Policy = 'Enable_computer_and_user_accounts_to_be_trusted_for_delegation'
            Force = $True
            Identity = @('')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Force_shutdown_from_a_remote_system'
        {
            Policy = 'Force_shutdown_from_a_remote_system'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Impersonate_a_client_after_authentication'
        {
            Policy = 'Impersonate_a_client_after_authentication'
            Force = $True
            Identity = @('*S-1-5-6', '*S-1-5-19', '*S-1-5-20', '*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Load_and_unload_device_drivers'
        {
            Policy = 'Load_and_unload_device_drivers'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Lock_pages_in_memory'
        {
            Policy = 'Lock_pages_in_memory'
            Force = $True
            Identity = @('')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Manage_auditing_and_security_log'
        {
            Policy = 'Manage_auditing_and_security_log'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Modify_firmware_environment_values'
        {
            Policy = 'Modify_firmware_environment_values'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Perform_volume_maintenance_tasks'
        {
            Policy = 'Perform_volume_maintenance_tasks'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Profile_single_process'
        {
            Policy = 'Profile_single_process'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Restore_files_and_directories'
        {
            Policy = 'Restore_files_and_directories'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }

        UserRightsAssignment 'UserRightsAssignment(INF): Take_ownership_of_files_or_other_objects'
        {
            Policy = 'Take_ownership_of_files_or_other_objects'
            Force = $True
            Identity = @('*S-1-5-32-544')
        }
}
