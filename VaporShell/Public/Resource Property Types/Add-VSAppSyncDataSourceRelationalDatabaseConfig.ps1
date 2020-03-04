function Add-VSAppSyncDataSourceRelationalDatabaseConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::DataSource.RelationalDatabaseConfig resource property to the template. Use the RelationalDatabaseConfig property type to specify RelationalDatabaseConfig for an AWS AppSync data source.

    .DESCRIPTION
        Adds an AWS::AppSync::DataSource.RelationalDatabaseConfig resource property to the template.
Use the RelationalDatabaseConfig property type to specify RelationalDatabaseConfig for an AWS AppSync data source.

RelationalDatabaseConfig is a property of the AWS::AppSync::DataSource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html property type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html

    .PARAMETER RdsHttpEndpointConfig
        Information about the Amazon RDS resource.

        Type: RdsHttpEndpointConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-rdshttpendpointconfig
        UpdateType: Mutable

    .PARAMETER RelationalDatabaseSourceType
        The type of relational data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-relationaldatabasesourcetype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppSync.DataSource.RelationalDatabaseConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RdsHttpEndpointConfig,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RelationalDatabaseSourceType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.DataSource.RelationalDatabaseConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
