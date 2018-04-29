function Add-SAMS3LocationObject {
    <#
    .SYNOPSIS
        Specifies the location of an S3 object as a dictionary containing Bucket, Key, and optional Version properties.

    .DESCRIPTION
        Specifies the location of an S3 object as a dictionary containing Bucket, Key, and optional Version properties.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#s3-location-object

    .PARAMETER Bucket
        Required. Example: 'mybucket-name'

    .PARAMETER Key
        Required. Example: 'code.zip'

    .PARAMETER Version
		Optional. Example: '121212'

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.S3LocationObject')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $Bucket,
        [parameter(Mandatory = $true)]
        [System.String]
        $Key,
        [parameter(Mandatory = $false)]
        [System.String]
        $Version
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.S3LocationObject'
    }
}