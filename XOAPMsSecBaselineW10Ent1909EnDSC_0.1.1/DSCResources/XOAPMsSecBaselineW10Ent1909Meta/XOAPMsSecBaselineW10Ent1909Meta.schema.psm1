<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 1909 and Windows Server 2019 1909 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW10Ent1909Meta".​
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
Module Name    : XOAPMsSecBaselineW10Ent1909EnDSC
Resource Name  : XOAPMsSecBaselineW10Ent1909Meta.schema.psm1
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
configuration XOAPMsSecBaselineW10Ent1909Meta
{
    param(
        [bool] $Include_AccountPolicy,
        [bool] $Include_ActiveX,
        [bool] $Include_AdmPwd,
        [bool] $Include_AppPrivacy,
        [bool] $Include_AuditPolicySubcategory,
        [bool] $Include_Biometrics,
        [bool] $Include_BitLocker,
        [bool] $Include_CloudContent,
        [bool] $Include_ConnectionManager,
        [bool] $Include_CredentialsDelegation,
        [bool] $Include_CredUI,
        [bool] $Include_DeviceGuard,
        [bool] $Include_DeviceInstallRestrictions,
        [bool] $Include_DNSClient,
        [bool] $Include_EarlyLaunch,
        [bool] $Include_EventLog,
        [bool] $Include_Explorer,
        [bool] $Include_GameDVR,
        [bool] $Include_GroupPolicy,
        [bool] $Include_IE,
        [bool] $Include_Installer,
        [bool] $Include_KernelDMAProtection,
        [bool] $Include_LDAP,
        [bool] $Include_LSA,
        [bool] $Include_MicrosoftEdge,
        [bool] $Include_Netbt,
        [bool] $Include_Netlogon,
        [bool] $Include_NetworkConnections,
        [bool] $Include_NetworkProvider,
        [bool] $Include_Personalization,
        [bool] $Include_PowerSettings,
        [bool] $Include_PowerShell,
        [bool] $Include_Printers,
        [bool] $Include_RPC,
        [bool] $Include_SecurityOption,
        [bool] $Include_Services,
        [bool] $Include_SessionManager,
        [bool] $Include_SMB,
        [bool] $Include_System,
        [bool] $Include_Tcpip,
        [bool] $Include_Tcpip6,
        [bool] $Include_TerminalService,
        [bool] $Include_UserRightsAssignment,
        [bool] $Include_WDigest,
        [bool] $Include_WindowsDefender,
        [bool] $Include_WindowsFirewall,
        [bool] $Include_WindowsInkWorkspace,
        [bool] $Include_WindowsNT,
        [bool] $Include_WindowsSearch,
        [bool] $Include_Winlogon,
        [bool] $Include_WinRM
    )

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
	Import-DSCResource -ModuleName 'AuditPolicyDSC'
	Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'
    Import-DSCResource -ModuleName 'XOAPMsSecBaselineW10Ent1909EnDSC'

    if($Include_AccountPolicy){
        XOAPMsSecBaselineW10Ent1909AccountPolicy "Security Baseline - AccountPolicy Settings"{
        }
    }
    if($Include_ActiveX){
        XOAPMsSecBaselineW10Ent1909ActiveX "Security Baseline - ActiveX Settings"{
        }
    }
    if($Include_AdmPwd){
        XOAPMsSecBaselineW10Ent1909AdmPwd "Security Baseline - AdmPwd Settings"{
        }
    }
    if($Include_AppPrivacy){
        XOAPMsSecBaselineW10Ent1909AppPrivacy "Security Baseline - App Privacy"{
        }
    }
    if($Include_AuditPolicySubcategory){
        XOAPMsSecBaselineW10Ent1909AuditPolicySubcategory "Security Baseline - AuditPolicySubcategory Settings"{
        }
    }
    if($Include_Biometrics){
        XOAPMsSecBaselineW10Ent1909Biometrics "Security Baseline - Biometrics Settings"{
        }
    }
    if($Include_BitLocker){
        XOAPMsSecBaselineW10Ent1909BitLocker "Security Baseline - BitLocker Settings"{
        }
    }
    if($Include_CloudContent){
        XOAPMsSecBaselineW10Ent1909CloudContent "Security Baseline - CloudContent Settings"{
        }
    }
    if($Include_ConnectionManager){
        XOAPMsSecBaselineW10Ent1909ConnectionManager "Security Baseline - ConnectionManager Settings"{
        }
    }
    if($Include_CredentialsDelegation){
        XOAPMsSecBaselineW10Ent1909CredentialsDelegation "Security Baseline - CredentialsDelegation Settings"{
        }
    }
    if($Include_CredUI){
        XOAPMsSecBaselineW10Ent1909CredUI "Security Baseline - CredUI Settings"{
        }
    }
    if($Include_DeviceGuard){
        XOAPMsSecBaselineW10Ent1909DeviceGuard "Security Baseline - DeviceGuard Settings"{
        }
    }
    if($Include_DeviceInstallRestrictions){
        XOAPMsSecBaselineW10Ent1909DeviceInstallRestrictions "Security Baseline - DeviceInstallRestrictions Settings"{
        }
    }
    if($Include_DNSClient){
        XOAPMsSecBaselineW10Ent1909DNSClient "Security Baseline - DNSClient Settings"{
        }
    }
    if($Include_EarlyLaunch){
        XOAPMsSecBaselineW10Ent1909EarlyLaunch "Security Baseline - EarlyLaunch Settings"{
        }
    }
    if($Include_EventLog){
        XOAPMsSecBaselineW10Ent1909EventLog "Security Baseline - EventLog Settings"{
        }
    }
    if($Include_Explorer){
        XOAPMsSecBaselineW10Ent1909Explorer "Security Baseline - Explorer Settings"{
        }
    }
    if($Include_GroupPolicy){
        XOAPMsSecBaselineW10Ent1909GroupPolicy "Security Baseline - GroupPolicy Settings"{
        }
    }
    if($Include_IE){
        XOAPMsSecBaselineW10Ent1909IE "Security Baseline - IE Settings"{
        }
    }
    if($Include_Installer){
        XOAPMsSecBaselineW10Ent1909Installer "Security Baseline - Installer Settings"{
        }
    }
    if($Include_KernelDMAProtection){
        XOAPMsSecBaselineW10Ent1909KernelDMAProtection "Security Baseline - KernelDMAProtection Settings"{
        }
    }
    if($Include_LDAP){
        XOAPMsSecBaselineW10Ent1909LDAP "Security Baseline - LDAP Settings"{
        }
    }
    if($Include_LSA){
        XOAPMsSecBaselineW10Ent1909LSA "Security Baseline - LSA Settings"{
        }
    }
    if($Include_MicrosoftEdge){
        XOAPMsSecBaselineW10Ent1909MicrosoftEdge "Security Baseline - MicrosoftEdge Settings"{
        }
    }
    if($Include_Netbt){
        XOAPMsSecBaselineW10Ent1909Netbt "Security Baseline - Netbt Settings"{
        }
    }
    if($Include_Netlogon){
        XOAPMsSecBaselineW10Ent1909Netlogon "Security Baseline - Netlogon Settings"{
        }
    }
    if($Include_NetworkConnections){
        XOAPMsSecBaselineW10Ent1909NetworkConnections "Security Baseline - NetworkConnections Settings"{
        }
    }
    if($Include_NetworkProvider){
        XOAPMsSecBaselineW10Ent1909NetworkProvider "Security Baseline - NetworkProvider Settings"{
        }
    }
    if($Include_Personalization){
        XOAPMsSecBaselineW10Ent1909Personalization "Security Baseline - Personalization Settings"{
        }
    }
    if($Include_PowerSettings){
        XOAPMsSecBaselineW10Ent1909PowerSettings "Security Baseline - PowerSettings Settings"{
        }
    }
    if($Include_PowerShell){
        XOAPMsSecBaselineW10Ent1909PowerShell "Security Baseline - PowerShell Settings"{
        }
    }
    if($Include_Printers){
        XOAPMsSecBaselineW10Ent1909Printers "Security Baseline - Printers Settings"{
        }
    }
    if($Include_RPC){
        XOAPMsSecBaselineW10Ent1909RPC "Security Baseline - RPC Settings"{
        }
    }
    if($Include_SecurityOption){
        XOAPMsSecBaselineW10Ent1909SecurityOption "Security Baseline - SecurityOption Settings"{
        }
    }
    if($Include_Services){
        XOAPMsSecBaselineW10Ent1909Services "Security Baseline - Services Settings"{
        }
    }
    if($Include_SessionManager){
        XOAPMsSecBaselineW10Ent1909SessionManager "Security Baseline - SessionManager Settings"{
        }
    }
    if($Include_System){
        XOAPMsSecBaselineW10Ent1909System "Security Baseline - System Settings"{
        }
    }
    if($Include_Tcpip){
        XOAPMsSecBaselineW10Ent1909Tcpip "Security Baseline - Tcpip Settings"{
        }
    }
    if($Include_Tcpip6){
        XOAPMsSecBaselineW10Ent1909Tcpip6 "Security Baseline - Tcpip6 Settings"{
        }
    }
    if($Include_TerminalService){
        XOAPMsSecBaselineW10Ent1909TerminalService "Security Baseline - TerminalService Settings"{
        }
    }
    if($Include_UserRightsAssignment){
        XOAPMsSecBaselineW10Ent1909UserRightsAssignment "Security Baseline - UserRightsAssignment Settings"{
        }
    }
    if($Include_WDigest){
        XOAPMsSecBaselineW10Ent1909WDigest "Security Baseline - WDigest Settings"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMsSecBaselineW10Ent1909WindowsDefender "Security Baseline - WindowsDefender Settings"{
        }
    }
    if($Include_WindowsFirewall){
        XOAPMsSecBaselineW10Ent1909WindowsFirewall "Security Baseline - WindowsFirewall Settings"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMsSecBaselineW10Ent1909WindowsSearch "Security Baseline - WindowsSearch Settings"{
        }
    }
    if($Include_Winlogon){
        XOAPMsSecBaselineW10Ent1909Winlogon "Security Baseline - Winlogon Settings"{
        }
    }
    if($Include_WinRM){
        XOAPMsSecBaselineW10Ent1909WinRM "Security Baseline - WinRM Settings"{
        }
    }
}
