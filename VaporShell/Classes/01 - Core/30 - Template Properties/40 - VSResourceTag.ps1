using namespace System
using namespace System.Collections
using namespace System.Collections.Generic

class VSResourceTag : VSHashtable {
    [string] $Key
    [object] $Value

    static [VSResourceTag[]] TransformTag([IDictionary] $inputData) {
        $final = [List[VSResourceTag]]::new()
        if ($inputData['Key'] -and $inputData['Value']) {
            $final.Add(
                [VSResourceTag]@{
                    Key   = $inputData['Key']
                    Value = $inputData['Value']
                }
            )
        }
        else {
            $inputData.GetEnumerator() | ForEach-Object {
                $final.Add(
                    [VSResourceTag]@{
                        Key   = $_.Key
                        Value = $_.Value
                    }
                )
            }
        }
        return $final
    }

    static [VSResourceTag[]] TransformTag([PSObject] $inputData) {
        $final = [List[VSResourceTag]]::new()
        if ($inputData.PSObject.Properties.Name -contains 'Key' -and $inputData.PSObject.Properties.Name -contains 'Value') {
            $final.Add(
                [VSResourceTag]@{
                    Key   = $inputData.Key
                    Value = $inputData.Value
                }
            )
        }
        else {
            $inputData.PSObject.Properties | ForEach-Object {
                $final.Add(
                    [VSResourceTag]@{
                        Key   = $_.Name
                        Value = $_.Value
                    }
                )
            }
        }
        return $final
    }

    VSResourceTag() {}

    VSResourceTag([IDictionary] $inputData) {
        $this.Key = $inputData['Key']
        $this.Value = $inputData['Value']
    }

    VSResourceTag([object] $key, [object] $value) {
        $this.Key = $key.ToString()
        $this.Value = $value
    }
}
