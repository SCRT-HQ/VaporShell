using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class TransformTag : ArgumentTransformationAttribute {
    hidden [EngineIntrinsics] $engineIntrinsics

    hidden [hashtable] ConvertToTag([object] $key, [object] $value) {
        $tag = @{
            Key = $key.ToString()
            Value = $value
        }
        return $tag
    }

    hidden [IEnumerable[IDictionary]] TransformHashtable([IDictionary] $inputData) {
        $final = [List[IDictionary]]::new()
        if (($inputData['key'] -or $inputData.Key) -and ($inputData['value'] -or $inputData.Value)) {
            $final.Add($inputData)
        } else {
            $inputData.GetEnumerator() | ForEach-Object {
                $final.Add(@{
                    Key = $_.Key
                    Value = $_.Value
                })
            }
        }
        return $final
    }

    hidden [IEnumerable[IDictionary]] TransformPSObject([PSObject] $inputData) {
        $final = [List[IDictionary]]::new()
        if ($inputData.Properties.Name -contains "Key" -and $inputData.Properties.Name -contains "Value") {
            $final.Add(@{
                Key = $inputData.Key
                Value = $inputData.Value
            })
        }
        else {
            foreach ($property in $inputData.Properties) {
                $final.Add(@{
                    Key = $_.Name
                    Value = $_.Value
                })
            }
        }
        return $final
    }

    hidden [IEnumerable[IDictionary]] TransformSingle([object] $inputData) {
        $final = [List[IDictionary]]::new()
        if ($inputData -is [IDictionary]) {
            foreach ($tag in $this.TransformHashtable($inputData -as [IDictionary])) {
                $final.Add($tag)
            }
        }
        elseif ($inputData -is [PSObject]) {
            foreach ($tag in $this.TransformPSObject($inputData)) {
                $final.Add($tag)
            }
        }
        return $final
    }

    hidden [IEnumerable[IDictionary]] TransformData([object] $inputData) {
        $final = [List[IDictionary]]::new()
        if ($inputData -is [Array]) {
            foreach ($item in ($inputData -as [Array])) {
                foreach ($tag in $this.TransformSingle($item)) {
                    $final.Add($tag)
                }
            }
        }
        else {
            foreach ($tag in $this.TransformSingle($inputData)) {
                $final.Add($tag)
            }
        }
        return $final
    }

    [object] Transform([EngineIntrinsics] $engineIntrinsics, [object] $inputData) {
        $this.engineIntrinsics = $engineIntrinsics
        return $this.TransformData($inputData)
    }
}
