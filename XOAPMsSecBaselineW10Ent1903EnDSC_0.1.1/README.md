# Redirect to Microsoft Documentation

Download the "Windows 10 Version 1909 and Windows Server 2019 1909 Security Baseline.zip" from
<https://www.microsoft.com/en-us/download/details.aspx?id=55319>

Within that .zip you will find a "Documentation"-folder and a "GP Reports"-folder you can use to read further documentation to the security baseline.

## Composite resources

### AccountPolicy

All "AccountPolicy" resource blocks

```powershell
AccountPolicy '...'
{
    ...
}
```

### ActiveX

Every resource block that affects ActiveX controls.
There is no real indicator in the resource block whether it affects ActiveX or not.

### Admin Password Manager

Every resource block that affects Admin Password Manager controls

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft Services\AdmPwd\...'
    ...
}
```

### AppLocker

Every resource block that affects applocker settings

```powershell
Registry '...'
{
    Key = "HKLM:\Software\Policies\Microsoft\Windows\SrpV2\..."
     ...
}
```

### AppPrivacy

Every resource block that affect AppPrivacy settings

```powershell
Registry '...'
    Key='HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy\...'
```

### AuditPolicySubcategory

All "AuditPolicySubcategory" resource blocks

```powershell
AuditPolicySubcategory '...'
{
   ...
}
```

### Biometrics

Every resource block that affects Biometrics settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Biometrics\...'
    ...
}
```

### BitLocker

Every resource block that affects bitlocker settings

```powershell
Registry '...'
{
    Key = 'HKLM:\SOFTWARE\Policies\Microsoft\FVE\...'
    ...
}
```

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Policies\Microsoft\FVE\...'
    ...
}
```

### Cloud Content

Every resource block that affects Cloud Content settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\CloudContent\...'
    ...
}
```

### Connection Manager

Every resource block that affects Cloud Content settings

```powershell
    Registry '...'
    {
        Key = 'HKLM:\Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy\...'
        ...
    }
```

```powershell
    Registry '...'
    {
        Key = 'HKLM:\Software\Microsoft\WcmSvc\wifinetworkmanager\config\...'
        ...
    }
```

### CredentialsDelegation

Every resource block that affects CredentialsDelegation settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\CredentialsDelegation\...'
    ...
}
```

### Cred UI

Every resource block that affects Cred UI settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\CredUI\...'
    ...
}
```

### DeviceGuard

Every resource block that affects DeviceGuard settings

```powershell
Registry '...'
{
    Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard\...'
    ...
}
```

### DeviceInstallRestrictions

Every resource block that affects DeviceInstall-Restrictions

```powershell
Registry '...'
{
    Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Restrictions\...'
    ...
}
```

### EarlyLaunch

Every resource block that affects EarlyLaunch-Restrictions

```powershell
Registry '...'
{
    Key = 'HKLM:\SYSTEM\CurrentControlSet\Policies\EarlyLaunch\...'
    ...
}
```

### EventLog

Every resource block that affects EventLog settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\EventLog\...'
    ...
}
```

### Explorer

Every resource block that affects Explorer settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\...'
    ...
}
```

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\Explorer\...'
    ...
}
```

### GameDVR

Every resource block that affects GameDVR settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\GameDVR\...'
    ...
}
```

### GroupPolicy

Every resource block that affects GroupPolicy settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\Group Policy\...'
    ...
}
```

### IE

Every resource block that affects IE settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\...'
    ...
}
```

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\...'
    ...
}
```

### Installer

Every resource block that affects Installer settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\Installer\...'
    ...
}
```

### KernelDMAProtection

Every resource block that affects KernelDMAProtection settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\Kernel DMA Protection\...'
    ...
}
```

### Lightweight Directory Access Protocol

Every resource block that affects LDAP settings

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Services\LDAP\...'
    ...
}
```

### Local Security Authority Subsystem Service

Every resource block that affects LSASS settings

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Control\Lsa\...'
    ...
}
```

### Microsoft Edge

Every resource block that affects Microsoft Edge settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\MicrosoftEdge\...'
    ...
}
```

### NetBIOS over TCP/IP

Every resource block that affects Netbt settings

```powershell
Registry '...'
{
    Key = 'HKLM:\SYSTEM\CurrentControlSet\Services\Netbt\...'
    ...
}
```

### Netlogon

Every resource block that affects Netlogon settings

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\...'
    ...
}
```

### Network Connections

Every resource block that affects Network Connections settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\Network Connections\...'
    ...
}
```

### NetworkProvider

Every resource block that affects NetworkProvider settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\NetworkProvider\...'
    ...
}
```

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\LanmanWorkstation'
    ...
}
```

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Services\LanmanWorkstation\...'
    ...
}
```

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Services\LanManServer\...'
    ...
}
```

### New Technology Data Store - Active Directory Database

Every resource block that affects NTDS settings

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Services\NTDS\...'
    ...
}
```

### Personalization

Every resource block that affects Personalization settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\Personalization\...'
    ...
}
```

### Powersettings

Every resource block that affects Powersettings settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Power\PowerSettings\...'
    ...
}
```

### Powershell

Every resource block that affects Powershell settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\PowerShell\...'
    ...
}
```

### Printers

Every resource block that affects Printers settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Printers\...'
    ...
}
```

### Remote Procedure Call

Every resource block that affects RPC settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Rpc\...'
    ...
}
```

### Security Option

All "SecurityOption" resource blocks

```powershell
SecurityOption '...'
{
    ...
}
```

### Services

All "Services" resource blocks

```powershell
Service '...'
{
    ...
}
```

### Session Manager

Every resource block that affects Session Manager settings

```powershell
Registry '...'
{
    Key = 'HKLM:\System\CurrentControlSet\Control\Session Manager'
    ...
}
```

### Server Message Block

Every resource block that affects Session Manager settings

```powershell
Registry '...'
{
    Key = 'HKLM:\SYSTEM\CurrentControlSet\Services\MrxSmb10'
    ...
}
```

### System

Every resource block that affects System settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\...'
    ...
}
```

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\System'
    ...
}
```

### Tcpip

Every resource block that affects Tcpip settings

```powershell
Registry ''
{
    Key = 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\...'
    ...
}
```

### Tcpip6

Every resource block that affects Tcpip6 settings

```powershell
Registry ''
    Key = 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\...'
    ...
}
```

### TerminalService

Every resource block that affects TerminalService settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services\...'
    ...
}
```

### UserRightsAssignment

All "UserRightsAssignment" resource blocks

```powershell
UserRightsAssignment '...'
{
    ...
}
```

### WDigest

Every resource block that affects Digest Authentication settings

```powershell
    Registry '...'
    {
        Key = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest'
        ...
    }
```

### Windows Defender

Every resource block that affects Windows Defender settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows Defender\...'
    ...
}
```

### Windows Firewall

Every resource block that affects Windows Firewall settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\WindowsFirewall'
    ...
}
```

### WindowsInkWorkspace

Every resource block that affects WindowsInkWorkspace settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\WindowsInkWorkspace'
    ...
}
```

### WindowsNT

Every resource block that affects WindowsNT settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows NT'
    ...
}
```

### Windows Search

Every resource block that affects Windows Search settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\Windows Search\...'
    ...
}
```

### Winlogon

Every resource block that affects Winlogon settings

```powershell
    Registry '...'
    {
        Key = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\...'
        ...
    }
```

### WinRM

Every resource block that affects WinRM settings

```powershell
Registry '...'
{
    Key = 'HKLM:\Software\Policies\Microsoft\Windows\WinRM\...'
    ...
}
```
