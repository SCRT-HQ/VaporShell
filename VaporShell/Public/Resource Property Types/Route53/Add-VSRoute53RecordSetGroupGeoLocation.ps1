function Add-VSRoute53RecordSetGroupGeoLocation {
    <#
    .SYNOPSIS
        Adds an AWS::Route53::RecordSetGroup.GeoLocation resource property to the template. A complex type that contains information about a geographic location.

    .DESCRIPTION
        Adds an AWS::Route53::RecordSetGroup.GeoLocation resource property to the template.
A complex type that contains information about a geographic location.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html

    .PARAMETER ContinentCode
        For geolocation resource record sets, a two-letter abbreviation that identifies a continent. Route 53 supports the following continent codes:
+ **AF**: Africa
+ **AN**: Antarctica
+ **AS**: Asia
+ **EU**: Europe
+ **OC**: Oceania
+ **NA**: North America
+ **SA**: South America
Constraint: Specifying ContinentCode with either CountryCode or SubdivisionCode returns an InvalidInput error.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordsetgroup-geolocation-continentcode
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER CountryCode
        For geolocation resource record sets, the two-letter code for a country.
Route 53 uses the two-letter country codes that are specified in ISO standard 3166-1 alpha-2: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-countrycode
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER SubdivisionCode
        For geolocation resource record sets, the two-letter code for a state of the United States. Route 53 doesn't support any other values for SubdivisionCode. For a list of state abbreviations, see Appendix B: Two–Letter State and Possession Abbreviations: https://pe.usps.com/text/pub28/28apb.htm on the United States Postal Service website.
If you specify subdivisioncode, you must also specify US for CountryCode.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-subdivisioncode
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Route53.RecordSetGroup.GeoLocation')]
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
        $ContinentCode,
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
        $CountryCode,
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
        $SubdivisionCode
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Route53.RecordSetGroup.GeoLocation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
