function Convert-SpecToFunction {
    Param
    (
      [parameter(Mandatory=$true,Position=0)]
      [Object]
      $Resource,
      [parameter(Mandatory=$true,Position=1)]
      [ValidateSet("Resource","Property")]
      [String]
      $Type
    )
    $folder = "$($pwd.Path)\Vaporshell\Public"
    $Name = $Resource.Name
    $Link = $Resource.Value.Documentation
    $Properties = $Resource.Value.Properties.PSObject.Properties
    $ShortName = $Name.Replace("AWS::","")
    $BaseTypeName = "Vaporshell.Resource." + ($ShortName -replace "\..*").Replace("::",".")
    $TypeName = "Vaporshell.Resource." + $ShortName.Replace("::",".")
    switch ($Type) {
        Resource {
            $Dir = "$folder\Resource Types"
            $FunctionName = "New-" + ($ShortName -replace "\..*").Replace("::","")
            $Synopsis = "Adds an $Name resource to the template"
        }
        Property {
            $Dir = "$folder\Resource Property Types"
            $FunctionName = "Add-" + $ShortName.Replace("::","").Replace(".","")
            $Synopsis = "Adds an $Name resource property to the template"
        }
    }
    $PS1Path = "$Dir\$FunctionName.ps1"
$scriptContents = @()
$scriptContents += @"
function $FunctionName {
    <#
    .SYNOPSIS
        $Synopsis

    .LINK
        $Link

"@
if ($Type -ne "Property") {
    $scriptContents += @"
    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.`n
"@
}

foreach ($Prop in $Properties) {
$scriptContents +=@"
    .PARAMETER $($Prop.Name)
"@
$pList = $Prop.value.psobject.properties
foreach ($p in $pList) {
    $scriptContents += "`t`t$($p.Name): $($p.Value)"
}
$scriptContents += ""
}

if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
    $scriptContents += @"
    .PARAMETER CreationPolicy
        Use the CreationPolicy attribute when you want to wait on resource configuration actions before stack creation proceeds. For example, if you install and configure software applications on an EC2 instance, you might want those applications to be running before proceeding. In such cases, you can add a CreationPolicy attribute to the instance, and then send a success signal to the instance after the applications are installed and configured.

        You must use the "Add-CreationPolicy" function here.`n
"@
}

if ($Type -ne "Property") {
    $scriptContents += @"    
    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"


    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.


    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.


    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
    

    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.`n
"@
}
$scriptContents += @"
    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('$TypeName')]
    [cmdletbinding()]
    Param
    (
"@
if ($Type -ne "Property") {
        $scriptContents += @"
        [parameter(Mandatory = `$true,Position = 0)]
        [ValidateScript( {
                if (`$_ -match "^[a-zA-Z0-9]*$") {
                    `$true
                }
                else {
                    throw 'The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'
                }
            })]
        [System.String]
        `$LogicalId,
"@
}
$PCount = 0
$Properties | ForEach-Object {$PCount++}
$i = 0
foreach ($Prop in $Properties) {
    $i++
    if ($Type -ne "Property"){
        $ParamName = "$($Prop.Name),"
    }
    elseif ($i -lt [int]$PCount) {
        $ParamName = "$($Prop.Name),"
    }
    else {
        $ParamName = "$($Prop.Name)"
    }
    if ($Prop.Value.Required -eq "True"){
        $Mandatory = '$true'
    }
    else {
        $Mandatory = '$false'
    }
    if ($Prop.Value.ItemType) {
        $ValTypeName = "$($BaseTypeName).$($Prop.Value.ItemType)"
        $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "$ValTypeName"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    throw "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."
                }
            })]
        `$$ParamName
"@
    }
    elseif ($Prop.Value.Type -eq "Map") {
        $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [System.Collections.Hashtable]
        `$$ParamName
"@
    }
    elseif ($Prop.Value.PrimitiveType -eq "Integer" -or $Prop.Value.PrimitiveType -eq "Double" -or $Prop.Value.PrimitiveType -eq "Number") {
        $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [Int]
        `$$ParamName
"@
    }
    elseif ($Prop.Value.PrimitiveType -eq "Boolean") {
        $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [System.Boolean]
        `$$ParamName
"@
    }
    elseif ($Prop.Value.PrimitiveType -eq "String") {
        $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        [ValidateScript( {
                `$allowedTypes = "System.String","Vaporshell.Function"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    throw "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."
                }
            })]
        `$$ParamName
"@
    }
    else{
        $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        `$$ParamName
"@
    }
}

if ($Type -ne "Property") {
    if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
        $scriptContents += @"
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "Vaporshell.Resource.CreationPolicy"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    throw "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."
                }
            })]
        `$CreationPolicy,
"@
    }
    $scriptContents += @"
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        `$DeletionPolicy,
        [parameter(Mandatory = `$false)]
        [System.String[]]
        `$DependsOn,
        [parameter(Mandatory = `$false)]
        [System.Management.Automation.PSCustomObject]
        `$Metadata,
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    throw "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."
                }
            })]
        `$UpdatePolicy,
        [parameter(Mandatory = `$false)]
        `$Condition
    )
    Begin {
        `$ResourceParams = @{
            LogicalId = `$LogicalId
            Type = "$Name"
        }
    }
    Process {
        foreach (`$key in `$PSBoundParameters.Keys) {
            switch (`$key) {
                'LogicalId' {}
"@
    if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
        $scriptContents += @"
                'CreationPolicy' {
                    `$ResourceParams.Add("CreationPolicy",`$CreationPolicy)
                }
"@
    }
        $scriptContents += @"
                'DeletionPolicy' {
                    `$ResourceParams.Add("DeletionPolicy",`$DeletionPolicy)
                }
                'DependsOn' {
                    `$ResourceParams.Add("DependsOn",`$DependsOn)
                }
                'Metadata' {
                    `$ResourceParams.Add("Metadata",`$Metadata)
                }
                'UpdatePolicy' {
                    `$ResourceParams.Add("UpdatePolicy",`$UpdatePolicy)
                }
                'Condition' {
                    `$ResourceParams.Add("Condition",`$Condition)
                }
                Default {
                    if (!(`$ResourceParams["Properties"])) {
                        `$ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    `$val = `$((Get-Variable `$key).Value)
                    if (`$val -eq "True" -or `$val -eq "False") {
                        `$val = `$val.ToLower()
                    }
                    `$ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name `$key -Value `$val
                }
            }
        }
    }
    End {
        `$obj = New-VaporResource @ResourceParams
        `$obj | Add-ObjectDetail -TypeName '$TypeName'
        Write-Verbose "Resulting JSON from `$(`$MyInvocation.MyCommand): ``n``n`$(@{`$obj.LogicalId = `$obj.Props} | ConvertTo-Json -Depth 5)``n"
    }
}
"@
}
else {
$scriptContents += @"
    )
    Begin {
        `$obj = [PSCustomObject]@{}
    }
    Process {
        foreach (`$key in `$PSBoundParameters.Keys) {
            `$val = `$((Get-Variable `$key).Value)
            if (`$val -eq "True" -or `$val -eq "False") {
                `$val = `$val.ToLower()
            }
            `$obj | Add-Member -MemberType NoteProperty -Name `$key -Value `$val
        }
    }
    End {
        `$obj | Add-ObjectDetail -TypeName '$TypeName'
    }
}
"@
}
Set-Content -Value $scriptContents -Path $PS1Path -Force
}

$URL = "https://d1uauaxba7bl26.cloudfront.net/latest/CloudFormationResourceSpecification.json"
$specs = (New-Object System.Net.WebClient).DownloadString($URL) | ConvertFrom-Json

foreach ($resource in $specs.PropertyTypes.psobject.Properties) {
    $resource.Name
    Convert-SpecToFunction -Resource $resource -Type Property
}

foreach ($resource in $specs.ResourceTypes.psobject.Properties) {
    $resource.Name
    Convert-SpecToFunction -Resource $resource -Type Resource
}