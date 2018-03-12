function Add-SAMKinesisEventSource {
    <#
    .SYNOPSIS
        Adds a Kinesis Event Source to a Serverless Application Model resource

    .DESCRIPTION
        The object describing an event source with type Kinesis.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#kinesis

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .PARAMETER Stream
        Required. ARN of the Amazon Kinesis stream. Use either a string or an intrinsic function.

    .PARAMETER StartingPosition
        Required. One of TRIM_HORIZON or LATEST.

    .PARAMETER BatchSize
		Maximum number of stream records to process per function invocation.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource.Kinesis')]
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
        $Stream,
        [parameter(Mandatory = $true)]
        [ValidateSet("TRIM_HORIZON","LATEST")]
        [System.String]
        $StartingPosition,
        [parameter(Mandatory = $false)]
        [Int]
        $BatchSize
    )
    $Params = @{
        LogicalId = $LogicalId
        Type = "Kinesis"
        Properties = @{
            Stream = $Stream
            StartingPosition = $StartingPosition
        }
    }
    if ($BatchSize) {
        $Params["Properties"].Add("BatchSize",$BatchSize)
    }
    Add-SAMEventSource @Params | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource.Kinesis'
}