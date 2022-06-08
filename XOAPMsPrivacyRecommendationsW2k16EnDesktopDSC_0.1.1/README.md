# Automatic Root Certificates Update

[The Automatic Root Certificates Update component is designed to automatically check the list of trusted authorities on Windows Update to see if an update is available. For more information, see Automatic Root Certificates Update Configuration. Although not recommended, you can turn off Automatic Root Certificates Update, which also prevents updates to the disallowed certificate list and the pin rules list.](https://technet.microsoft.com/library/cc733922.aspx)

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot_**

> Type: DWORD
> Name: DisableRootAutoUpdate
> Value: 1

# Cortana and Search

## Allow Cortana

### Choose whether to let Cortana install and run on the device

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search_**

> Type: DWORD
> Name: AllowCortana
> Value: 0

## Allow search and Cortana to use location

### Choose whether Cortana and Search can provide location-aware search results

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search_**

> Type: DWORD
> Name: AllowSearchToUseLocation
> Value: 0

## Do not allow web search

### Choose whether to search the web from Windows Desktop Search

> Type: DWORD
> Name: DisableWebSearch
> Value: 1

## Don't search the web or display web results in Search

### Choose whether to search the web from Cortana

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search_**

> Type: DWORD
> Name: ConnectedSearchUseWeb
> Value 0

# Date & Time

## You can prevent Windows from setting the time automatically

Path: **_HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters_**

> Type: SZ
> Name: Type
> Value: NoSync

## Disable the synchronization

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient_**

> Type: DWORD
> Name: Enabled
> Value: 0

# Device metadata retrieval

## To prevent Windows from retrieving device metadata from the Internet

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Device Metadata_**

> Type: DWORD
> Name: PreventDeviceMetadataFromNetwork
> Value: 1

# Font streaming

## Fonts that are included in Windows but that are not stored on the local device can be downloaded on demand

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System_**

> Type: DWORD
> Name: EnableFontProviders
> Value: 0

**Note
After you apply this policy, you must restart the device for it to take effect.**

# Insider Preview builds

## Disable early access to releases of Windows 10

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds_**

> Type: DWORD
> Name: AllowBuildPreview
> Value: 0

# Internet Explorer

## Turn on Suggested Sites

### Choose whether an employee can configure Suggested Sites

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Suggested Sites_**

> Type: DWORD
> Name Enabled
> Value: 0

## Allow Microsoft services to provide enhanced suggestions as the user types in the Address Bar

### Choose whether an employee can configure enhanced suggestions, which are presented to the employee as they type in the Address Bar

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer_**

> Type DWORD
> Name: AllowServicePoweredQSA
> Value: 0

## Turn off the auto-complete feature for web addresses

### Choose whether auto-complete suggests possible matches when employees are typing web address in the Address Bar.\*\*

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete_**

> Type: SZ
> Name: AutoSuggest
> Value: No

## Turn off browser geolocation

### Choose whether websites can request location data from Internet Explorer

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation_**

> Type: DWORD
> Name: PolicyDisableGeolocation
> Value: 1

## Prevent managing Windows Defender SmartScreen

### Choose whether employees can manage the Windows Defender SmartScreen in Internet Explorer

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter_**

> Type: DWORD
> Name: EnabledV9
> Value: 0

## Compatibility View

### Choose whether employees can configure Compatibility View (IE)

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\BrowserEmulation Explorer\BrowserEmulation_**

> Type: DWORD
> Name: DisableSiteListEditing
> Value: 1

## Turn off the flip ahead with page prediction feature

### Choose whether an employee can swipe across a screen or click forward to go to the next pre-loaded page of a website

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead_**

> Type: DWORD
> Name: Enabled
> Value: 0

## Turn off background synchronization for feeds and Web Slices

### Choose whether to have background synchronization for feeds and Web Slices

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds_**

> Type: DWORD
> Name: BackgroundSyncStatus
> Value: 0

## Allow Online Tips

### Enables or disables the retrieval of online tips and help for the Settings app

Path: **_HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explore_**

> Type: DWORD
> Name: AllowOnlineTips
> Value: 0

See "HKEY_Current_User_Entries.md"

### 8.1 ActiveX control blocking[](https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#81-activex-control-blocking)

# Live Tiles

## Turn off live tiles

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications_**

> Type: DWORD
> Name: NoCloudApplicationNotification
> Value: 1

# Microsoft Account

**Use the below setting to prevent communication to the Microsoft Account cloud authentication service. Many apps and system components that depend on Microsoft Account authentication may lose functionality. Some of them could be in unexpected ways. For example, Windows Update will no longer offer feature updates to devices running Windows 10 1709 or higher. See [Feature updates are not being offered while other updates are](https://docs.microsoft.com/windows/deployment/update/windows-update-troubleshooting#feature-updates-are-not-being-offered-while-other-updates-are).**

## Disable the Microsoft Account Sign-In Assistant

Path: **_HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\wlidsvc_**

> Type: DWORD
> Name: Start
> Value: 4

# Network Connection Status Indicator

Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to [http://www.msftconnecttest.com/connecttest.txt](http://www.msftconnecttest.com/connecttest.txt) to determine if the device can communicate with the Internet. See the [Microsoft Networking Blog](https://techcommunity.microsoft.com/t5/Networking-Blog/bg-p/NetworkingBlog) to learn more.

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator_**

> Type: DWORD
> Name: NoActiveProbe
> Value: 1

# OneDrive

## Turn off OneDrive in your organization

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive_**

> Type: DWORD
> Name: DisableFileSynchNGSC
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OneDrive_**

> Type: DWORD
> Name: PreventNetworkTrafficPreUserSignIn
> Value: 1

# Software Protection Platform

Enterprise customers can manage their Windows activation status with volume licensing using an on-premises Key Management Server. You can opt out of sending KMS client activation data to Microsoft automatically by doing one of the following:

## Windows 10

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform_**

> Type: DWORD
> Name: NoGenTicket
> Value: 1

## Windows 2019 or later

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform_**

> Type: DWORD
> Name: NoGenTicket
> Value: 1

## Windows Server 2016

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform_**

> Type: DWORD
> Name: NoAcquireGT
> Value: 1

# Teredo

You can disable Teredo by using Group Policy or by using the netsh.exe command. For more info on Teredo, see [Internet Protocol Version 6, Teredo, and Related Technologies](https://technet.microsoft.com/library/cc722030.aspx).

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition_**

> Type: String
> Name: Teredo_State
> Value: Disabled

# Windows Defender

## Required Steps BEFORE setting the Windows Defender Group Policy or RegKey on Windows 10 version 1903

1. Ensure Windows and Windows Defender are fully up to date.
2. Search the Start menu for "Tamper Protection" by clicking on the search icon next to the Windows Start button. Then scroll down to the Tamper Protection toggle and turn it **Off**. This will allow you to modify the Registry key and allow the Group Policy to make the setting. Alternatively, you can go to **Windows Security Settings -> Virus & threat protection, click on Manage Settings** link and then scroll down to the Tamper Protection toggle to set it to **Off**.

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet\SpyNetReporting_**

Set the value for "SpyNetReporting" to "0"

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender_**

Delete the registry "Updates".

### Stop sending file samples to Microsoft

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet_**

Change the Value of "SubmitSamplesConsent" to "2" (Never send).

### Stop downloading Definition Updates

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates_**

> Type: String
> Name: FallbackOrder
> Value: FileShares

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates_**

Delete the Value of "DefinitionUpdateFileSharesSources" if existent.

### Turn off Malicious Software Reporting Tool (MSRT) diagnostic data

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MRT_**

Set "DontReportInfectionInformation" value to "1".

### Turn off Enchanced Notifications

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting_**

> Type: DWORD
> Name: DisableEnhancedNotifications
> Value: 1

## Windows Defender SmartScreen

### To disable Windows Defender Smartscreen

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System_**

> Type: DWORD
> Name: EnableSmartScreen
> Value: 0

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen_**

> Type: DWORD
> Name: ConfigureAppInstallControlEnabled
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen_**

> Type: String
> Name: ConfigureAppInstallControl
> Value: Anywhere

# Microsoft Store

You can turn off the ability to launch apps from the Microsoft Store that were preinstalled or downloaded. This will also turn off automatic app updates, and the Microsoft Store will be disabled. In addition, new email accounts cannot be created by clicking **Settings** > **Accounts** > **Email & app accounts** > **Add an account**. On Windows Server 2016, this will block Microsoft Store calls from Universal Windows Apps.

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore_**

> Type: DWORD
> Name: DisableStoreApps
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore_**

> Type: DWORD
> Name: AutoDownload
> Value: 2

# Apps for websites

**You can turn off apps for websites, preventing customers who visit websites that are registered with their associated app from directly launching the app.**

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System_**

> Type: DWORD
> Name: EnableAppUriHandlers
> Value: 0

# Windows Update

## You can turn off Windows Update by setting the following registry entries

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate_**

> Type: DWORD
> Name: DoNotConnectToWindowsUpdateInternetLocations
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate_**

> Type: DWORD
> Name: DisableWindowsUpdateAccess
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate_**

> Type: String
> Name: WUServer
> Value: " "

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate_**

> Type: String
> Name: WUStatusServer
> Value: " "

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate_**

> Type: String
> Name: UpdateServiceUrlAlternate
> Value: " "

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU_**

> Type: DWORD
> Name: UseWUServer
> Value: 1

End of readme
