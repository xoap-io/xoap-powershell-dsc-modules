<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent2004ServicesDisable".​
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
Resource Name  : XOAPVdiOptimizeW10Ent2004ServicesDisable.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent2004ServicesDisable
{
    param(
        [bool] $VdiOptimizeServicesDisable
    )

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC' -ModuleVersion 1.4.0.0
    Import-DSCResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion 2.10.0.0
    Import-DSCResource -ModuleName 'PowerShellAccessControl' -ModuleVersion 3.0.135.20150413
    Import-DscResource -ModuleName 'WindowsDefender' -ModuleVersion 1.0.0.4
    if($VdiOptimizeServicesDisable){

        Service 'VdiOptimize - autotimesvc'
        {
            Name = 'autotimesvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - BcastDVRUserService'
        {
            Name = 'BcastDVRUserService'
            State = 'Stopped'
        }

        Service 'VdiOptimize - CDPSvc'
        {
            Name = 'CDPSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - CDPUserSvc'
        {
            Name = 'CDPUserSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - CscService'
        {
            Name = 'CscService'
            State = 'Stopped'
        }

        Service 'VdiOptimize - defragsvc'
        {
            Name = 'defragsvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - DiagSvc'
        {
            Name = 'DiagSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - DiagTrack'
        {
            Name = 'DiagTrack'
            State = 'Stopped'
        }

        Service 'VdiOptimize - DPS'
        {
            Name = 'DPS'
            State = 'Stopped'
        }

        Service 'VdiOptimize - DsmSvc'
        {
            Name = 'DsmSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - DusmSvc'
        {
            Name = 'DusmSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - icssvc'
        {
            Name = 'icssvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - InstallService'
        {
            Name = 'InstallService'
            State = 'Stopped'
        }

        Service 'VdiOptimize - lfsvc'
        {
            Name = 'lfsvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - MapsBroker'
        {
            Name = 'MapsBroker'
            State = 'Stopped'
        }

        Service 'VdiOptimize - MessagingService'
        {
            Name = 'MessagingService'
            State = 'Stopped'
        }

        Service 'VdiOptimize - OneSyncSvc'
        {
            Name = 'OneSyncSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - PimIndexMaintenanceSvc'
        {
            Name = 'PimIndexMaintenanceSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - SEMgrSvc'
        {
            Name = 'SEMgrSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - SmsRouter'
        {
            Name = 'SmsRouter'
            State = 'Stopped'
        }

        Service 'VdiOptimize - SysMain'
        {
            Name = 'SysMain'
            State = 'Stopped'
        }

        Service 'VdiOptimize - UsoSvc'
        {
            Name = 'UsoSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - VSS'
        {
            Name = 'VSS'
            State = 'Stopped'
        }

        Service 'VdiOptimize - WdiSystemHost'
        {
            Name = 'WdiSystemHost'
            State = 'Stopped'
        }

        Service 'VdiOptimize - WerSvc'
        {
            Name = 'WerSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - WSearch'
        {
            Name = 'WSearch'
            State = 'Stopped'
        }

        Service 'VdiOptimize - XblAuthManager'
        {
            Name = 'XblAuthManager'
            State = 'Stopped'
        }

        Service 'VdiOptimize - XblGameSave'
        {
            Name = 'XblGameSave'
            State = 'Stopped'
        }

        Service 'VdiOptimize - XboxGipSvc'
        {
            Name = 'XboxGipSvc'
            State = 'Stopped'
        }

        Service 'VdiOptimize - XboxNetApiSvc'
        {
            Name = 'XboxNetApiSvc'
            State = 'Stopped'
        }
    }
}
