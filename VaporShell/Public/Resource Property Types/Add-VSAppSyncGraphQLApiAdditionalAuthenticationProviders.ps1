function Add-VSAppSyncGraphQLApiAdditionalAuthenticationProviders {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::GraphQLApi.AdditionalAuthenticationProviders resource property to the template. A list of additional authentication providers for the GraphqlApi API.

    .DESCRIPTION
        Adds an AWS::AppSync::GraphQLApi.AdditionalAuthenticationProviders resource property to the template.
A list of additional authentication providers for the GraphqlApi API.

*Required*: No

*Type:* List of AdditionalAuthenticationProvider: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html

*Update requires:* No interruption

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationproviders.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppSync.GraphQLApi.AdditionalAuthenticationProviders')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.GraphQLApi.AdditionalAuthenticationProviders'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
