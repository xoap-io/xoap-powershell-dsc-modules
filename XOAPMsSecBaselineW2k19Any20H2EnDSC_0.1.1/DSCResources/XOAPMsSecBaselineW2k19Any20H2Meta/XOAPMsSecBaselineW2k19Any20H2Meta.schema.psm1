<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 20H2 and Windows Server 20H2 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsSecBaselineW2k19Any20H2Meta".​
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
Resource Name  : XOAPMsSecBaselineW2k19Any20H2Meta.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any20H2Meta
{
    param(
        [bool] $Include_AccountPolicy,
        [bool] $Include_ActiveX,
        [bool] $Include_AdmPwd,
        [bool] $Include_AuditPolicySubcategory,
        [bool] $Include_Biometrics,
        [bool] $Include_ConnectionManager,
        [bool] $Include_CredentialsDelegation,
        [bool] $Include_DeviceGuard,
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
        [bool] $Include_Netbt,
        [bool] $Include_Netlogon,
        [bool] $Include_NetworkConnections,
        [bool] $Include_NetworkProvider,
        [bool] $Include_Personalization,
        [bool] $Include_PowerShell,
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
    Import-DSCResource -ModuleName 'XOAPMsSecBaselineW2k19Any20H2EnDSC'

    if($Include_AccountPolicy){
        XOAPMsSecBaselineW2k19Any20H2AccountPolicy "Security Baseline - AccountPolicy Settings"{
        }
    }
    if($Include_ActiveX){
        XOAPMsSecBaselineW2k19Any20H2ActiveX "Security Baseline - ActiveX Settings"{
        }
    }
    if($Include_AdmPwd){
        XOAPMsSecBaselineW2k19Any20H2AdmPwd "Security Baseline - AdmPwd Settings"{
        }
    }
    if($Include_AuditPolicySubcategory){
        XOAPMsSecBaselineW2k19Any20H2AuditPolicySubcategory "Security Baseline - AuditPolicySubcategory Settings"{
        }
    }
    if($Include_Biometrics){
        XOAPMsSecBaselineW2k19Any20H2Biometrics "Security Baseline - Biometrics Settings"{
        }
    }
    if($Include_ConnectionManager){
        XOAPMsSecBaselineW2k19Any20H2ConnectionManager "Security Baseline - ConnectionManager Settings"{
        }
    }
    if($Include_CredentialsDelegation){
        XOAPMsSecBaselineW2k19Any20H2CredentialsDelegation "Security Baseline - CredentialsDelegation Settings"{
        }
    }
    if($Include_DeviceGuard){
        XOAPMsSecBaselineW2k19Any20H2DeviceGuard "Security Baseline - DeviceGuard Settings"{
        }
    }
    if($Include_DNSClient){
        XOAPMsSecBaselineW2k19Any20H2DNSClient "Security Baseline - DNSClient Settings"{
        }
    }
    if($Include_EarlyLaunch){
        XOAPMsSecBaselineW2k19Any20H2EarlyLaunch "Security Baseline - EarlyLaunch Settings"{
        }
    }
    if($Include_EventLog){
        XOAPMsSecBaselineW2k19Any20H2EventLog "Security Baseline - EventLog Settings"{
        }
    }
    if($Include_Explorer){
        XOAPMsSecBaselineW2k19Any20H2Explorer "Security Baseline - Explorer Settings"{
        }
    }
    if($Include_GroupPolicy){
        XOAPMsSecBaselineW2k19Any20H2GroupPolicy "Security Baseline - GroupPolicy Settings"{
        }
    }
    if($Include_IE){
        XOAPMsSecBaselineW2k19Any20H2IE "Security Baseline - IE Settings"{
        }
    }
    if($Include_Installer){
        XOAPMsSecBaselineW2k19Any20H2Installer "Security Baseline - Installer Settings"{
        }
    }
    if($Include_KernelDMAProtection){
        XOAPMsSecBaselineW2k19Any20H2KernelDMAProtection "Security Baseline - KernelDMAProtection Settings"{
        }
    }
    if($Include_LDAP){
        XOAPMsSecBaselineW2k19Any20H2LDAP "Security Baseline - LDAP Settings"{
        }
    }
    if($Include_LSA){
        XOAPMsSecBaselineW2k19Any20H2LSA "Security Baseline - LSA Settings"{
        }
    }
    if($Include_Netbt){
        XOAPMsSecBaselineW2k19Any20H2Netbt "Security Baseline - Netbt Settings"{
        }
    }
    if($Include_Netlogon){
        XOAPMsSecBaselineW2k19Any20H2Netlogon "Security Baseline - Netlogon Settings"{
        }
    }
    if($Include_NetworkConnections){
        XOAPMsSecBaselineW2k19Any20H2NetworkConnections "Security Baseline - NetworkConnections Settings"{
        }
    }
    if($Include_NetworkProvider){
        XOAPMsSecBaselineW2k19Any20H2NetworkProvider "Security Baseline - NetworkProvider Settings"{
        }
    }
    if($Include_Personalization){
        XOAPMsSecBaselineW2k19Any20H2Personalization "Security Baseline - Personalization Settings"{
        }
    }
    if($Include_PowerShell){
        XOAPMsSecBaselineW2k19Any20H2PowerShell "Security Baseline - PowerShell Settings"{
        }
    }
    if($Include_RPC){
        XOAPMsSecBaselineW2k19Any20H2RPC "Security Baseline - RPC Settings"{
        }
    }
    if($Include_SecurityOption){
        XOAPMsSecBaselineW2k19Any20H2SecurityOption "Security Baseline - SecurityOption Settings"{
        }
    }
    if($Include_Services){
        XOAPMsSecBaselineW2k19Any20H2Services "Security Baseline - Services Settings"{
        }
    }
    if($Include_SessionManager){
        XOAPMsSecBaselineW2k19Any20H2SessionManager "Security Baseline - SessionManager Settings"{
        }
    }
    if($Include_System){
        XOAPMsSecBaselineW2k19Any20H2System "Security Baseline - System Settings"{
        }
    }
    if($Include_Tcpip){
        XOAPMsSecBaselineW2k19Any20H2Tcpip "Security Baseline - Tcpip Settings"{
        }
    }
    if($Include_Tcpip6){
        XOAPMsSecBaselineW2k19Any20H2Tcpip6 "Security Baseline - Tcpip6 Settings"{
        }
    }
    if($Include_TerminalService){
        XOAPMsSecBaselineW2k19Any20H2TerminalService "Security Baseline - TerminalService Settings"{
        }
    }
    if($Include_UserRightsAssignment){
        XOAPMsSecBaselineW2k19Any20H2UserRightsAssignment "Security Baseline - UserRightsAssignment Settings"{
        }
    }
    if($Include_WDigest){
        XOAPMsSecBaselineW2k19Any20H2WDigest "Security Baseline - WDigest Settings"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMsSecBaselineW2k19Any20H2WindowsDefender "Security Baseline - WindowsDefender Settings"{
        }
    }
    if($Include_WindowsFirewall){
        XOAPMsSecBaselineW2k19Any20H2WindowsFirewall "Security Baseline - WindowsFirewall Settings"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMsSecBaselineW2k19Any20H2WindowsSearch "Security Baseline - WindowsSearch Settings"{
        }
    }
    if($Include_Winlogon){
        XOAPMsSecBaselineW2k19Any20H2Winlogon "Security Baseline - Winlogon Settings"{
        }
    }
    if($Include_WinRM){
        XOAPMsSecBaselineW2k19Any20H2WinRM "Security Baseline - WinRM Settings"{
        }
    }
}
