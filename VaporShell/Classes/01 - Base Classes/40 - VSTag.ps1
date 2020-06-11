using namespace System
using namespace System.Collections
using namespace System.Collections.Generic

class VSTag : VSHashtable {
    hidden [string] $_vsFunctionName = 'Add-VSTag'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html'

    [string] $Key
    [object] $Value

    static [VSTag[]] TransformTag([IDictionary] $inputData) {
        $final = [List[VSTag]]::new()
        if ($inputData['Key'] -and $inputData['Value']) {
            $final.Add(
                [VSTag]@{
                    Key   = $inputData['Key']
                    Value = $inputData['Value']
                }
            )
        }
        else {
            $inputData.GetEnumerator() | ForEach-Object {
                $final.Add(
                    [VSTag]@{
                        Key   = $_.Key
                        Value = $_.Value
                    }
                )
            }
        }
        return $final
    }

    static [VSTag[]] TransformTag([PSObject] $inputData) {
        $final = [List[VSTag]]::new()
        if ($inputData.PSObject.Properties.Name -contains 'Key' -and $inputData.PSObject.Properties.Name -contains 'Value') {
            $final.Add(
                [VSTag]@{
                    Key   = $inputData.Key
                    Value = $inputData.Value
                }
            )
        }
        else {
            $inputData.PSObject.Properties | ForEach-Object {
                $final.Add(
                    [VSTag]@{
                        Key   = $_.Name
                        Value = $_.Value
                    }
                )
            }
        }
        return $final
    }

    VSTag() {}

    VSTag([IDictionary] $inputData) {
        $this.Key = $inputData['Key']
        $this.Value = $inputData['Value']
    }

    VSTag([object] $key, [object] $value) {
        $this.Key = $key.ToString()
        $this.Value = $value
    }
}
