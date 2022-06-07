<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows Server 2016 Desktop (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsPrivacyRecommendationsW2k16DesktopMeta".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​
​​
.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​
​
.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPMsPrivacyRecommendationsW2k16EnDesktopDSC
Resource Name  : XOAPMsPrivacyRecommendationsW2k16DesktopMeta.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services​
#>
configuration XOAPMsPrivacyRecommendationsW2k16DesktopMeta
{
    param(
        [bool] $Include_AppPrivacy,
        [bool] $Include_AuthenticationService,
        [bool] $Include_CloudContent,
        [bool] $Include_DataCollection,
        [bool] $Include_Explorer,
        [bool] $Include_IE,
        [bool] $Include_KMS,
        [bool] $Include_Locate,
        [bool] $Include_Maps,
        [bool] $Include_Metadata,
        [bool] $Include_MicrosoftEdge,
        [bool] $Include_NetworkConnectivity,
        [bool] $Include_OneDrive,
        [bool] $Include_Personalization,
        [bool] $Include_RootCertificateUpdate,
        [bool] $Include_System,
        [bool] $Include_Teredo,
        [bool] $Include_Time,
        [bool] $Include_WindowsDefender,
        [bool] $Include_WindowsSearch,
        [bool] $Include_WindowsStore,
        [bool] $Include_WindowsUpdate
    )

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'XOAPMsPrivacyRecommendationsW2k16EnDesktopDSC'

    if($Include_AppPrivacy){
        XOAPMsPrivacyRecommendationsW2k16DesktopAppPrivacy "Privacy Recommendations - AppPrivacy Settings"{
        }
    }
    if($Include_AuthenticationService){
        XOAPMsPrivacyRecommendationsW2k16DesktopAuthenticationService "Privacy Recommendations - AuthenticationService Settings"{
        }
    }
    if($Include_CloudContent){
        XOAPMsPrivacyRecommendationsW2k16DesktopCloudContent "Privacy Recommendations - CloudContent Settings"{
        }
    }
    if($Include_DataCollection){
        XOAPMsPrivacyRecommendationsW2k16DesktopDataCollection "Privacy Recommendations - DataCollection Settings"{
        }
    }
    if($Include_Explorer){
        XOAPMsPrivacyRecommendationsW2k16DesktopExplorer "Privacy Recommendations - Explorer Settings"{
        }
    }
    if($Include_IE){
        XOAPMsPrivacyRecommendationsW2k16DesktopIE "Privacy Recommendations - IE Settings"{
        }
    }
    if($Include_KMS){
        XOAPMsPrivacyRecommendationsW2k16DesktopKMS "Privacy Recommendations - KMS Settings"{
        }
    }
    if($Include_Metadata){
        XOAPMsPrivacyRecommendationsW2k16DesktopMetadata "Privacy Recommendations - Metadata Settings"{
        }
    }
    if($Include_NetworkConnectivity){
        XOAPMsPrivacyRecommendationsW2k16DesktopNetworkConnectivity "Privacy Recommendations - NetworkConnectivity Settings"{
        }
    }
    if($Include_OneDrive){
        XOAPMsPrivacyRecommendationsW2k16DesktopOneDrive "Privacy Recommendations - OneDrive Settings"{
        }
    }
    if($Include_Personalization){
        XOAPMsPrivacyRecommendationsW2k16DesktopPersonalization "Privacy Recommendations - Personalization Settings"{
        }
    }
    if($Include_RootCertificateUpdate){
        XOAPMsPrivacyRecommendationsW2k16DesktopRootCertificateUpdate "Privacy Recommendations - RootCertificateUpdate Settings"{
        }
    }
    if($Include_System){
        XOAPMsPrivacyRecommendationsW2k16DesktopSystem "Privacy Recommendations - System Settings"{
        }
    }
    if($Include_Teredo){
        XOAPMsPrivacyRecommendationsW2k16DesktopTeredo "Privacy Recommendations - Teredo Settings"{
        }
    }
    if($Include_Time){
        XOAPMsPrivacyRecommendationsW2k16DesktopTime "Privacy Recommendations - Time Settings"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMsPrivacyRecommendationsW2k16DesktopWindowsDefender "Privacy Recommendations - WindowsDefender Settings"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMsPrivacyRecommendationsW2k16DesktopWindowsSearch "Privacy Recommendations - WindowsSearch Settings"{
        }
    }
    if($Include_WindowsStore){
        XOAPMsPrivacyRecommendationsW2k16DesktopWindowsStore "Privacy Recommendations - WindowsStore Settings"{
        }
    }
    if($Include_WindowsUpdate){
        XOAPMsPrivacyRecommendationsW2k16DesktopWindowsUpdate "Privacy Recommendations - WindowsUpdate Settings"{
        }
    }
}
