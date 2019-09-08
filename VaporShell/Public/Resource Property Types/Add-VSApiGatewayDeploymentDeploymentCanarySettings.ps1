function Add-VSApiGatewayDeploymentDeploymentCanarySettings {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Deployment.DeploymentCanarySettings resource property to the template

    .DESCRIPTION
        Adds an AWS::ApiGateway::Deployment.DeploymentCanarySettings resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html

    .PARAMETER PercentTraffic
        The percentage 0-100 of traffic diverted to a canary deployment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-percenttraffic
        PrimitiveType: Double
        UpdateType: Immutable

    .PARAMETER StageVariableOverrides
        Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
Duplicates are not allowed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-stagevariableoverrides
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Immutable

    .PARAMETER UseStageCache
        Whether the canary deployment uses the stage cache.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-usestagecache
        PrimitiveType: Boolean
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApiGateway.Deployment.DeploymentCanarySettings')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApiGateway.Deployment.DeploymentCanarySettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
