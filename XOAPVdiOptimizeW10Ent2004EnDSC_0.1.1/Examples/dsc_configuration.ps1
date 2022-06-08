configuration default
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-Module XOAPVdiOptimizeW10Ent2004EnDSC
    Import-DSCResource -ModuleName XOAPVdiOptimizeW10Ent2004EnDSC

    Node $NodeName
    {

        $moduleRoot = [io.path]::GetDirectoryName((Get-Module XOAPVdiOptimizeW10Ent2004EnDSC).Path)
        $examples = "$moduleRoot\Examples"

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}
