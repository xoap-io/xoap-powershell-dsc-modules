<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 1903 and Windows Server 2019 1903 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW10Ent1903Meta".​
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
Resource Name  : XOAPMsSecBaselineW10Ent1903Meta.schema.psm1
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
configuration XOAPMsSecBaselineW10Ent1903Meta
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
        [bool] $Include_WindowsSearch,
        [bool] $Include_Winlogon,
        [bool] $Include_WinRM
    )

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
	Import-DSCResource -ModuleName 'AuditPolicyDSC'
	Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'
    Import-DSCResource -ModuleName 'XOAPMsSecBaselineW10Ent1903EnDSC'

    if($Include_AccountPolicy){
        XOAPMsSecBaselineW10Ent1903AccountPolicy "Security Baseline - AccountPolicy Settings"{
        }
    }
    if($Include_ActiveX){
        XOAPMsSecBaselineW10Ent1903ActiveX "Security Baseline - ActiveX Settings"{
        }
    }
    if($Include_AdmPwd){
        XOAPMsSecBaselineW10Ent1903AdmPwd "Security Baseline - AdmPwd Settings"{
        }
    }
    if($Include_AppPrivacy){
        XOAPMsSecBaselineW10Ent1903AppPrivacy "Security Baseline - App Privacy"{
        }
    }
    if($Include_AuditPolicySubcategory){
        XOAPMsSecBaselineW10Ent1903AuditPolicySubcategory "Security Baseline - AuditPolicySubcategory Settings"{
        }
    }
    if($Include_Biometrics){
        XOAPMsSecBaselineW10Ent1903Biometrics "Security Baseline - Biometrics Settings"{
        }
    }
    if($Include_BitLocker){
        XOAPMsSecBaselineW10Ent1903BitLocker "Security Baseline - BitLocker Settings"{
        }
    }
    if($Include_CloudContent){
        XOAPMsSecBaselineW10Ent1903CloudContent "Security Baseline - CloudContent Settings"{
        }
    }
    if($Include_ConnectionManager){
        XOAPMsSecBaselineW10Ent1903ConnectionManager "Security Baseline - ConnectionManager Settings"{
        }
    }
    if($Include_CredentialsDelegation){
        XOAPMsSecBaselineW10Ent1903CredentialsDelegation "Security Baseline - CredentialsDelegation Settings"{
        }
    }
    if($Include_CredUI){
        XOAPMsSecBaselineW10Ent1903CredUI "Security Baseline - CredUI Settings"{
        }
    }
    if($Include_DeviceGuard){
        XOAPMsSecBaselineW10Ent1903DeviceGuard "Security Baseline - DeviceGuard Settings"{
        }
    }
    if($Include_DeviceInstallRestrictions){
        XOAPMsSecBaselineW10Ent1903DeviceInstallRestrictions "Security Baseline - DeviceInstallRestrictions Settings"{
        }
    }
    if($Include_DNSClient){
        XOAPMsSecBaselineW10Ent1903DNSClient "Security Baseline - DNSClient Settings"{
        }
    }
    if($Include_EarlyLaunch){
        XOAPMsSecBaselineW10Ent1903EarlyLaunch "Security Baseline - EarlyLaunch Settings"{
        }
    }
    if($Include_EventLog){
        XOAPMsSecBaselineW10Ent1903EventLog "Security Baseline - EventLog Settings"{
        }
    }
    if($Include_Explorer){
        XOAPMsSecBaselineW10Ent1903Explorer "Security Baseline - Explorer Settings"{
        }
    }
    if($Include_GroupPolicy){
        XOAPMsSecBaselineW10Ent1903GroupPolicy "Security Baseline - GroupPolicy Settings"{
        }
    }
    if($Include_IE){
        XOAPMsSecBaselineW10Ent1903IE "Security Baseline - IE Settings"{
        }
    }
    if($Include_Installer){
        XOAPMsSecBaselineW10Ent1903Installer "Security Baseline - Installer Settings"{
        }
    }
    if($Include_KernelDMAProtection){
        XOAPMsSecBaselineW10Ent1903KernelDMAProtection "Security Baseline - KernelDMAProtection Settings"{
        }
    }
    if($Include_LDAP){
        XOAPMsSecBaselineW10Ent1903LDAP "Security Baseline - LDAP Settings"{
        }
    }
    if($Include_LSA){
        XOAPMsSecBaselineW10Ent1903LSA "Security Baseline - LSA Settings"{
        }
    }
    if($Include_MicrosoftEdge){
        XOAPMsSecBaselineW10Ent1903MicrosoftEdge "Security Baseline - MicrosoftEdge Settings"{
        }
    }
    if($Include_Netbt){
        XOAPMsSecBaselineW10Ent1903Netbt "Security Baseline - Netbt Settings"{
        }
    }
    if($Include_Netlogon){
        XOAPMsSecBaselineW10Ent1903Netlogon "Security Baseline - Netlogon Settings"{
        }
    }
    if($Include_NetworkConnections){
        XOAPMsSecBaselineW10Ent1903NetworkConnections "Security Baseline - NetworkConnections Settings"{
        }
    }
    if($Include_NetworkProvider){
        XOAPMsSecBaselineW10Ent1903NetworkProvider "Security Baseline - NetworkProvider Settings"{
        }
    }
    if($Include_Personalization){
        XOAPMsSecBaselineW10Ent1903Personalization "Security Baseline - Personalization Settings"{
        }
    }
    if($Include_PowerSettings){
        XOAPMsSecBaselineW10Ent1903PowerSettings "Security Baseline - PowerSettings Settings"{
        }
    }
    if($Include_PowerShell){
        XOAPMsSecBaselineW10Ent1903PowerShell "Security Baseline - PowerShell Settings"{
        }
    }
    if($Include_Printers){
        XOAPMsSecBaselineW10Ent1903Printers "Security Baseline - Printers Settings"{
        }
    }
    if($Include_RPC){
        XOAPMsSecBaselineW10Ent1903RPC "Security Baseline - RPC Settings"{
        }
    }
    if($Include_SecurityOption){
        XOAPMsSecBaselineW10Ent1903SecurityOption "Security Baseline - SecurityOption Settings"{
        }
    }
    if($Include_Services){
        XOAPMsSecBaselineW10Ent1903Services "Security Baseline - Services Settings"{
        }
    }
    if($Include_SessionManager){
        XOAPMsSecBaselineW10Ent1903SessionManager "Security Baseline - SessionManager Settings"{
        }
    }
    if($Include_System){
        XOAPMsSecBaselineW10Ent1903System "Security Baseline - System Settings"{
        }
    }
    if($Include_Tcpip){
        XOAPMsSecBaselineW10Ent1903Tcpip "Security Baseline - Tcpip Settings"{
        }
    }
    if($Include_Tcpip6){
        XOAPMsSecBaselineW10Ent1903Tcpip6 "Security Baseline - Tcpip6 Settings"{
        }
    }
    if($Include_TerminalService){
        XOAPMsSecBaselineW10Ent1903TerminalService "Security Baseline - TerminalService Settings"{
        }
    }
    if($Include_UserRightsAssignment){
        XOAPMsSecBaselineW10Ent1903UserRightsAssignment "Security Baseline - UserRightsAssignment Settings"{
        }
    }
    if($Include_WDigest){
        XOAPMsSecBaselineW10Ent1903WDigest "Security Baseline - WDigest Settings"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMsSecBaselineW10Ent1903WindowsDefender "Security Baseline - WindowsDefender Settings"{
        }
    }
    if($Include_WindowsFirewall){
        XOAPMsSecBaselineW10Ent1903WindowsFirewall "Security Baseline - WindowsFirewall Settings"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMsSecBaselineW10Ent1903WindowsSearch "Security Baseline - WindowsSearch Settings"{
        }
    }
    if($Include_Winlogon){
        XOAPMsSecBaselineW10Ent1903Winlogon "Security Baseline - Winlogon Settings"{
        }
    }
    if($Include_WinRM){
        XOAPMsSecBaselineW10Ent1903WinRM "Security Baseline - WinRM Settings"{
        }
    }
}
