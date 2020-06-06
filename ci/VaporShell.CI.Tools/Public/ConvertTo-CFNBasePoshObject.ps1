function ConvertTo-CFNBasePoshObject {
    # Updated version of the function found @ https://gist.github.com/ScriptAutomate/28712f09f5726394e55e5790d8c8ac62
    # Thank you, @ScriptAutomate!
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [Object]
        $CFNObject,
        [parameter(Mandatory)]
        [ValidateSet("Resource","Property")]
        [String]
        $ResourceType
    )
    process {
        $CFNRawResourceName = $CFNObject.Name
        $CFNRawResourceObject = $CFNObject.Value
        $FunctionName = "{0}-VS{1}" -f $(if($ResourceType -eq 'Resource'){'New'}else{'Add'}),($CFNRawResourceName -replace '\W' -replace '^AWS')
        $NewFunctionSplat = @{
            FunctionName = $FunctionName
            Link          = $CFNRawResourceObject.Documentation
        }
        $ParameterObjects = @()
        if ($CFNRawResourceObject.Properties) {
            foreach ($ParameterProperty in ($CFNRawResourceObject.Properties | Get-Member -MemberType NoteProperty).Name) {
                $CFNResourcePropertyObject = $CFNRawResourceObject.Properties."$ParameterProperty"
                if ($CFNResourcePropertyObject.PrimitiveType) {
                    $ParameterType = $CFNResourcePropertyObject.PrimitiveType
                }
                else {
                    $ParameterType = $CFNResourcePropertyObject.Type
                }
                $ParameterObject = [PSCustomObject]@{
                    'ParameterName'      = "$ParameterProperty"
                    'ParameterType'      = $ParameterType
                    'ParameterMandatory' = $CFNResourcePropertyObject.Required
                }
                $ParameterObjects += $ParameterObject
            }
            $NewFunctionSplat['Parameters'] = $ParameterObjects
        }
        [PSCustomObject]$NewFunctionSplat
    }
}
