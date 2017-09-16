function Add-SAMIoTRuleEventSource {
    <#
    .SYNOPSIS
        Adds a IoTRule Event Source to a Serverless Application Model resource

    .DESCRIPTION
        The object describing an event source with type IoTRule.

    .LINK
        https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#iotrule

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template.

    .PARAMETER Sql
        Required. The SQL statement that queries the topic. For more information, see Rules for AWS IoT in the AWS IoT Developer Guide: http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference

    .PARAMETER AwsIotSqlVersion
        The version of the SQL rules engine to use when evaluating the rule.

    .FUNCTIONALITY
        Serverless
    #>
    [OutputType('Vaporshell.Serverless.EventSource.IoTRule')]
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
        $Sql,
        [parameter(Mandatory = $false)]
        [System.String]
        $AwsIotSqlVersion
    )
    $Params = @{
        LogicalId = $LogicalId
        Type = "IoTRule"
        Properties = @{
            Sql = $Sql
        }
    }
    if ($AwsIotSqlVersion) {
        $Params["Properties"].Add("AwsIotSqlVersion",$AwsIotSqlVersion)
    }
    Add-SAMEventSource @Params | Add-ObjectDetail -TypeName 'Vaporshell.Serverless.EventSource.IoTRule'
}