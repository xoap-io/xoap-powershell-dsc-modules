<#
.SYNOPSIS​
This is a generated Microsoft-recommended privacy configuration based on Windows 10 Enterprise (EN)
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration. In this case, the name of the configuration is "XOAPMSPrivacyRecommendationsMeta".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​
This generated config enables enterprise security administrators to effectively manage their enterprise’s Group Policy Objects (GPOs).​
Administrators can compare their current GPOs with Microsoft-recommended GPO baselines or other baselines, edit them, store them in GPO backup file format,​
and apply them via a domain controller or inject them directly into testbed hosts to test their effects. ​
​
.COMPONENT​
Information about PowerShell Modules to be required. ​
Powershell Module: PSDesiredStateConfiguration​
​
.EXAMPLE
Get-DscResource -Module XOAP*

.NOTES
For more information about advanced functions, call Get-Help with any
of the topics in the links listed below.
Module Name    : XOAPMsPrivacyRecommendationsW10EntW10EntEnDSC
Resource Name  : XOAPMSPrivacyRecommendationsMeta.schema.psm1
Author         : info@XOAP.io
​
.LINK​
https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
#>
configuration XOAPMSPrivacyRecommendationsW10EntMeta
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
    Import-DSCResource -ModuleName 'XOAPMSPrivacyRecommendationsW10EntEnDSC'

    if($Include_Advertisement){
        XOAPMSPrivacyRecommendationsW10EntAdvertisement "Privacy Recommendations - Advertisement Settings"{
        }
    }
    if($Include_AppPrivacy){
        XOAPMSPrivacyRecommendationsW10EntAppPrivacy "Privacy Recommendations - AppPrivacy Settings"{
        }
    }
    if($Include_AuthenticationService){
        XOAPMSPrivacyRecommendationsW10EntAuthenticationService "Privacy Recommendations - AuthenticationService Settings"{
        }
    }
    if($Include_CloudContent){
        XOAPMSPrivacyRecommendationsW10EntCloudContent "Privacy Recommendations - CloudContent Settings"{
        }
    }
    if($Include_DataCollection){
        XOAPMSPrivacyRecommendationsW10EntDataCollection "Privacy Recommendations - DataCollection Settings"{
        }
    }
    if($Include_Explorer){
        XOAPMSPrivacyRecommendationsW10EntExplorer "Privacy Recommendations - Explorer Settings"{
        }
    }
    if($Include_IE){
        XOAPMSPrivacyRecommendationsW10EntIE "Privacy Recommendations - IE Settings"{
        }
    }
    if($Include_KMS){
        XOAPMSPrivacyRecommendationsW10EntKMS "Privacy Recommendations - KMS Settings"{
        }
    }
    if($Include_Locate){
        XOAPMSPrivacyRecommendationsW10EntLocate "Privacy Recommendations - Locate Settings"{
        }
    }
    if($Include_Maps){
        XOAPMSPrivacyRecommendationsW10EntMaps "Privacy Recommendations - Maps Settings"{
        }
    }
    if($Include_Metadata){
        XOAPMSPrivacyRecommendationsW10EntMetadata "Privacy Recommendations - Metadata Settings"{
        }
    }
    if($Include_MicrosoftEdge){
        XOAPMSPrivacyRecommendationsW10EntMicrosoftEdge "Privacy Recommendations - MicrosoftEdge Settings"{
        }
    }
    if($Include_NetworkConnectivity){
        XOAPMSPrivacyRecommendationsW10EntNetworkConnectivity "Privacy Recommendations - NetworkConnectivity Settings"{
        }
    }
    if($Include_Notifications){
        XOAPMSPrivacyRecommendationsW10EntNotifications "Privacy Recommendations - Notifications Settings"{
        }
    }
    if($Include_OneDrive){
        XOAPMSPrivacyRecommendationsW10EntOneDrive "Privacy Recommendations - OneDrive Settings"{
        }
    }
    if($Include_Personalization){
        XOAPMSPrivacyRecommendationsW10EntPersonalization "Privacy Recommendations - Personalization Settings"{
        }
    }
    if($Include_RootCertificateUpdate){
        XOAPMSPrivacyRecommendationsW10EntRootCertificateUpdate "Privacy Recommendations - RootCertificateUpdate Settings"{
        }
    }
    if($Include_Speech){
        XOAPMSPrivacyRecommendationsW10EntSpeech "Privacy Recommendations - Speech Settings"{
        }
    }
    if($Include_StorageHealth){
        XOAPMSPrivacyRecommendationsW10EntStorageHealth "Privacy Recommendations - StorageHealth Settings"{
        }
    }
    if($Include_Synchronization){
        XOAPMSPrivacyRecommendationsW10EntSynchronization "Privacy Recommendations - Synchronization Settings"{
        }
    }
    if($Include_System){
        XOAPMSPrivacyRecommendationsW10EntSystem "Privacy Recommendations - System Settings"{
        }
    }
    if($Include_Teredo){
        XOAPMSPrivacyRecommendationsW10EntTeredo "Privacy Recommendations - Teredo Settings"{
        }
    }
    if($Include_Time){
        XOAPMSPrivacyRecommendationsW10EntTime "Privacy Recommendations - Time Settings"{
        }
    }
    if($Include_WindowsDefender){
        XOAPMSPrivacyRecommendationsW10EntWindowsDefender "Privacy Recommendations - WindowsDefender Settings"{
        }
    }
    if($Include_WindowsSearch){
        XOAPMSPrivacyRecommendationsW10EntWindowsSearch "Privacy Recommendations - WindowsSearch Settings"{
        }
    }
    if($Include_WindowsStore){
        XOAPMSPrivacyRecommendationsW10EntWindowsStore "Privacy Recommendations - WindowsStore Settings"{
        }
    }
    if($Include_WindowsUpdate){
        XOAPMSPrivacyRecommendationsW10EntWindowsUpdate "Privacy Recommendations - WindowsUpdate Settings"{
        }
    }
}
