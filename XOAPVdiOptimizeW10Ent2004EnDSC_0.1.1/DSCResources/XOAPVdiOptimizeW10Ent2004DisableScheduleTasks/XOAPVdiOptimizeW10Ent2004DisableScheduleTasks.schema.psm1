<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent2004DisableScheduleTasks".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​

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
Module Name    : XOAPVdiOptimizeW10Ent2004EnDSC
Resource Name  : XOAPVdiOptimizeW10Ent2004DisableScheduleTasks.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent2004DisableScheduleTasks
{

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'ComputerManagementDsc'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    ScheduledTask "BgTaskRegistrationMaintenanceTask"
    {
        TaskName = "BgTaskRegistrationMaintenanceTask"
        TaskPath = "\Microsoft\Windows\BrokerInfrastructure\"
        Ensure = 'Absent'
    }

    ScheduledTask "Consolidator"
    {
        TaskName = "Consolidator"
        TaskPath = "\Microsoft\Windows\Customer Experience Improvement Program\"
        Ensure = 'Absent'
    }

    ScheduledTask "Diagnostics"
    {
        TaskName = "Diagnostics"
        TaskPath = "\Microsoft\Windows\DiskFootprint\"
        Ensure = 'Absent'
    }

    ScheduledTask "FamilySafetyMonitor"
         {
             TaskName = "FamilySafetyMonitor"
             TaskPath = "\Microsoft\Windows\Shell\"
             Ensure = 'Absent'
         }

    ScheduledTask "FamilySafetyRefresh"
         {
             TaskName = "FamilySafetyRefreshTask"
             TaskPath = "\Microsoft\Windows\Shell\"
             Ensure = 'Absent'
         }

    ScheduledTask "MapsToastTask"
         {
             TaskName = "MapsToastTask"
             TaskPath = "\Microsoft\Windows\Maps\"
             Ensure = 'Absent'
         }

    ScheduledTask "MicrosoftCompatibilityAppraiser"
         {
             TaskName = "Microsoft Compatibility Appraiser"
             TaskPath = "\Microsoft\Windows\Application Experience\"
             Ensure = 'Absent'
         }

    ScheduledTask "Microsoft-Windows-DiskDiagnosticDataCollector"
         {
             TaskName = "Microsoft-Windows-DiskDiagnosticDataCollector"
             TaskPath = "\Microsoft\Windows\DiskDiagnostic\"
             Ensure = 'Absent'
         }

    ScheduledTask "MNOMetadataParse"
         {
             TaskName = "MNO Metadata Parser"
             TaskPath = "\Microsoft\Windows\Mobile Broadband Accounts\"
             Ensure = 'Absent'
         }

    ScheduledTask "NotificationTask"
         {
             TaskName = "NotificationTask"
             TaskPath = "\Microsoft\Windows\WwanSvc\"
             Ensure = 'Absent'
         }

    ScheduledTask "ProactiveScan"
         {
             TaskName = "ProactiveScan"
             TaskPath = "\Microsoft\Windows\Chkdsk\"
             Ensure = 'Absent'
         }

    ScheduledTask "ProcessMemoryDiagnosticEvents"
         {
             TaskName = "ProcessMemoryDiagnosticEvents"
             TaskPath = "\Microsoft\Windows\MemoryDiagnostic\"
             Ensure = 'Absent'
         }

    ScheduledTask "Proxy"
         {
             TaskName = "Proxy"
             TaskPath = "\Microsoft\Windows\Autochk\"
             Ensure = 'Absent'
         }

    ScheduledTask "QueueReporting"
         {
             TaskName = "QueueReporting"
             TaskPath = "\Microsoft\Windows\Windows Error Reporting\"
             Ensure = 'Absent'
         }

    ScheduledTask "RecommendedTroubleshootingScanner"
         {
             TaskName = "RecommendedTroubleshootingScanner"
             TaskPath = "\Microsoft\Windows\Diagnosis\"
             Ensure = 'Absent'
         }

    ScheduledTask "ReconcileLanguageResources"
         {
             TaskName = "ReconcileLanguageResources"
             TaskPath = "\Microsoft\Windows\LanguageComponentsInstaller\"
             Ensure = 'Absent'
         }

    ScheduledTask "RegIdleBackup"
         {
             TaskName = "RegIdleBackup"
             TaskPath = "\Microsoft\Windows\Registry\"
             Ensure = 'Absent'
         }

    ScheduledTask "RunFullMemoryDiagnostic"
         {
             TaskName = "RunFullMemoryDiagnostic"
             TaskPath = "\Microsoft\Windows\MemoryDiagnostic\"
             Ensure = 'Absent'
         }

    ScheduledTask "Scheduled"
         {
             TaskName = "Scheduled"
             TaskPath = "\Microsoft\Windows\Diagnosis\"
             Ensure = 'Absent'
         }

    ScheduledTask "ScheduledDefrag"
         {
             TaskName = "ScheduledDefrag"
             TaskPath = "\Microsoft\Windows\Defrag\"
             Ensure = 'Absent'
         }

    ScheduledTask "SilentCleanup"
         {
             TaskName = "SilentCleanup"
             TaskPath = "\Microsoft\Windows\DiskCleanup\"
             Ensure = 'Absent'
         }

    ScheduledTask "SpeechModelDownloadTask"
         {
             TaskName = "SpeechModelDownloadTask"
             TaskPath = "\Microsoft\Windows\Speech\"
             Ensure = 'Absent'
         }

    ScheduledTask "Sqm-Tasks"
         {
             TaskName = "Sqm-Tasks"
             TaskPath = "\Microsoft\Windows\PI\"
             Ensure = 'Absent'
         }

    ScheduledTask "SR"
         {
             TaskName = "SR"
             TaskPath = "\Microsoft\Windows\SystemRestore\"
             Ensure = 'Absent'
         }

    ScheduledTask "StartupAppTask"
         {
             TaskName = "StartupAppTask"
             TaskPath = "\Microsoft\Windows\Application Experience\"
             Ensure = 'Absent'
         }

    ScheduledTask "UpdateLibrary"
         {
             TaskName = "UpdateLibrary"
             TaskPath = "\Microsoft\Windows\Windows Media Sharing\"
             Ensure = 'Absent'
         }

    ScheduledTask "WindowsActionDialog"
         {
             TaskName = "WindowsActionDialog"
             TaskPath = "\Microsoft\Windows\Location\"
             Ensure = 'Absent'
         }

    ScheduledTask "WinSAT"
         {
             TaskName = "WinSAT"
             TaskPath = "\Microsoft\Windows\Maintenance\"
             Ensure = 'Absent'
         }

    ScheduledTask "XblGameSaveTask"
         {
             TaskName = "XblGameSaveTask"
             TaskPath = "\Microsoft\XblGameSave\"
             Ensure = 'Absent'
         }

}
