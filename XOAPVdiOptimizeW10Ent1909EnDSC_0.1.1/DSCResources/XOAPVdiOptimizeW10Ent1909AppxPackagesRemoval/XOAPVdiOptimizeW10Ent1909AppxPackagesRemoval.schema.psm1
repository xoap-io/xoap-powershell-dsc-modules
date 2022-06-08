<#
.SYNOPSIS​
This is a Optimization DSC-Resource for a Virtual Desktop Infrastructure (VDI) role
​
.DESCRIPTION​
DSC configurations are PowerShell scripts that define a special type of function. To define a configuration, you use the PowerShell keyword Configuration.
In this case, the name of the configuration is "XOAPVdiOptimizeW10Ent1909AppxPackagesRemoval".​
The inner script blocks are called resource blocks and define the properties for the resources that it is configuring.​

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
Module Name    : XOAPVdiOptimizeW10Ent1909EnDSC
Resource Name  : XOAPVdiOptimizeW10Ent1909AppxPackagesRemoval.schema.psm1
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
configuration XOAPVdiOptimizeW10Ent1909AppxPackagesRemoval
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'AuditPolicyDSC'
    Import-DSCResource -ModuleName 'SecurityPolicyDSC'
    Import-DSCResource -ModuleName 'PowerShellAccessControl'
    Import-DSCResource -ModuleName 'WindowsDefender'

    Script Uninstall_BingWeatherScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.BingWeather
        }
        SetScript = {
            $Item = "Microsoft.BingWeather"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_GetHelpScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.GetHelp
        }
        SetScript = {
            $Item = "Microsoft.GetHelp"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_GetstartedScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.Getstarted
        }
        SetScript = {
            $Item = "Microsoft.Getstarted"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_MessagingScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.Messaging
        }
        SetScript = {
            $Item = "Microsoft.Messaging"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_MicrosoftOfficeHubScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.MicrosoftOfficeHub
        }
        SetScript = {
            $Item = "Microsoft.MicrosoftOfficeHub"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_MicrosoftSolitaireCollectionScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.MicrosoftSolitaireCollection
        }
        SetScript = {
            $Item = "Microsoft.MicrosoftSolitaireCollection"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_MicrosoftStickyNotesScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.MicrosoftStickyNotes
        }
        SetScript = {
            $Item = "Microsoft.MicrosoftStickyNotes"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_MSPaintScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.MSPaint
        }
        SetScript = {
            $Item = "Microsoft.MSPaint"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_OfficeOneNoteScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.Office.OneNote
        }
        SetScript = {
            $Item = "Microsoft.Office.OneNote"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_OneConnectScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.OneConnect
        }
        SetScript = {
            $Item = "Microsoft.OneConnect"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_PeopleScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.People
        }
        SetScript = {
            $Item = "Microsoft.People"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_Print3DScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.Print3D
        }
        SetScript = {
            $Item = "Microsoft.Print3D"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_SkypeAppScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.SkypeApp
        }
        SetScript = {
            $Item = "Microsoft.SkypeApp"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_WalletScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.Wallet
        }
        SetScript = {
            $Item = "Microsoft.Wallet"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_WindowsPhotosScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.Windows.Photos
        }
        SetScript = {
            $Item = "Microsoft.Windows.Photos"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_WindowsAlarmsScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.WindowsAlarms
        }
        SetScript = {
            $Item = "Microsoft.WindowsAlarms"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_WindowsCalculatorScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.WindowsCalculator
        }
        SetScript = {
            $Item = "Microsoft.WindowsCalculator"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_WindowsCameraScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.WindowsCamera
        }
        SetScript = {
            $Item = "Microsoft.WindowsCamera"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_windowscommunicationsappsScript
    {
        GetScript = {
            Get-AppxPackage -Name microsoft.windowscommunicationsapps
        }
        SetScript = {
            $Item = "microsoft.windowscommunicationsapps"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_WindowsFeedbackHubScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.WindowsFeedbackHub
        }
        SetScript = {
            $Item = "Microsoft.WindowsFeedbackHub"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_WindowsMapsScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.WindowsMaps
        }
        SetScript = {
            $Item = "Microsoft.WindowsMaps"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_XboxTCUIScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.Xbox.TCUI
        }
        SetScript = {
            $Item = "Microsoft.Xbox.TCUI"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_XboxAppScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.XboxApp
        }
        SetScript = {
            $Item = "Microsoft.XboxApp"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_XboxGameOverlayScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.XboxGameOverlay
        }
        SetScript = {
            $Item = "Microsoft.XboxGameOverlay"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_XboxGamingOverlayScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.XboxGamingOverlay
        }
        SetScript = {
            $Item = "Microsoft.XboxGamingOverlay"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_XboxIdentityProviderScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.XboxIdentityProvider
        }
        SetScript = {
            $Item = "Microsoft.XboxIdentityProvider"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_XboxSpeechToTextOverlayScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.XboxSpeechToTextOverlay
        }
        SetScript = {
            $Item = "Microsoft.XboxSpeechToTextOverlay"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_YourPhoneScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.YourPhone
        }
        SetScript = {
            $Item = "Microsoft.YourPhone"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_ZuneMusicScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.ZuneMusic
        }
        SetScript = {
            $Item = "Microsoft.ZuneMusic"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }

    Script Uninstall_ZuneVideoScript
    {
        GetScript = {
            Get-AppxPackage -Name Microsoft.ZuneVideo
        }
        SetScript = {
            $Item = "Microsoft.ZuneVideo"
            $Package = "*$Item*"
            Get-AppxPackage                    | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -Erroraction Stop
            Get-AppxPackage -AllUsers          | Where-Object {$_.PackageFullName -like $Package} | Remove-AppxPackage -AllUsers -Erroraction Stop
            Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -like $Package}     | Remove-AppxProvisionedPackage -Online -Erroraction Stop
        }
        TestScript = {
            return $false
        }
    }
}
