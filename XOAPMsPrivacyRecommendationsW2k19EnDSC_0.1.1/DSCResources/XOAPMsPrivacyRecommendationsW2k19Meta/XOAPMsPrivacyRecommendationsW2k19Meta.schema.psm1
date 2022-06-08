<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows Server 2019 (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMsPrivacyRecommendationsW2k19Meta".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​

.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​
​
.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPMsPrivacyRecommendationsW2k19EnDSC
Resource Name  : XOAPMsPrivacyRecommendationsW2k19Meta.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
#>
configuration XOAPMsPrivacyRecommendationsW2k19Meta
{
    param(
        [bool] $Include_Advertisement,
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
        [bool] $Include_Notifications,
        [bool] $Include_OneDrive,
        [bool] $Include_Personalization,
        [bool] $Include_RootCertificateUpdate,
        [bool] $Include_Speech,
        [bool] $Include_StorageHealth,
        [bool] $Include_Synchronization,
        [bool] $Include_System,
        [bool] $Include_Teredo,
        [bool] $Include_Time,
        [bool] $Include_WindowsDefender,
        [bool] $Include_WindowsSearch,
        [bool] $Include_WindowsStore,
        [bool] $Include_WindowsUpdate
    )

    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'XOAPMsPrivacyRecommendationsW2k19EnDSC'

    if($Include_Advertisement){
        XOAPMsPrivacyRecommendationsW2k19Advertisement "Privacy Recommendations - Advertisement Settings"{
        }
    }
    if($Include_AppPrivacy){
        XOAPMsPrivacyRecommendationsW2k19AppPrivacy "Privacy Recommendations - AppPrivacy Settings"{
        }
    }
    if($Include_AuthenticationService){
        XOAPMsPrivacyRecommendationsW2k19AuthenticationService "Privacy Recommendations - AuthenticationService Settings"{
        }
    }
    if($Include_CloudContent){
        XOAPMsPrivacyRecommendationsW2k19CloudContent "Privacy Recommendations - CloudContent Settings"{
        }
    }
    if($Include_DataCollection){
        XOAPMsPrivacyRecommendationsW2k19DataCollection "Privacy Recommendations - DataCollection Settings"{
        }
    }
    if($Include_Explorer){
        XOAPMsPrivacyRecommendationsW2k19Explorer "Privacy Recommendations - Explorer Settings"{
        }
    }
    if($Include_IE){
        XOAPMsPrivacyRecommendationsW2k19IE "Privacy Recommendations - IE Settings"{
        }
    }
    if($Include_KMS){
        XOAPMsPrivacyRecommendationsW2k19KMS "Privacy Recommendations - KMS Settings"{
        }
    }
    if($Include_Locate){
        XOAPMsPrivacyRecommendationsW2k19Locate "Privacy Recommendations - Locate Settings"{
        }
    }
    if($Include_Maps){
        XOAPMsPrivacyRecommendationsW2k19Maps "Privacy Recommendations - Maps Settings"{
        }
    }
    if($Include_Metadata){
        XOAPMsPrivacyRecommendationsW2k19Metadata "Privacy Recommendations - Metadata Settings"{
        }
    }
    if($Include_MicrosoftEdge){
        XOAPMsPrivacyRecommendationsW2k19MicrosoftEdge "Privacy Recommendations - MicrosoftEdge Settings"{
        }
    }
    if($Include_NetworkConnectivity){
        XOAPMsPrivacyRecommendationsW2k19NetworkConnectivity "Privacy Recommendations - NetworkConnectivity Settings"{
        }
    }
    if($Include_Notifications){
        XOAPMsPrivacyRecommendationsW2k19Notifications "Privacy Recommendations - Notifications Settings"{
        }
    }
    if($Include_OneDrive){
        XOAPMsPrivacyRecommendationsW2k19OneDrive "Privacy Recommendations - OneDrive Settings"{
        }
    }
    if($Include_Personalization){
        XOAPMsPrivacyRecommendationsW2k19Personalization "Privacy Recommendations - Personalization Settings"{
        }
    }
    if($Include_RootCertificateUpdate){
        XOAPMsPrivacyRecommendationsW2k19RootCertificateUpdate "Privacy Recommendations - RootCertificateUpdate Settings"{
        }
    }
    if($Include_Speech){
        XOAPMsPrivacyRecommendationsW2k19Speech "Privacy Recommendations - Speech Settings"{
        }
    }
    if($Include_StorageHealth){
        XOAPMsPrivacyRecommendationsW2k19StorageHealth "Privacy Recommendations - StorageHealth Settings"{
        }
    }
    if($Include_Synchronization){
        XOAPMsPrivacyRecommendationsW2k19Synchronization "Privacy Recommendations - Synchronization Settings"{
        }
    }
    if($Include_System){
        XOAPMsPrivacyRecommendationsW2k19System "Privacy Recommendations - System Settings"{
        }
    }
    if($Include_Teredo){
        XOAPMsPrivacyRecommendationsW2k19Teredo "Privacy Recommendations - Teredo Settings"{
        }
    }
    if($Include_Time){
        XOAPMsPrivacyRecommendationsW2k19Time "Privacy Recommendations - Time Settings"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMsPrivacyRecommendationsW2k19WindowsDefender "Privacy Recommendations - WindowsDefender Settings"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMsPrivacyRecommendationsW2k19WindowsSearch "Privacy Recommendations - WindowsSearch Settings"{
        }
    }
    if($Include_WindowsStore){
        XOAPMsPrivacyRecommendationsW2k19WindowsStore "Privacy Recommendations - WindowsStore Settings"{
        }
    }
    if($Include_WindowsUpdate){
        XOAPMsPrivacyRecommendationsW2k19WindowsUpdate "Privacy Recommendations - WindowsUpdate Settings"{
        }
    }
}
