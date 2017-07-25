function Add-VSEC2InstanceAssociationParameter {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::Instance.AssociationParameter resource property to the template

    .DESCRIPTION
        Adds an AWS::EC2::Instance.AssociationParameter resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html

    .PARAMETER Key
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-key    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER Value
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-value    
		DuplicatesAllowed: True    
		PrimitiveItemType: String    
		Required: True    
		Type: List    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.Instance.AssociationParameter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Key,
        [parameter(Mandatory = $true)]
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.Instance.AssociationParameter'
    }
}
