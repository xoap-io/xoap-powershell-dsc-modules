<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 20H2 and Windows Server 20H2 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any20H2TerminalService".​
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
Resource Name  : XOAPMsSecBaselineW2k19Any20H2TerminalService.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any20H2TerminalService
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\DisablePasswordSaving'
         {
              ValueName = 'DisablePasswordSaving'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = 1
         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\fDisableCdm'
         {
              ValueName = 'fDisableCdm'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = 1
         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\fPromptForPassword'
         {
              ValueName = 'fPromptForPassword'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = 1
         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\fEncryptRPCTraffic'
         {
              ValueName = 'fEncryptRPCTraffic'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = 1
         }

         Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\MinEncryptionLevel'
         {
              ValueName = 'MinEncryptionLevel'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = 3
         }

         <#Registry 'DEL_\Software\Policies\Microsoft\Windows NT\Terminal Services\fUseMailto'
         {
              ValueName = 'fUseMailto'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = ''
              Ensure = 'Absent'
         }#>

         <#Registry 'Registry(POL): HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\fAllowToGetHelp'
         {
              ValueName = 'fAllowToGetHelp'
              ValueType = 'Dword'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = 0
         }#>

         <#Registry 'DEL_\Software\Policies\Microsoft\Windows NT\Terminal Services\fAllowFullControl'
         {
              ValueName = 'fAllowFullControl'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = ''
              Ensure = 'Absent'
         }#>

         <#Registry 'DEL_\Software\Policies\Microsoft\Windows NT\Terminal Services\MaxTicketExpiry'
         {
              ValueName = 'MaxTicketExpiry'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = ''
              Ensure = 'Absent'
         }#>

         <#Registry 'DEL_\Software\Policies\Microsoft\Windows NT\Terminal Services\MaxTicketExpiryUnits'
         {
              ValueName = 'MaxTicketExpiryUnits'
              ValueType = 'String'
              Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services'
              ValueData = ''
              Ensure = 'Absent'
         }#>

}
