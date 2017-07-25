function Add-VSOpsWorksLayerLifecycleEventConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::OpsWorks::Layer.LifecycleEventConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::OpsWorks::Layer.LifecycleEventConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html

    .PARAMETER ShutdownEventConfiguration
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration    
		Required: False    
		Type: ShutdownEventConfiguration    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpsWorks.Layer.LifecycleEventConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ShutdownEventConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.Layer.LifecycleEventConfiguration'
    }
}
