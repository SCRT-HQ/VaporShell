function Add-VSIoTThingAttributePayload {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::Thing.AttributePayload resource property to the template

    .DESCRIPTION
        Adds an AWS::IoT::Thing.AttributePayload resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html

    .PARAMETER Attributes
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html#cfn-iot-thing-attributepayload-attributes    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
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
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.Thing.AttributePayload'
    }
}
