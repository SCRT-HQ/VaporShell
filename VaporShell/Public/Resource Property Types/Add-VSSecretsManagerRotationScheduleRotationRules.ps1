function Add-VSSecretsManagerRotationScheduleRotationRules {
    <#
    .SYNOPSIS
        Adds an AWS::SecretsManager::RotationSchedule.RotationRules resource property to the template. The RotationRules property is used as part of the AWS::SecretsManager::RotationSchedule: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html resource type to configure how and when Secrets Manager performs rotation for the associated secret.

    .DESCRIPTION
        Adds an AWS::SecretsManager::RotationSchedule.RotationRules resource property to the template.
The RotationRules property is used as part of the AWS::SecretsManager::RotationSchedule: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html resource type to configure how and when Secrets Manager performs rotation for the associated secret.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html

    .PARAMETER AutomaticallyAfterDays
        Specifies the number of days after the previous rotation before Secrets Manager triggers the next automatic rotation.
You can specify a minimum value of 1 and a maximum value of 1000.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-automaticallyafterdays
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SecretsManager.RotationSchedule.RotationRules')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $AutomaticallyAfterDays
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecretsManager.RotationSchedule.RotationRules'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
