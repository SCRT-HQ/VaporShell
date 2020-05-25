function Convert-SpecToClass {
    [cmdletbinding()]
    Param (
        [parameter(Mandatory = $true, Position = 0)]
        [object]
        $Resource,
        [parameter(Mandatory = $true, Position = 1)]
        [ValidateSet("Resource", "Property")]
        [string]
        $ResourceType,
        [parameter()]
        [string]
        $SortedFolder,
        [parameter()]
        [switch]
        $BuildHelp
    )
    if ($BuildHelp) {
        $HelpDoc = New-CFNHelpDoc -Resource $Resource -ResourceType $ResourceType
    }
    $Name = $Resource.Name
    $Link = $Resource.Value.Documentation
    $Properties = $Resource.Value.Properties.PSObject.Properties
    $ShortName = $Name.Replace("AWS::", "")
    $ServiceName = $ShortName.Split('::')[0]
    $ServiceModuleName = "VaporShell.$ServiceName"
    $ModPath = [System.IO.Path]::Combine($PSScriptRoot, '..', 'ServiceModules', $ServiceModuleName)
    $basePath = "$($ModPath)\Classes"
    switch ($ResourceType) {
        Property {
            $Dir = "$basePath\00 - Property Types\$SortedFolder"
            $ClassBase = 'VSResourceProperty'
            $ClassName = $ShortName -replace '\W'
            if ($BuildHelp) {
                $Synopsis = "Adds an '$Name' resource property to a '$($ShortName -replace '\..*' -replace '\W')' resource. $($HelpDoc.Synopsis)"
                $Description = "Adds an '$Name' resource property to a '$($ShortName -replace '\..*' -replace '\W')' resource.`n$($HelpDoc.Description)"
            }
        }
        Resource {
            $Dir = "$basePath\10 - Resource Types"
            $ClassBase = 'VSResource'
            $ClassName = $ShortName -replace '\..*' -replace '\W'
            if ($BuildHelp) {
                $Synopsis = "Adds an $Name resource to the template. $($HelpDoc.Synopsis)"
                $Description = "Adds an $Name resource to the template. $($HelpDoc.Description)"
            }
        }
    }
    if (-not (Test-Path $Dir)) {
        New-Item $Dir -ItemType Directory -Force
    }
    $PS1Path = "$Dir\$FunctionName.ps1"
    $scriptContents = @(
        'using namespace System'
        'using namespace System.Collections'
        'using namespace System.Collections.Generic'
        'using namespace System.IO'
        'using namespace System.Management.Automation'
        ''
        "class $ClassName : $ClassBase {"
    )
    $prprtyContents = @()
    $hiddenContents = @()
    $methodContents = @()
    $accessorContents = @(
        '    hidden [void] _addAccessors() {'
    )
    if ($ResourceType -eq 'Resource') {
        $prprtyContents += "    [string] `$Type = '$Name'"
    }

    foreach ($Prop in $Properties) {

        if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
            $prprtyContents += "    [CreationPolicy] `$CreationPolicy"
        }

        if ($ResourceType -ne "Property") {
            if ($Name -ne 'AWS::Events::EventBusPolicy') {
                $prprtyContents += "    [string] `$Conditions"
            }
        }
        $PCount = 0
        $Properties | ForEach-Object { $PCount++ }
        $i = 0
        foreach ($Prop in $Properties) {
            $i++
            if ($ResourceType -ne "Property") {
                $ParamName = "$($Prop.Name),"
            }
            elseif ($i -lt [int]$PCount) {
                $ParamName = "$($Prop.Name),"
            }
            else {
                $ParamName = "$($Prop.Name)"
            }
            if ($Prop.Value.Required -eq "True") {
                $Mandatory = '$true'
            }
            else {
                $Mandatory = '$false'
            }
            if ($Prop.Value.ItemType) {
                if ($Prop.Value.ItemType -eq "Tag") {
                    $prprtyContents += "    [VSResourceTag[]] `$Tags"
                    $accessorContents += @(
                        '        $this | Add-Member -Force -MemberType ScriptProperty -Name Tags -Value {'
                        '            $this.Properties["Tags"]'
                        '        } -SecondValue {'
                        '            param([object] $value)'
                        '            $this.Properties["Tags"] = [VSResourceTag]::TransformTag($value)'
                        '        }'
                    )
                }
                else {
                    $ValType = "[$($ShortName -replace '\..*' -replace '\W')$($Prop.Value.ItemType)"
                    if ($Prop.Value.Type -eq 'List') {
                        $ValType += "[]"
                    }
                    $ValType += "]"
                    $prprtyContents += "    $ValType `$$ParamName"
                    $accessorContents += @(
                        "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                        "            `$this.Properties['$ParamName']"
                        '        } -SecondValue {'
                        "            param([ValidateType(([$($ShortName -replace '\..*' -replace '\W')$($Prop.Value.ItemType)],[IntrinsicFunction]))] [object] `$value)"
                        "            `$this.Properties['$ParamName'] = `$value"
                        '        }'
                    )
                }
            }
            elseif ($Prop.Name -eq "UserData") {
                $prprtyContents += "    [UserData] `$UserData"
                $accessorContents += @(
                    '        $this | Add-Member -Force -MemberType ScriptProperty -Name UserData -Value {'
                    '            $this.Properties["UserData"]'
                    '        } -SecondValue {'
                    '            param([ValidateType(([string],[UserData],[FnBase64],[FnJoin]))] [object] $value)'
                    '            $this.Properties["UserData"] = [Fn::Base64]([UserData]::Transform($value))'
                    '        }'
                )
            }
            elseif ($Prop.Value.Type -eq "Map") {
                $prprtyContents += "    [IDictionary] `$Map"
            }
            elseif ($Prop.Value.PrimitiveType -eq "Integer" -or $Prop.Value.PrimitiveType -eq "Number") {
                $ValType = '[int'
                if ($Prop.Value.Type -eq 'List') {
                    $valueString = '@($value)'
                    $ValType += "[]]"
                }
                else {
                    $valueString = '$value'
                    $ValType += "]"
                }
                $ValType += "]"
                $prprtyContents += "    $ValType `$$ParamName"
                $accessorContents += @(
                    "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                    "            `$this.Properties['$ParamName']"
                    '        } -SecondValue {'
                    '            param([ValidateType(([int],[IntrinsicFunction]))] [object] $value)'
                    "            `$this.Properties['$ParamName'] = $valueString"
                    '        }'
                )
            }
            elseif ($Prop.Value.PrimitiveType -eq "Double") {
                $ValType = '[double'
                if ($Prop.Value.Type -eq 'List') {
                    $valueString = '@($value)'
                    $ValType += "[]]"
                }
                else {
                    $valueString = '$value'
                    $ValType += "]"
                }
                $ValType += "]"
                $prprtyContents += "    $ValType `$$ParamName"
                $accessorContents += @(
                    "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                    "            `$this.Properties['$ParamName']"
                    '        } -SecondValue {'
                    '            param([ValidateType(([double],[IntrinsicFunction]))] [object] $value)'
                    "            `$this.Properties['$ParamName'] = $valueString"
                    '        }'
                )
            }
            elseif ($Prop.Value.PrimitiveType -eq "Boolean") {
                $ValType = '[bool]'
                $prprtyContents += "    $ValType `$$ParamName"
                $accessorContents += @(
                    "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                    "            `$this.Properties['$ParamName']"
                    '        } -SecondValue {'
                    '            param([ValidateType(([bool],[IntrinsicFunction]))] [object] $value)'
                    "            `$this.Properties['$ParamName'] = `$value"
                    '        }'
                )
            }
            elseif ($Prop.Value.PrimitiveType -eq "Json") {
                $prprtyContents += "    [VSJson] `$$ParamName"
                $accessorContents += @(
                    "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                    "            `$this.Properties['$ParamName']"
                    '        } -SecondValue {'
                    '            param([ValidateType(([string],[VSJson],[VSYaml],[psobject],[hashtable],[OrderedDictionary],[IDictionary]))][object] $value)'
                    "            `$this.$ParamName = if (`$value -is [VSJson]) {"
                    '                $value'
                    '             }'
                    '             else {'
                    "                [VSJson]::new(`$value)"
                    '             }'
                    '        }'
                )
            }
            elseif ($Prop.Value.PrimitiveType -eq "String") {
                if ($ParamName -eq "LoggingLevel") {
                    $hiddenContents += '    hidden [object] $_loggingLevel'
                    $prprtyContents += '    [LoggingLevel] $LoggingLevel'
                    $methodContents += @(
                        '    [object] FormatLoggingLevel([object] $loggingLevel) {'
                        '        if ($loggingLevel -is [string]) {'
                        '            return $loggingLevel.ToUpper()'
                        '        }'
                        '        else {'
                        '            return $loggingLevel'
                        '        }'
                        '    }'
                    )
                    $accessorContents += @(
                        '        $this | Add-Member -Force -MemberType ScriptProperty -Name LoggingLevel -Value {'
                        '            $this.FormatLoggingLevel($this._loggingLevel)'
                        '        } -SecondValue {'
                        '            param('
                        '                [ValidateType(([string], [IntrinsicFunction], [LoggingLevel]))] [object]'
                        '                $value'
                        '            )'
                        '            $this._loggingLevel = $value'
                        '        }'
                    )
                }
                elseif ($ClassName -eq 'LambdaFunctionCode' -and $ParamName -eq 'ZipFile') {
                    $prprtyContents += '    [string] $ZipFile'
                    $accessorContents += @(
                        '        $this | Add-Member -Force -MemberType ScriptProperty -Name $ZipFile -Value {'
                        '            $this.ZipFile'
                        '        } -SecondValue {'
                        '            param('
                        '                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]'
                        '                $value'
                        '            )'
                        '            $final = if ($value -is [string] -and (Test-Path $value)) {'
                        '                $resolvedPath = (Resolve-Path $value).Path'
                        '                [File]::ReadAllText($resolvedPath)'
                        '            }'
                        '            else {'
                        '                $value'
                        '            }'
                        '            $this.ZipFile = $final'
                        '        }'
                    )
                }
                else {
                    $prprtyContents += "    [string] `$$ParamName"
                    $accessorContents += @(
                        "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                        '            $this.ZipFile'
                        '        } -SecondValue {'
                        '            param('
                        '                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]'
                        '                $value'
                        '            )'
                        '            $final = if ($value -is [string] -and (Test-Path $value)) {'
                        '                $resolvedPath = (Resolve-Path $value).Path'
                        '                [File]::ReadAllText($resolvedPath)'
                        '            }'
                        '            else {'
                        '                $value'
                        '            }'
                        '            $this.ZipFile = $final'
                        '        }'
                    )
                }
            }
            else {
                $scriptContents += @"
        [parameter(Mandatory = $Mandatory)]
        `$$ParamName
"@
            }
        }
        if ($ResourceType -ne "Property") {
            if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
                $scriptContents += @"
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "Vaporshell.Resource.CreationPolicy"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$CreationPolicy,
"@
            }
            $scriptContents += @"
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        `$DeletionPolicy,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        `$UpdateReplacePolicy,
        [parameter(Mandatory = `$false)]
        [System.String[]]
        `$DependsOn,
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "System.Management.Automation.PSCustomObject"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "The UpdatePolicy parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
"@
            if ($Name -ne 'AWS::Events::EventBusPolicy') {
                $scriptContents += @"
        `$Metadata,
        [parameter(Mandatory = `$false)]
        [ValidateScript( {
                `$allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]`$(`$_.PSTypeNames) -match "(`$((`$allowedTypes|ForEach-Object{[RegEx]::Escape(`$_)}) -join '|'))") {
                    `$true
                }
                else {
                    `$PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: `$(`$allowedTypes -join ", "). The current types of the value are: `$(`$_.PSTypeNames -join ", ")."))
                }
            })]
        `$UpdatePolicy,
        [parameter(Mandatory = `$false)]
        `$Condition
"@
            }
            else {
                $scriptContents += @"
        `$Metadata
"@
            }
            $scriptContents += @"
    )
    Begin {
        `$ResourceParams = @{
            LogicalId = `$LogicalId
            Type = "$Name"
        }
        `$commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach (`$key in `$PSBoundParameters.Keys | Where-Object {`$commonParams -notcontains `$_}) {
            switch (`$key) {
                LogicalId {}
"@
            if ($Name -eq "AWS::AutoScaling::AutoScalingGroup" -or $Name -eq "AWS::EC2::Instance" -or $Name -eq "AWS::CloudFormation::WaitCondition") {
                $scriptContents += @"
                CreationPolicy {
                    `$ResourceParams.Add("CreationPolicy",`$CreationPolicy)
                }
"@
            }
            $scriptContents += @"
                DeletionPolicy {
                    `$ResourceParams.Add("DeletionPolicy",`$DeletionPolicy)
                }
                UpdateReplacePolicy {
                    `$ResourceParams.Add("UpdateReplacePolicy",`$UpdateReplacePolicy)
                }
                DependsOn {
                    `$ResourceParams.Add("DependsOn",`$DependsOn)
                }
                Metadata {
                    `$ResourceParams.Add("Metadata",`$Metadata)
                }
                UpdatePolicy {
                    `$ResourceParams.Add("UpdatePolicy",`$UpdatePolicy)
                }
                Condition {
                    `$ResourceParams.Add("Condition",`$Condition)
                }
"@
            foreach ($Prop in $Properties | Where-Object { $_.Value.Type -eq "List" }) {
                $scriptContents += @"
                $($Prop.Name) {
                    if (!(`$ResourceParams["Properties"])) {
                        `$ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    `$ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $($Prop.Name) -Value @(`$$($Prop.Name))
                }
"@
            }
            foreach ($Prop in $Properties | Where-Object { $_.Value.PrimitiveType -eq "Json" }) {
                $scriptContents += @"
                $($Prop.Name) {
                    if ((`$PSBoundParameters[`$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            `$JSONObject = (ConvertFrom-Json -InputObject `$PSBoundParameters[`$key] -ErrorAction Stop)
                        }
                        catch {
                            `$PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '`$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        `$JSONObject = ([PSCustomObject]`$PSBoundParameters[`$key])
                    }
                    if (!(`$ResourceParams["Properties"])) {
                        `$ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    `$ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name `$key -Value `$JSONObject
                }
"@
            }
            $scriptContents += @"
                Default {
                    if (!(`$ResourceParams["Properties"])) {
                        `$ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    `$ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name `$key -Value `$PSBoundParameters[`$key]
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
        `$commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach (`$key in `$PSBoundParameters.Keys | Where-Object {`$commonParams -notcontains `$_}) {
            switch (`$key) {
"@
            foreach ($Prop in $Properties | Where-Object { $_.Value.PrimitiveType -eq "Json" }) {
                $scriptContents += @"
                $($Prop.Name) {
                    if ((`$PSBoundParameters[`$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            `$JSONObject = (ConvertFrom-Json -InputObject `$PSBoundParameters[`$key] -ErrorAction Stop)
                        }
                        catch {
                            `$PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '`$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        `$JSONObject = ([PSCustomObject]`$PSBoundParameters[`$key])
                    }
                    `$obj | Add-Member -MemberType NoteProperty -Name `$key -Value `$JSONObject
                }
"@
            }
            if ($FunctionName -eq 'Add-VSLambdaFunctionCode') {
                $scriptContents += @"
                ZipFilePath {
                    `$obj | Add-Member -MemberType NoteProperty -Name 'ZipFile' -Value ([System.IO.File]::ReadAllText(`$ZipFilePath))
                }
"@
            }
            $scriptContents += @"
                Default {
                    `$obj | Add-Member -MemberType NoteProperty -Name `$key -Value `$PSBoundParameters.`$key
                }
            }
        }
    }
    End {
        `$obj | Add-ObjectDetail -TypeName '$TypeName'
        Write-Verbose "Resulting JSON from `$(`$MyInvocation.MyCommand): ``n``n`$(`$obj | ConvertTo-Json -Depth 5)``n"
    }
}
"@
        }
        Set-Content -Value $scriptContents -Path $PS1Path -Encoding UTF8 -Force
    }
}
