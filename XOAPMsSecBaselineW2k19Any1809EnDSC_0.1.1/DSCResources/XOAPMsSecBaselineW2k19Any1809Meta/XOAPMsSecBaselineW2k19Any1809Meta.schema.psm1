<#
.SYNOPSIS​
This is a generated Microsoft-recommended security configuration based on Windows 10 Version 1607 and Windows Server 2016 Security Baseline (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "Security".​
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
Module Name    : XOAPMsSecBaselineW2k19Any1809EnDSC
Resource Name  : XOAPMsSecBaselineW2k19Any1809Meta.schema.psm1
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
configuration XOAPMsSecBaselineW2k19Any1809Meta
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
        [bool] $Include_EarlyLaunch,
        [bool] $Include_EventLog,
        [bool] $Include_Explorer,
        [bool] $Include_GroupPolicy,
        [bool] $Include_IE,
        [bool] $Include_Installer,
        [bool] $Include_KernelDMAProtection,
        [bool] $Include_LDAP,
        [bool] $Include_LSA,
        [bool] $Include_Netbt,
        [bool] $Include_Netlogon,
        [bool] $Include_NetworkProvider,
        [bool] $Include_Personalization,
        [bool] $Include_PowerShell,
        [bool] $Include_RPC,
        [bool] $Include_SecurityOption,
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

    Import-DscResource -ModuleName 'XOAPMsSecBaselineW2k19Any1809EnDSC'
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    if($Include_AccountPolicy){
        XOAPMsSecBaselineW2k19Any1809AccountPolicy "Security Baseline - AccountPolicy"{
        }
    }
    if($Include_ActiveX){
        XOAPMsSecBaselineW2k19Any1809ActiveX "Security Baseline - ActiveX"{
        }
    }
    if($Include_AdmPwd){
        XOAPMsSecBaselineW2k19Any1809AdmPwd "Security Baseline - AdmPwd"{
        }
    }
    if($Include_AuditPolicySubcategory){
        XOAPMsSecBaselineW2k19Any1809AuditPolicySubcategory "Security Baseline - AuditPolicySubcategory"{
        }
    }
    if($Include_Biometrics){
        XOAPMsSecBaselineW2k19Any1809Biometrics "Security Baseline - Biometrics"{
        }
    }
    if($Include_ConnectionManager){
        XOAPMsSecBaselineW2k19Any1809ConnectionManager "Security Baseline - ConnectionManager"{
        }
    }
    if($Include_CredentialsDelegation){
        XOAPMsSecBaselineW2k19Any1809CredentialsDelegation "Security Baseline - CredentialsDelegation"{
        }
    }
    if($Include_DeviceGuard){
        XOAPMsSecBaselineW2k19Any1809DeviceGuard "Security Baseline - DeviceGuard"{
        }
    }
    if($Include_EarlyLaunch){
        XOAPMsSecBaselineW2k19Any1809EarlyLaunch "Security Baseline - EarlyLaunch"{
        }
    }
    if($Include_EventLog){
        XOAPMsSecBaselineW2k19Any1809EventLog "Security Baseline - EventLog"{
        }
    }
    if($Include_Explorer){
        XOAPMsSecBaselineW2k19Any1809Explorer "Security Baseline - Explorer"{
        }
    }
    if($Include_GroupPolicy){
        XOAPMsSecBaselineW2k19Any1809GroupPolicy "Security Baseline - GroupPolicy"{
        }
    }
    if($Include_IE){
        XOAPMsSecBaselineW2k19Any1809IE "Security Baseline - IE"{
        }
    }
    if($Include_Installer){
        XOAPMsSecBaselineW2k19Any1809Installer "Security Baseline - Installer"{
        }
    }
    if($Include_KernelDMAProtection){
        XOAPMsSecBaselineW2k19Any1809KernelDMAProtection "Security Baseline - KernelDMAProtection"{
        }
    }
    if($Include_LDAP){
        XOAPMsSecBaselineW2k19Any1809LDAP "Security Baseline - LDAP"{
        }
    }
    if($Include_LSA){
        XOAPMsSecBaselineW2k19Any1809LSA "Security Baseline - LSA"{
        }
    }
    if($Include_Netbt){
        XOAPMsSecBaselineW2k19Any1809Netbt "Security Baseline - Netbt"{
        }
    }
    if($Include_Netlogon){
        XOAPMsSecBaselineW2k19Any1809Netlogon "Security Baseline - Netlogon"{
        }
    }
    if($Include_NetworkProvider){
        XOAPMsSecBaselineW2k19Any1809NetworkProvider "Security Baseline - NetworkProvider"{
        }
    }
    if($Include_Personalization){
        XOAPMsSecBaselineW2k19Any1809Personalization "Security Baseline - Personalization"{
        }
    }
    if($Include_PowerShell){
        XOAPMsSecBaselineW2k19Any1809PowerShell "Security Baseline - PowerShell"{
        }
    }
    if($Include_RPC){
        XOAPMsSecBaselineW2k19Any1809RPC "Security Baseline - RPC"{
        }
    }
    if($Include_SecurityOption){
        XOAPMsSecBaselineW2k19Any1809SecurityOption "Security Baseline - SecurityOption"{
        }
    }
    if($Include_SessionManager){
        XOAPMsSecBaselineW2k19Any1809SessionManager "Security Baseline - SessionManager"{
        }
    }
    if($Include_SMB){
        XOAPMsSecBaselineW2k19Any1809SMB "Security Baseline - SMB"{
        }
    }
    if($Include_System){
        XOAPMsSecBaselineW2k19Any1809System "Security Baseline - System"{
        }
    }
    if($Include_Tcpip){
        XOAPMsSecBaselineW2k19Any1809Tcpip "Security Baseline - Tcpip"{
        }
    }
    if($Include_Tcpip6){
        XOAPMsSecBaselineW2k19Any1809Tcpip6 "Security Baseline - Tcpip6"{
        }
    }
    if($Include_TerminalService){
        XOAPMsSecBaselineW2k19Any1809TerminalService "Security Baseline - TerminalService"{
        }
    }
    if($Include_UserRightsAssignment){
        XOAPMsSecBaselineW2k19Any1809UserRightsAssignment "Security Baseline - UserRightsAssignment"{
        }
    }
    if($Include_WDigest){
        XOAPMsSecBaselineW2k19Any1809WDigest "Security Baseline - WDigest"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMsSecBaselineW2k19Any1809WindowsDefender "Security Baseline - WindowsDefender"{
        }
    }
    if($Include_WindowsFirewall){
        XOAPMsSecBaselineW2k19Any1809WindowsFirewall "Security Baseline - WindowsFirewall"{
        }
    }
    if($Include_WindowsInkWorkspace){
        XOAPMsSecBaselineW2k19Any1809WindowsInkWorkspace "Security Baseline - WindowsInkWorkspace"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMsSecBaselineW2k19Any1809WindowsSearch "Security Baseline - WindowsSearch"{
        }
    }
    if($Include_Winlogon){
        XOAPMsSecBaselineW2k19Any1809Winlogon "Security Baseline - Winlogon"{
        }
    }
    if($Include_WinRM){
        XOAPMsSecBaselineW2k19Any1809WinRM "Security Baseline - WinRM"{
        }
    }
}
