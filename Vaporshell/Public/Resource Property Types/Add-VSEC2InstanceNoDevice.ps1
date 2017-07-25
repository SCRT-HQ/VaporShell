function Add-VSEC2InstanceNoDevice {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::Instance.NoDevice resource property to the template

    .DESCRIPTION
        Adds an AWS::EC2::Instance.NoDevice resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-nodevice.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.Instance.NoDevice')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.Instance.NoDevice'
    }
}
