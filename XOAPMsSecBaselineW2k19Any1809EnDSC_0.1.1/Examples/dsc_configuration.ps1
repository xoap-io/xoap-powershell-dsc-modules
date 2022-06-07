configuration default
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-Module XOAPMsSecBaselineW2k19Any1809EnDSC
    Import-DSCResource -ModuleName XOAPMsSecBaselineW2k19Any1809EnDSC

    Node $NodeName
    {

        $moduleRoot = [io.path]::GetDirectoryName((Get-Module XOAPMsSecBaselineW2k19Any1809EnDSC).Path)
        $examples = "$moduleRoot\Examples"

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}
