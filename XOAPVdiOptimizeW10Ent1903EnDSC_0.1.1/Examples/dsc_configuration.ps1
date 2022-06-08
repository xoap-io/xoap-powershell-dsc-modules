configuration default
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-Module XOAPVdiOptimizeW10Ent1903EnDSC
    Import-DSCResource -ModuleName XOAPVdiOptimizeW10Ent1903EnDSC

    Node $NodeName
    {

        $moduleRoot = [io.path]::GetDirectoryName((Get-Module XOAPVdiOptimizeW10Ent1903EnDSC).Path)
        $examples = "$moduleRoot\Examples"

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}
