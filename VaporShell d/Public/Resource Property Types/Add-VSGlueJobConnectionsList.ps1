function Add-VSGlueJobConnectionsList {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::Job.ConnectionsList resource property to the template

    .DESCRIPTION
        Adds an AWS::Glue::Job.ConnectionsList resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-connectionslist.html

    .PARAMETER Connections
		PrimitiveItemType: String    
		Type: List    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-connectionslist.html#cfn-glue-job-connectionslist-connections    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Glue.Job.ConnectionsList')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Connections
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Glue.Job.ConnectionsList'
    }
}
