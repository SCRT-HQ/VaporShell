function Add-VSDynamoDBTableProvisionedThroughput {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template

    .DESCRIPTION
        Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html

    .PARAMETER ReadCapacityUnits
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-readcapacityunits    
		PrimitiveType: Integer    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER WriteCapacityUnits
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-writecapacityunits    
		PrimitiveType: Integer    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.Table.ProvisionedThroughput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $ReadCapacityUnits,
        [parameter(Mandatory = $true)]
        [Int]
        $WriteCapacityUnits
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.Table.ProvisionedThroughput'
    }
}
