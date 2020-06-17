using namespace System
using namespace System.Collections
using namespace System.Collections.Generic

class VSTag : VSHashtable {
    hidden [string] $_vsFunctionName = 'Add-VSTag'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html'

    [string] $Key
    [object] $Value

    static [VSTag[]] TransformTag([object] $inputData) {
        $final = [List[VSTag]]::new()
        $list = if ($inputData -is [array]) {
            $inputData
        }
        else {
            @($inputData)
        }
        foreach ($item in $list) {
            if ($item -is [VSTag]) {
                $final.Add($item)
            }
            elseif ($item -is [IDictionary]) {
                if ($item['Key'] -and $item['Value']) {
                    $final.Add(
                        [VSTag]@{
                            Key   = $item['Key']
                            Value = $item['Value']
                        }
                    )
                }
                else {
                    $item.GetEnumerator() | ForEach-Object {
                        $final.Add(
                            [VSTag]@{
                                Key   = $_.Key
                                Value = $_.Value
                            }
                        )
                    }
                }
            }
            elseif ($item -is [psobject]) {
                if ($item.PSObject.Properties.Name -contains 'Key' -and $item.PSObject.Properties.Name -contains 'Value') {
                    $final.Add(
                        [VSTag]@{
                            Key   = $item.Key
                            Value = $item.Value
                        }
                    )
                }
                else {
                    $item.PSObject.Properties | ForEach-Object {
                        $final.Add(
                            [VSTag]@{
                                Key   = $_.Name
                                Value = $_.Value
                            }
                        )
                    }
                }
            }
        }
        return $final
    }

    VSTag() {}

    VSTag([IDictionary] $inputData) {
        $this.Key = $inputData.Key
        $this.Value = $inputData.Value
    }

    VSTag([psobject] $inputData) {
        $this.Key = $inputData.Key
        $this.Value = $inputData.Value
    }

    VSTag([object] $key, [object] $value) {
        $this.Key = $key.ToString()
        $this.Value = $value
    }
}
