function Add-SAMS3EventSource {
    <#
    .SYNOPSIS
        Adds a S3 Event Source to a Serverless Application Model resource

    .DESCRIPTION
        The object describing an event source with type S3.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#s3

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .PARAMETER Bucket
        Required. S3 bucket name. Use either a string or an intrinsic function.

    .PARAMETER Events
        Required. See Amazon S3 supported event types for valid values. Valid options are: "s3:ObjectCreated:*","s3:ObjectCreated:Put","s3:ObjectCreated:Post","s3:ObjectCreated:Copy","s3:ObjectCreated:CompleteMultipartUpload","s3:ObjectRemoved:*","s3:ObjectRemoved:Delete","s3:ObjectRemoved:DeleteMarkerCreated","s3:ReducedRedundancyLostObject"

    .PARAMETER Filter
		Rules to filter events on. Use Add-VSS3BucketNotificationConfiguration as the value for this parameter.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource.S3')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Bucket,
        [parameter(Mandatory = $true)]
        [ValidateSet("s3:ObjectCreated:*","s3:ObjectCreated:Put","s3:ObjectCreated:Post","s3:ObjectCreated:Copy","s3:ObjectCreated:CompleteMultipartUpload","s3:ObjectRemoved:*","s3:ObjectRemoved:Delete","s3:ObjectRemoved:DeleteMarkerCreated","s3:ReducedRedundancyLostObject")]
        [System.String[]]
        $Events,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.S3.Bucket.NotificationConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Filter
    )
    $Params = @{
        LogicalId = $LogicalId
        Type = "S3"
        Properties = @{
            Bucket = $Bucket
            Events = $Events
        }
    }
    if ($Filter) {
        $Params["Properties"].Add("Filter",$Filter)
    }
    Add-SAMEventSource @Params | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource.S3'
}