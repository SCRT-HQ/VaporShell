function Add-VSACMPCACertificateValidity {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::Certificate.Validity resource property to the template. The period of time during which a certificate issued by your private certificate authority (CA is valid. The expiration can be absolute (expressed as an explicit date and time or relative (expressed as a period of time after issuance in days, months, or years. For more information, see Validity: https://tools.ietf.org/html/rfc5280#section-4.1.2.5 in RFC 5280.

    .DESCRIPTION
        Adds an AWS::ACMPCA::Certificate.Validity resource property to the template.
The period of time during which a certificate issued by your private certificate authority (CA is valid. The expiration can be absolute (expressed as an explicit date and time or relative (expressed as a period of time after issuance in days, months, or years. For more information, see Validity: https://tools.ietf.org/html/rfc5280#section-4.1.2.5 in RFC 5280.

You can issue a certificate by calling the IssueCertificate: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html action.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html

    .PARAMETER Value
        Time period.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html#cfn-acmpca-certificate-validity-value
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER Type
        Determines how *ACM Private CA* interprets the Value parameter, an integer. Supported validity types include those listed below. Type definitions with absolute values include a sample input value and the resulting output.
END_DATE: Absolute value, using UTCTime YYMMDDHHMMSS or GeneralizedTime YYYYMMDDHHMMSS format.
+ Sample input value: 491231235959 UTCTime format
+ Output date: 12/31/2049 23:59:59
ABSOLUTE: Absolute value, expressed as the number of seconds since the Unix epoch.
+ Sample input value: 2524608000
+ Output date: 01/01/2050 00:00:00
DAYS, MONTHS, YEARS: Relative values, setting expiration as a number of days, months, or years after certificate issuance.
Note: When UTCTime is used, if the year field YY is greater than or equal to 50, the year is interpreted as 19YY. If the year field is less than 50, the year is interpreted as 20YY.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-validity.html#cfn-acmpca-certificate-validity-type
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.Certificate.Validity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Value,
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
        $Type
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.Certificate.Validity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
