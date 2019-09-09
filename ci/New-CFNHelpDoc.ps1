function New-CFNHelpDoc {
    # Updated version of the function found @ https://gist.github.com/ScriptAutomate/28712f09f5726394e55e5790d8c8ac62
    # Thank you, @ScriptAutomate!
    Param (
        [parameter(Mandatory,ValueFromPipeline)]
        [Object]
        $Resource,
        [parameter(Mandatory)]
        [ValidateSet("Resource","Property")]
        [String]
        $ResourceType
    )
    Process {
        #Write-Verbose "Getting Help content for $ResourceType '$($Resource.Name)'"
        switch ($ResourceType) {
            Resource {
                $ResourceBase = $Resource | ConvertTo-CFNBasePoshObject -ResourceType $ResourceType -Verbose:$false
                Get-CFNPoshHelp -FunctionName "$($ResourceBase.FunctionName)" -Link "$($ResourceBase.Link)" -Parameters $ResourceBase.Parameters.ParameterName -Verbose:$false
            }
            Property {
                $ResourcePropertyBase = $Resource | ConvertTo-CFNBasePoshObject -ResourceType $ResourceType -Verbose:$false
                $ParamSplat = @{
                    ResourceName = $Resource.Name
                    FunctionName = $ResourcePropertyBase.FunctionName
                }
                if ($ResourcePropertyBase.Link) {
                    $ParamSplat += @{'Link' = $ResourcePropertyBase.Link }
                    if ($ResourcePropertyBase.Parameters) {
                        $ParamSplat += @{'Parameters' = $ResourcePropertyBase.Parameters.ParameterName }
                    }
                    Get-CFNPoshHelp @ParamSplat -Verbose:$false
                }
                else {
                    Write-Warning "[$($Resource.Name)] No Link property for type on specification sheet, unable to match to document in user-guide repository."
                }
            }
        }
    }
}
