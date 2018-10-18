function Add-VSApiGatewayDeploymentCanarySetting {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Deployment.CanarySetting resource property to the template

    .DESCRIPTION
        Adds an AWS::ApiGateway::Deployment.CanarySetting resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html

    .PARAMETER PercentTraffic
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-percenttraffic    
		PrimitiveType: Double    
		Required: False    
		UpdateType: Mutable    

    .PARAMETER StageVariableOverrides
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-stagevariableoverrides    
		DuplicatesAllowed: False    
		PrimitiveItemType: String    
		Required: False    
		Type: Map    
		UpdateType: Mutable    

    .PARAMETER UseStageCache
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-usestagecache    
		PrimitiveType: Boolean    
		Required: False    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Deployment.CanarySetting')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Double]
        $PercentTraffic,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $StageVariableOverrides,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $UseStageCache
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Deployment.CanarySetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
