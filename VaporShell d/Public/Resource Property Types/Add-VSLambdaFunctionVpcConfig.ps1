function Add-VSLambdaFunctionVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::Function.VpcConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::Lambda::Function.VpcConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html

    .PARAMETER SecurityGroupIds
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: True    
		Type: List    
		UpdateType: Mutable    

    .PARAMETER SubnetIds
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: True    
		Type: List    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.Function.VpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SecurityGroupIds,
        [parameter(Mandatory = $true)]
        $SubnetIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.Function.VpcConfig'
    }
}
