function Add-VSDMSEndpointDynamoDbSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DMS::Endpoint.DynamoDbSettings resource property to the template. ## Syntax<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax"></a>

    .DESCRIPTION
        Adds an AWS::DMS::Endpoint.DynamoDbSettings resource property to the template.
## Syntax<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax"></a>

To declare this entity in your AWS CloudFormation template, use the following syntax:

### JSON<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax.json"></a>



{

"ServiceAccessRoleArn: #cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn" : String

}



### YAML<a name="aws-properties-dms-endpoint-dynamodbsettings-syntax.yaml"></a>



ServiceAccessRoleArn: #cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn: String



## Properties<a name="aws-properties-dms-endpoint-dynamodbsettings-properties"></a>

ServiceAccessRoleArn  <a name="cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn"></a>

The Amazon Resource Name (ARN used by the service access IAM role.

*Required*: No

*Type*: String

*Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html

    .PARAMETER ServiceAccessRoleArn
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html#cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DMS.Endpoint.DynamoDbSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ServiceAccessRoleArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DMS.Endpoint.DynamoDbSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
