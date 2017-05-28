function Add-FnGetAZs {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::GetAZs" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::GetAZs returns an array that lists Availability Zones for a specified region. Because customers have access to different Availability Zones, the intrinsic function Fn::GetAZs enables template authors to write templates that adapt to the calling user's access. That way you don't have to hard-code a full list of Availability Zones for a specified region.

            ** Important **
                For the EC2-Classic platform, the Fn::GetAZs function returns all Availability Zones for a region. For the EC2-VPC platform, the Fn::GetAZs function returns only Availability Zones that have a default subnet unless none of the Availability Zones has a default subnet; in that case, all Availability Zones are returned.
                
                Similarly to the response from the describe-availability-zones AWS CLI command, the order of the results from the Fn::GetAZs function is not guaranteed and can change when new Availability Zones are added.
        
        IAM permissions

            The permissions that you need in order to use the Fn::GetAZs function depend on the platform in which you're launching Amazon EC2 instances. For both platforms, you need permissions to the Amazon EC2 DescribeAvailabilityZones and DescribeAccountAttributes actions. For EC2-VPC, you also need permissions to the Amazon EC2 DescribeSubnets action.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getavailabilityzones.html
    
    .PARAMETER Region
        The name of the region for which you want to get the Availability Zones.

        You can use the AWS::Region pseudo parameter to specify the region in which the stack is created. Specifying an empty string is equivalent to specifying AWS::Region.

        This is not required. If you would like to default this to the stack deployment region, simply exclude this parameter and call the function by itself.

    .EXAMPLE
        Add-FnImportValue -ValueToImport (Add-FnSub -String "`${NetworkStackNameParameter}-SubnetID")

        # When the template is exported, this will convert to: {"Fn::ImportValue":{"Fn::Sub":"${NetworkStackNameParameter}-SubnetID"}}

    .NOTES
        You can use the Ref function in the Fn::GetAZs function.

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                throw "The Region parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
            }
        })]
        $Region
    )
    if (!$Region) {
        Write-Verbose "No region specified! Defaulting to deployment region"
        $obj = [PSCustomObject][Ordered]@{
            "Fn::GetAZs" = Add-FnRef "AWS::Region" -Verbose:$false
        }
    }
    else {
        $obj = [PSCustomObject][Ordered]@{
            "Fn::GetAZs" = $Region
        }
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.GetAZs'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}