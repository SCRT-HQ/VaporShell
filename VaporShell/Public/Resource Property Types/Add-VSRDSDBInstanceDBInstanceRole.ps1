function Add-VSRDSDBInstanceDBInstanceRole {
    <#
    .SYNOPSIS
        Adds an AWS::RDS::DBInstance.DBInstanceRole resource property to the template. Describes an AWS Identity and Access Management (IAM role that is associated with a DB instance.

    .DESCRIPTION
        Adds an AWS::RDS::DBInstance.DBInstanceRole resource property to the template.
Describes an AWS Identity and Access Management (IAM role that is associated with a DB instance.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html

    .PARAMETER FeatureName
        The name of the feature associated with the AWS Identity and Access Management IAM role. For the list of supported feature names, see DBEngineVersion.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-featurename
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER RoleArn
        The Amazon Resource Name ARN of the IAM role that is associated with the DB instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-rolearn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.RDS.DBInstance.DBInstanceRole')]
    [cmdletbinding()]
    Param
    (
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
        $FeatureName,
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
        $RoleArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RDS.DBInstance.DBInstanceRole'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
