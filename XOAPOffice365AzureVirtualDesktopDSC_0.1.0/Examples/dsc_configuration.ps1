configuration default
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-Module XOAPOffice365AzureVirtualDesktopDSC
    Import-DSCResource -ModuleName XOAPOffice365AzureVirtualDesktopDSC

    Node $NodeName
    {

        $moduleRoot = [io.path]::GetDirectoryName((Get-Module XOAPOffice365AzureVirtualDesktopDSC).Path)
        $examples = "$moduleRoot\Examples"

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}
