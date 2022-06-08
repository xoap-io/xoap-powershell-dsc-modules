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

# Find My Device

## Turn off Find My Device

Path: **\*HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FindMyDevice**

> Type: DWORD
> Name: AllowFindMyDevice
> Value: 0

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

# License Manager

## Provides infrastructure support for the Microsoft Store

### Turn off License Manager related traffic

Path: **_HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LicenseManager_**

> Type: DWORD
> Name: Start
> Value: 4

**The value 4 is to disable the service. Here are the available options to set the registry:**

    -   **0x00000000** = Boot

    -   **0x00000001** = System

    -   **0x00000002** = Automatic

    -   **0x00000003** = Manual

    -   **0x00000004** = Disabled

# Live Tiles

## Turn off live tiles

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications_**

> Type: DWORD
> Name: NoCloudApplicationNotification
> Value: 1

# Mail synchronization

## Turn off the Windows Mail app

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Mail_**

> Type: DWORD
> Name: ManualLaunchAllowed
> Value: 0

# Microsoft Account

**Use the below setting to prevent communication to the Microsoft Account cloud authentication service. Many apps and system components that depend on Microsoft Account authentication may lose functionality. Some of them could be in unexpected ways. For example, Windows Update will no longer offer feature updates to devices running Windows 10 1709 or higher. See [Feature updates are not being offered while other updates are](https://docs.microsoft.com/windows/deployment/update/windows-update-troubleshooting#feature-updates-are-not-being-offered-while-other-updates-are).**

## Disable the Microsoft Account Sign-In Assistant

Path: **_HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\wlidsvc_**

> Type: DWORD
> Name: Start
> Value: 4

# Microsoft Edge Group Policies

## Allow Address Bar drop-down list suggestions

### Choose whether to show the address bar drop-down list\*\*

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI_**

> Type: DWORD
> Name: ShowOneNox
> Value: 0

## Allow configuration updates for the Books Library

### Choose whether configuration updates are done for the Books Library

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BooksLibrary_**

> Type: DWORD
> Name: AllowConfigurationUpdateForBooksLibrary
> Value: 0

## Configure Autofill

### Choose whether employees can use autofill on websites

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main_**

> Type: SZ
> Name: Use FormSuggest
> Value: No

## Configure Do Not Track

### Choose whether employees can send Do Not Track headers

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main_**

> Type: DWORD
> Name: DoNotTrack
> Value: 1

## Configure Password Manager

### Choose whether employees can save passwords locally on their devices

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main_**

> Type: SZ
> Name: FormSuggest Passwords
> Value: No

## Configure search suggestions in Address Bar

### Choose whether the Address Bar shows search suggestions

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\SearchScopes_**

> Type: DWORD
> Name: ShowSearchSuggestionsGlobal
> Value: 0

## Configure Windows Defender SmartScreen (Windows 10, version 1703)

### Choose whether Windows Defender SmartScreen is turned on or off

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter_**

> Type: DWORD
> Name: EnabledV9
> Value: 0

## Allow web content on New Tab page

### Choose whether a new tab page appears

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI_**

> Type: DWORD
> Name: AllowWebContentOnNewTabPage
> Value: 0

## Configure corporate Home pages

### Choose the Start page for domain-joined devices

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings_**

> Type: SZ
> Name: ProvisionedHomePages
> Value: <about:blank>

## Prevent the First Run webpage from opening on Microsoft Edge

### Choose whether employees see the First Run webpage

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main_**

> Type: DWORD
> Name: PreventFirstRunPage
> Value: 1

## Choose whether employees can configure Compatibility View

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BrowserEmulation_**

> Type: DWORD
> Name: MSCompatibilityMode
> Value: 0

For a complete list of the Microsoft Edge policies, see [Available policies for Microsoft Edge](https://docs.microsoft.com/microsoft-edge/deploy/available-policies).

# Network Connection Status Indicator

Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to [http://www.msftconnecttest.com/connecttest.txt](http://www.msftconnecttest.com/connecttest.txt) to determine if the device can communicate with the Internet. See the [Microsoft Networking Blog](https://techcommunity.microsoft.com/t5/Networking-Blog/bg-p/NetworkingBlog) to learn more.

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator_**

> Type: DWORD
> Name: NoActiveProbe
> Value: 1

# Offline maps

## Turn off the ability to download and update offline maps

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Maps_**

> Type: DWORD
> Name: AutoDownloadAndUpdateMapData
> Value: 0

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Maps_**

> Type: DWORD
> Name AllowUntriggeredNetworkTrafficOnSettingsPage
> Value: 0

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

# Preinstalled apps

Some preinstalled apps get content before they are opened to ensure a great experience. You can remove these using the steps in this section.
(See Uninstall_PreInstalledApps.ps1)

# Settings > Privacy

**Use Settings > Privacy to configure some settings that may be important to your organization. Except for the Feedback & Diagnostics page, these settings must be configured for every user account that signs into the PC.**

## General (Includes options that don't fall into other areas)

### Let apps use advertising ID to make ads more interesting to you based on your app usage (turning this off will reset your ID)

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo_**

> Type: DWORD
> Name: Enabled
> Value: 0

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo_**

> Type: DWORD
> Name DisabledByGroupPolicy
> Value: 1

### Let websites provide locally relevant content by accessing my language list

See "HKEY_Current_User_Entries.md"

### Let Windows track app launches to improve Start and search results

See "HKEY_Current_User_Entries.md"

### Let apps use my advertising ID for experiences across apps (turning this off will reset your ID

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo_**

> Type: DWORD
> Name: Enabled
> Value: 0

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo_**

> Type: DWORD
> Name: DisabledByGroupPolicy
> Value: 1

### Turn on Windows Defender SmartScreen to check web content (URLs) that Microsoft Store apps use

See "HKEY_Current_User_Entries.md"

### Send Microsoft info about how I write to help us improve typing and writing in the future

See "HKEY_Current_User_Entries.md"

### Let apps on my other devices open apps and continue experiences on this device

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System_**

> Type: DWORD
> Name: EnabledCdp
> Value: 0

## Location

**In the Location area, you choose whether devices have access to location-specific sensors and which apps have access to the device's location.**

### Turn off Location for this device

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessLocation
> Value: 2

### Turn off Location

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LocationAndSensors_**

> Type: DWORD
> Name: DisableLocation
> Value: 1

## Camera

**In the Camera area, you can choose which apps can access a device's camera.**

### Turn off Let apps use my camera

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD:
> Name: LetAppsAccessCamera
> Value: 2

## Microphone

**In the Microphone area, you can choose which apps can access a device's microphone.**

### Turn off Let apps use my microphone

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessMicrophone
> Value: 2

## Notifications

### Turn off notifications network usage

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications_**

> Type: DWORD
> Name: NoCloudApplicationNotification
> Value: 1

### Turn off Let apps access my notifications

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessNotifications
> Value: 2

## Speech

**In the Speech area, you can configure the functionality as such:**

### Turn off dictation of your voice, speaking to Cortana and other apps, and to prevent sending your voice input to Microsoft Speech services

See "HKEY_Current_User_Entries.md"

**If you're running at Windows 10, version 1703 up to and including Windows 10, version 1803, you can turn off updates to the speech recognition and speech synthesis models:**

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Speech_**

> Type: DWORD
> Name: AllowSpeechModelUpdate
> Value: 0

## Account info

**In the Account Info area, you can choose which apps can access your name, picture, and other account info.**

### Turn off Let apps access my name, picture, and other account info

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessAccountInfo
> Value: 2

## Contacts

**In the Contacts area, you can choose which apps can access an employee's contacts list.**

### Turn off Choose apps that can access contacts

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessContacts
> Value: 2

## Calendar

**In the Calendar area, you can choose which apps have access to an employee's calendar.**

### Turn off Let apps access my calendar

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessCalendar
> Value: 2

## Call history

**In the Call history area, you can choose which apps have access to an employee's call history.**

### Turn off Let apps access my call history

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessCallHistory
> Value: 2

## Email

**In the Email area, you can choose which apps have access and can send email.**

### Turn off Let apps access and send email

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessEmail
> Value: 2

## Messaging

**In the Messaging area, you can choose which apps can read or send messages.**

### Turn off Let apps read or send messages (text or MMS)

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessMessaging
> Value: 2

### Turn off Message Sync

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Messaging_**

> Type: DWORD
> Name: AllowMessageSync
> Value: 0

## Phone calls

**In the Phone calls area, you can choose which apps can make phone calls.**

### To turn off Let apps make phone calls

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessPhone
> Value: 2

## Radios

**In the Radios area, you can choose which apps can turn a device's radio on or off.**

### To turn off Let apps control radios

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessRadios
> Value: 2

## Other devices

**In the Other Devices area, you can choose whether devices that aren't paired to PCs, such as an Xbox One, can share and sync info.**

### Turn off Let apps automatically share and sync info with wireless devices that don't explicitly pair with your PC, tablet, or phone

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsSyncWithDevices
> Value: 2

### Turn off Let your apps use your trusted devices (hardware you've already connected, or comes with your PC, tablet, or phone)

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessTrustedDevices
> Value: 2

## Feedback & diagnostics

In the Feedback & Diagnostics area, you can choose how often you're asked for feedback and how much diagnostic and usage information is sent to Microsoft. If you're looking for content on what each diagnostic data level means and how to configure it in your organization, see [Configure Windows diagnostic data in your organization](https://docs.microsoft.com/en-us/windows/privacy/configure-windows-diagnostic-data-in-your-organization).

### To change how frequently Windows should ask for my feedback

To change from **Automatically (Recommended)**

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection_**

> Type: DWORD
> Name: DoNotShowFeedbackNotifications
> Value: 1

or

See "HKEY_Current_User_Entries.md"

### To change the level of diagnostic and usage data sent when you "Send your device data to Microsoft"

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection_**

> Type: DWORD
> Name: AllowTelemetry
> Value: 0

### Turn off tailored experiences with relevant tips and recommendations by using your diagnostics data

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent_**

> Type: DWORD
> Name: DisableWindowsConsumersFeatures
> Value: 1

and

See "HKEY_Current_User_Entries.md"

## Background apps

**In the Background Apps area, you can choose which apps can run in the background.**

### Turn it off

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsRunInBackground
> Value: 2

## Motion

**In the Motion area, you can choose which apps have access to your motion data.**

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessMotion
> Value: 2

## Tasks

**In the Tasks area, you can choose which apps have access to your tasks.**

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsAccessTasks
> Value: 2

## App Diagnostics

**In the App diagnostics area, you can choose which apps have access to your diagnostic information.**

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsGetDiagnosticInfo
> Value: 2

## Inking & Typing

No Group Policy for this
See "HKEY_Current_User_Entries.md"

## Activity History

**In the Activity History area, you can choose turn Off tracking of your Activity History.**

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System_**

> Type: DWORD
> Name: EnableActivityFeed
> Value: 2

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System_**

> Type: DWORD
> Name: PublishUserActivities
> Value: 2

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System_**

> Type: DWORD
> Name: UploadUserActivities
> Value: 2

## Voice Activation

**In the Voice activation area, you can choose turn Off apps ability to listen for a Voice keyword.**

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsActivateWithVoice
> Value: 2

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy_**

> Type: DWORD
> Name: LetAppsActivateWithVoiceAboveLock
> Value: 2

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

# Storage health

Enterprise customers can manage updates to the Disk Failure Prediction Model

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\StorageHealth_**

> Type: DWORD
> Name: AllowDiskHealthModelUpdates
> Value: 0

# Sync your settings

## Control if your settings are synchronized

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\SettingSync_**

> Type: DWORD
> Name: DisableSettingSync
> Value: 2

and

Path: **_HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\SettingSync_**

> Type: DWORD
> Name: DisableSettingSyncUserOverride
> Value: 1

### Turn off Messaging cloud sync

See "HKEY_Current_User_Entries.md"

# Teredo

You can disable Teredo by using Group Policy or by using the netsh.exe command. For more info on Teredo, see [Internet Protocol Version 6, Teredo, and Related Technologies](https://technet.microsoft.com/library/cc722030.aspx).

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition_**

> Type: String
> Name: Teredo_State
> Value: Disabled

# Wi-Fi Sense

Beginning with Windows 10, version 1803, Wi-Fi Sense is no longer available. The following section only applies to Windows 10, version 1709 and prior. Please see [Connecting to open Wi-Fi hotspots in Windows 10](https://privacy.microsoft.com/en-us/windows-10-open-wi-fi-hotspots) for more details.

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

# Windows Spotlight

Windows Spotlight provides features such as different background images and text on the lock screen, suggested apps, Microsoft account notifications, and Windows tips. You can control it by using the user interface or Group Policy.

See "HKEY_Current_User_Entries.md"

and

Path: **_HKEY_Local_Machine\SOFTWARE\Policies\Microsoft\Windows\Personalization_**

> Type: DWORD
> Name: NoLockScreen
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization_**

> Type: String
> Name: LockScreenImage
> Value: C:\windows\web\screen\lockscreen.jpg

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization_**

> Type: DWORD
> Name: LockScreenOverlaysDisabled
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent_**

> Type: DWORD
> Name: DisableSoftLanding
> Value: 1

and

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent_**

> Type: DWORD
> Name: DisableWindowsConsumerFeatures
> Value: 1

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

# Windows Update Delivery Optimization

Windows Update Delivery Optimization lets you get Windows updates and Microsoft Store apps from sources in addition to Microsoft, which not only helps when you have a limited or unreliable Internet connection, but can also help you reduce the amount of bandwidth needed to keep all of your organization's PCs up-to-date. If you have Delivery Optimization turned on, PCs on your network may send and receive updates and apps to other PCs on your local network, if you choose, or to PCs on the Internet.

**By default, PCs running Windows 10 Enterprise and Windows 10 Education will only use Delivery Optimization to get and receive updates for PCs and apps on your local network.**

Path: **_HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization_**

> Type: DWORD
> Name: DODownloadMode
> Value: 100

100 = Bypass (Use BITS instead of Windows Update Delivery Optimization. **Set to Bypass** to restrict traffic.)

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
