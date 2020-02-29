function Add-VSIoTThingAttributePayload {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::Thing.AttributePayload resource property to the template. The AttributePayload property specifies up to three attributes for an AWS IoT as key–value pairs. AttributePayload is a property of the AWS::IoT::Thing: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html resource.

    .DESCRIPTION
        Adds an AWS::IoT::Thing.AttributePayload resource property to the template.
The AttributePayload property specifies up to three attributes for an AWS IoT as key–value pairs. AttributePayload is a property of the AWS::IoT::Thing: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html

    .PARAMETER Attributes
        A JSON string containing up to three key-value pair in JSON format. For example:
{"attributes":{"string1":"string2"}}

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html#cfn-iot-thing-attributepayload-attributes
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.Thing.AttributePayload')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Attributes
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.Thing.AttributePayload'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
