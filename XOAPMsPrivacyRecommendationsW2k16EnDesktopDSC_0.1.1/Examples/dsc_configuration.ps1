configuration default
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-Module XOAPMsPrivacyRecommendationsW2k16EnDesktopDSC
    Import-DSCResource -ModuleName XOAPMsPrivacyRecommendationsW2k16EnDesktopDSC

    Node $NodeName
    {

        $moduleRoot = [io.path]::GetDirectoryName((Get-Module XOAPMsPrivacyRecommendationsW2k16EnDesktopDSC).Path)
        $examples = "$moduleRoot\Examples"

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}
