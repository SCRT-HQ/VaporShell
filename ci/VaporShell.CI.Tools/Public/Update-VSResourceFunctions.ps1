function Update-VSResourceFunctions {
    <#
    .SYNOPSIS
        Updates the Resource and Property Type functions

    .DESCRIPTION
        Updates the Resource and Property Type functions

    .PARAMETER Region
        The AWS region by location whose specification sheet you'd like to use to update your functions

    .FUNCTIONALITY
        Vaporshell
    #>
    [CmdletBinding()]
    Param(
        [parameter(Position = 0,Mandatory)]
        [string]
        $ModuleVersion
    )
    Begin {
        . ([System.IO.Path]::Combine($PSScriptRoot,'Get-CFNResourceDictionary.ps1'))
        $final = Get-CFNResourceDictionary
        $duplicateClassNames = ($final | Group-Object ClassName | Where-Object Count -gt 1).Name
    }
    Process {
        $serviceModules = $final | Group-Object ServiceName | Sort-Object Name
        foreach ($serviceModule in ($serviceModules | Where-Object {$_.Name -notin @('Serverless','Tag')})) {
            New-VSServiceModule -ModuleName "VaporShell.$($serviceModule.Name)" -ModuleVersion $ModuleVersion
            $i = 0
            foreach ($resource in $serviceModule.Group) {
                # NEED: Build dependency tree to output classes in the correct order
                Write-Verbose "[$($serviceModule.Name)] Updating $($resource.ResourceType) Type [$($resource.Name)]"
                Convert-SpecToFunction -Resource $resource -ResourceType $resource.ResourceType
                Convert-SpecToClass -Resource $resource -ResourceType $resource.ResourceType -Number $i -DuplicateClassNames $duplicateClassNames
                $i++
            }
        }
    }
}
