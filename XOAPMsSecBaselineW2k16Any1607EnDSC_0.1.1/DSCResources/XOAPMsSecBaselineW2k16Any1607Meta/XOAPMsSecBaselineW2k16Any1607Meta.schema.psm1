<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Enterprise 1607 & Windows Server 2016 1607 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPMsSecBaselineW2k16Any1607Meta".​
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
Resource Name  : XOAPMsSecBaselineW2k16Any1607Meta.schema.psm1
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
configuration XOAPMsSecBaselineW2k16Any1607Meta
{
    param(
        [bool] $Include_AccountPolicy,
        [bool] $Include_ActiveX,
        [bool] $Include_AdmPwd,
        [bool] $Include_AuditPolicySubcategory,
        [bool] $Include_Biometrics,
        [bool] $Include_BitLocker,
        [bool] $Include_CloudContent,
        [bool] $Include_ConnectionManager,
        [bool] $Include_CredUI,
        [bool] $Include_DeviceGuard,
        [bool] $Include_DeviceInstallRestrictions,
        [bool] $Include_EarlyLaunch,
        [bool] $Include_EventLog,
        [bool] $Include_Explorer,
        [bool] $Include_GroupPolicy,
        [bool] $Include_IE,
        [bool] $Include_Installer,
        [bool] $Include_LDAP,
        [bool] $Include_LSA,
        [bool] $Include_MicrosoftEdge,
        [bool] $Include_MitigationOptions,
        [bool] $Include_Netbt,
        [bool] $Include_Netlogon,
        [bool] $Include_NetworkConnections,
        [bool] $Include_NetworkProvider,
        [bool] $Include_Personalization,
        [bool] $Include_PowerSettings,
        [bool] $Include_PowerShell,
        [bool] $Include_Printers,
        [bool] $Include_RPC,
        [bool] $Include_Safer,
        [bool] $Include_SecurityOption,
        [bool] $Include_Services,
        [bool] $Include_SessionManager,
        [bool] $Include_System,
        [bool] $Include_Tcpip,
        [bool] $Include_Tcpip6,
        [bool] $Include_TerminalService,
        [bool] $Include_UserRightsAssignment,
        [bool] $Include_WDigest,
        [bool] $Include_WindowsDefender,
        [bool] $Include_WindowsFirewall,
        [bool] $Include_WindowsSearch,
        [bool] $Include_Winlogon,
        [bool] $Include_WinRM
    )

    Import-DscResource -ModuleName 'XOAPMsSecBaselineW2k16Any1607EnDSC'
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    if($Include_AccountPolicy){
        XOAPMsSecBaselineW2k16Any1607AccountPolicy "Security Baseline - AccountPolicy"{
        }
    }
    if($Include_ActiveX){
        XOAPMsSecBaselineW2k16Any1607ActiveX "Security Baseline - ActiveX"{
        }
    }
    if($Include_AdmPwd){
        XOAPMsSecBaselineW2k16Any1607AdmPwd "Security Baseline - AdmPwd"{
        }
    }
    if($Include_AuditPolicySubcategory){
        XOAPMsSecBaselineW2k16Any1607AuditPolicySubcategory "Security Baseline - AuditPolicySubcategory"{
        }
    }
    if($Include_Biometrics){
        XOAPMsSecBaselineW2k16Any1607Biometrics "Security Baseline - Biometrics"{
        }
    }
    if($Include_BitLocker){
        XOAPMsSecBaselineW2k16Any1607BitLocker "Security Baseline - BitLocker"{
        }
    }
    if($Include_CloudContent){
        XOAPMsSecBaselineW2k16Any1607CloudContent "Security Baseline - CloudContent"{
        }
    }
    if($Include_ConnectionManager){
        XOAPMsSecBaselineW2k16Any1607ConnectionManager "Security Baseline - ConnectionManager"{
        }
    }
    if($Include_CredUI){
        XOAPMsSecBaselineW2k16Any1607CredUI "Security Baseline - CredUI"{
        }
    }
    if($Include_DeviceGuard){
        XOAPMsSecBaselineW2k16Any1607DeviceGuard "Security Baseline - DeviceGuard"{
        }
    }
    if($Include_DeviceInstallRestrictions){
        XOAPMsSecBaselineW2k16Any1607DeviceInstallRestrictions "Security Baseline - DeviceInstallRestrictions"{
        }
    }
    if($Include_EarlyLaunch){
        XOAPMsSecBaselineW2k16Any1607EarlyLaunch "Security Baseline - EarlyLaunch"{
        }
    }
    if($Include_EventLog){
        XOAPMsSecBaselineW2k16Any1607EventLog "Security Baseline - EventLog"{
        }
    }
    if($Include_Explorer){
        XOAPMsSecBaselineW2k16Any1607Explorer "Security Baseline - Explorer"{
        }
    }
    if($Include_GroupPolicy){
        XOAPMsSecBaselineW2k16Any1607GroupPolicy "Security Baseline - GroupPolicy"{
        }
    }
    if($Include_IE){
        XOAPMsSecBaselineW2k16Any1607IE "Security Baseline - IE"{
        }
    }
    if($Include_Installer){
        XOAPMsSecBaselineW2k16Any1607Installer "Security Baseline - Installer"{
        }
    }
    if($Include_LDAP){
        XOAPMsSecBaselineW2k16Any1607LDAP "Security Baseline - LDAP"{
        }
    }
    if($Include_LSA){
        XOAPMsSecBaselineW2k16Any1607LSA "Security Baseline - LSA"{
        }
    }
    if($Include_MicrosoftEdge){
        XOAPMsSecBaselineW2k16Any1607MicrosoftEdge "Security Baseline - MicrosoftEdge"{
        }
    }
    if($Include_MitigationOptions){
        XOAPMsSecBaselineW2k16Any1607MitigationOptions "Security Baseline - MitigationOptions"{
        }
    }
    if($Include_Netbt){
        XOAPMsSecBaselineW2k16Any1607Netbt "Security Baseline - Netbt"{
        }
    }
    if($Include_Netlogon){
        XOAPMsSecBaselineW2k16Any1607Netlogon "Security Baseline - Netlogon"{
        }
    }
    if($Include_NetworkConnections){
        XOAPMsSecBaselineW2k16Any1607NetworkConnections "Security Baseline - NetworkConnections"{
        }
    }
    if($Include_NetworkProvider){
        XOAPMsSecBaselineW2k16Any1607NetworkProvider "Security Baseline - NetworkProvider"{
        }
    }
    if($Include_Personalization){
        XOAPMsSecBaselineW2k16Any1607Personalization "Security Baseline - Personalization"{
        }
    }
    if($Include_PowerSettings){
        XOAPMsSecBaselineW2k16Any1607PowerSettings "Security Baseline - PowerSettings"{
        }
    }
    if($Include_PowerShell){
        XOAPMsSecBaselineW2k16Any1607PowerShell "Security Baseline - PowerShell"{
        }
    }
    if($Include_Printers){
        XOAPMsSecBaselineW2k16Any1607Printers "Security Baseline - Printers"{
        }
    }
    if($Include_RPC){
        XOAPMsSecBaselineW2k16Any1607RPC "Security Baseline - RPC"{
        }
    }
    if($Include_Safer){
        XOAPMsSecBaselineW2k16Any1607Safer "Security Baseline - Safer"{
        }
    }
    if($Include_SecurityOption){
        XOAPMsSecBaselineW2k16Any1607SecurityOption "Security Baseline - SecurityOption"{
        }
    }
    if($Include_Services){
        XOAPMsSecBaselineW2k16Any1607Services "Security Baseline - Services"{
        }
    }
    if($Include_SessionManager){
        XOAPMsSecBaselineW2k16Any1607SessionManager "Security Baseline - SessionManager"{
        }
    }
    if($Include_System){
        XOAPMsSecBaselineW2k16Any1607System "Security Baseline - System"{
        }
    }
    if($Include_Tcpip){
        XOAPMsSecBaselineW2k16Any1607Tcpip "Security Baseline - Tcpip"{
        }
    }
    if($Include_Tcpip6){
        XOAPMsSecBaselineW2k16Any1607Tcpip6 "Security Baseline - Tcpip6"{
        }
    }
    if($Include_TerminalService){
        XOAPMsSecBaselineW2k16Any1607TerminalService "Security Baseline - TerminalService"{
        }
    }
    if($Include_UserRightsAssignment){
        XOAPMsSecBaselineW2k16Any1607UserRightsAssignment "Security Baseline - UserRightsAssignment"{
        }
    }
    if($Include_WDigest){
        XOAPMsSecBaselineW2k16Any1607WDigest "Security Baseline - WDigest"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMsSecBaselineW2k16Any1607WindowsDefender "Security Baseline - WindowsDefender"{
        }
    }
    if($Include_WindowsFirewall){
        XOAPMsSecBaselineW2k16Any1607WindowsFirewall "Security Baseline - WindowsFirewall"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMsSecBaselineW2k16Any1607WindowsSearch "Security Baseline - WindowsSearch"{
        }
    }
    if($Include_Winlogon){
        XOAPMsSecBaselineW2k16Any1607Winlogon "Security Baseline - Winlogon"{
        }
    }
    if($Include_WinRM){
        XOAPMsSecBaselineW2k16Any1607WinRM "Security Baseline - WinRM"{
        }
    }
}
