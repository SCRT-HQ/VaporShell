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
        [int]
        $Number = 0,
        [parameter()]
        [string[]]
        $DuplicateClassNames = @(),
        [parameter()]
        [switch]
        $BuildHelp
    )
    $bareResource = $Resource.Resource
    if ($BuildHelp) {
        $HelpDoc = New-CFNHelpDoc -Resource $bareResource -ResourceType $ResourceType
    }
    $Name = $bareResource.Name
    $Link = $bareResource.Value.Documentation
    $Properties = $bareResource.Value.Properties.PSObject.Properties
    $ShortName = $Name.Replace("AWS::", "")
    $ServiceName = $ShortName.Split('::')[0]
    if ($ServiceName -eq 'Serverless') {
        $ServiceName = 'SAM'
        $ShortName = $ShortName -replace '^Serverless','SAM'
    }
    $ServiceModuleName = "VaporShell.$ServiceName"
    $ModPath = [System.IO.Path]::Combine($PSScriptRoot, '..', '..', '..', 'ServiceModules', $ServiceModuleName)
    $basePath = "$($ModPath)\Classes"
    $noDepsTypes = @('Boolean', 'Double', 'Integer', 'Json', 'Long', 'String', 'Timestamp')
    switch ($ResourceType) {
        Property {
            $Dir = "$basePath\00 - Property Types"
            $ClassBase = 'VSResourceProperty'
            $ClassName = $ShortName -replace '\W'
            if ($ClassName -in $DuplicateClassNames) {
                $ClassName = $ClassName + 'Property'
            }
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
        $null = New-Item $Dir -ItemType Directory -Force
    }
    $PS1Path = "$Dir\$('{0:0000}' -f $Number) - $ClassName.ps1"
    Write-BuildLog "Generating $ResourceType class: $ServiceModuleName\$ClassName"
    $scriptContents = @(
        'using namespace System'
        'using namespace System.Collections'
        'using namespace System.Collections.Generic'
        'using namespace System.IO'
        'using namespace System.Management.Automation'
        ''
        #"Write-Verbose `"Importing class '$ClassName'`""
        "class $ClassName : $ClassBase {"
    )
    $helpMethod = switch ($ResourceType) {
        Resource {
            @(
                '    static [string] GetHelp() {'
                "        return (Get-Help -Name 'New-VS$ClassName' | Out-String)"
                '    }'
                ''
                '    static [string] GetHelp([string] $scope) {'
                "        `$params = @{Name = 'New-VS$ClassName'}"
                '        switch -Regex ($scope) {'
                "            '^F(u|ull){0,1}' {"
                '                $params["Full"] = $true'
                '            }'
                "            '^D(e|etail){0,1}' {"
                '                $params["Detailed"] = $true'
                '            }'
                "            '^E(x|xample){0,1}' {"
                '                $params["Examples"] = $true'
                '            }'
                "            '^O(n|nline){0,1}$' {"
                '                $params["Online"] = $true'
                '            }'
                '        }'
                '        return (Get-Help @params | Out-String)'
                '    }'
            )
        }
        Property {
            @(
                '    static [string] GetHelp() {'
                "        return (Get-Help -Name 'Add-VS$ClassName' | Out-String)"
                '    }'
                ''
                '    static [string] GetHelp([string] $scope) {'
                "        `$params = @{Name = 'Add-VS$ClassName'}"
                '        switch -Regex ($scope) {'
                "            '^F(u|ull){0,1}' {"
                '                $params["Full"] = $true'
                '            }'
                "            '^D(e|etail){0,1}' {"
                '                $params["Detailed"] = $true'
                '            }'
                "            '^E(x|xample){0,1}' {"
                '                $params["Examples"] = $true'
                '            }'
                "            '^O(n|nline){0,1}$' {"
                '                $params["Online"] = $true'
                '            }'
                '        }'
                '        return (Get-Help @params | Out-String)'
                '    }'
            )
        }
    }
    if ($Resource.Documentation) {
        $helpMethod += @(
            ''
            '    static [void] OpenCFNDocs() {'
            "        Start-Process '$($Resource.Documentation)'"
            '    }'
        )
    }
    $prprtyContents = @()
    if ($ResourceType -eq 'Resource') {
        $prprtyContents += "    [string] `$Type = '$Name'"
    }
    $hiddenContents = @()
    $methodContents = @()
    $accessorContents = @(
        '    hidden [void] _addAccessors() {'
    )
    $PCount = 0
    $Properties | ForEach-Object { $PCount++ }
    $i = 0
    foreach ($Prop in $Properties) {
        $i++
        $ParamName = "$($Prop.Name)"
        $_paramName = '_' + "$($Prop.Name)".SubString(0,1).ToLower() + "$($Prop.Name)".SubString(1)
        if ($ParamName -eq 'Type' -and $ResourceType -eq 'Resource') {
            $ParamName = (($ShortName -split '::')[-1] -replace '\W') + 'Type'
            $_paramName = '_' + "$ParamName".SubString(0,1).ToLower() + "$ParamName".SubString(1)
        }
        if ($Prop.Value.PrimitiveItemType -in @('Boolean','Integer','Json','String')) {
            $propType = switch ($Prop.Value.PrimitiveItemType) {
                Boolean {
                    'bool'
                }
                Integer {
                    'int'
                }
                Json {
                    'VSJson'
                }
                String {
                    'string'
                }
            }
            $ValType = "[$propType"
            if ($Prop.Value.Type -eq 'List') {
                $valueString = '@($value)'
                $ValType += "[]"
            }
            else {
                $valueString = '$value'
            }
            $ValType += "]"
            $prprtyContents += "    $ValType `$$ParamName"
            if ($ResourceType -eq 'Resource') {
                $getter = "`$this.Properties['$ParamName']"
                $setter = "`$this.Properties['$ParamName'] = $valueString"
            }
            else {
                $hiddenContents += "    hidden [object] `$$_paramName"
                $getter = "`$this.$_paramName"
                $setter = "`$this.$_paramName = $valueString"
            }
            $accessorContents += @(
                "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                "            $getter"
                '        } -SecondValue {'
                '            param([ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object] $value)'
                "            $setter"
                '        }'
            )
        }
        elseif ($Prop.Value.ItemType) {
            if ($Prop.Value.ItemType -eq "Tag" -or ($ParamName -eq 'Tags' -and $Prop.Value.ItemType -eq 'Json' -and $Prop.Value.Type -eq 'List')) {
                $prprtyContents += "    [VSResourceTag[]] `$$ParamName"
                if ($ResourceType -eq 'Resource') {
                    $getter = "`$this.Properties['$ParamName']"
                    $setter = "`$this.Properties['$ParamName'] = [VSResourceTag]::TransformTag(`$value)"
                }
                else {
                    $hiddenContents += "    hidden [object] `$$_paramName"
                    $getter = "`$this.$_paramName"
                    $setter = "`$this.$_paramName = [VSResourceTag]::TransformTag(`$value)"
                }
                $accessorContents += @(
                    "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                    "            $getter"
                    '        } -SecondValue {'
                    '            param([object] $value)'
                    "            $setter"
                    '        }'
                )
            }
            else {
                $singleType = ($ShortName -replace '\..*' -replace '\W') + $Prop.Value.ItemType
                $ValType = "[$singleType"
                if ($singleType -in $DuplicateClassNames -and $ResourceType -eq 'Property') {
                    $ValType += 'Property'
                }
                if ($Prop.Value.Type -eq 'List') {
                    $ValType += "[]"
                }
                $ValType += "]"
                $prprtyContents += "    $ValType `$$ParamName"
                if ($ResourceType -eq 'Resource') {
                    $getter = "`$this.Properties['$ParamName']"
                    $setter = "`$this.Properties['$ParamName'] = `$value"
                }
                else {
                    $hiddenContents += "    hidden [object] `$$_paramName"
                    $getter = "`$this.$_paramName"
                    $setter = "`$this.$_paramName = `$value"
                }
                $accessorContents += @(
                    "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                    "            $getter"
                    '        } -SecondValue {'
                    "            param([ValidateType(([$($ShortName -replace '\..*' -replace '\W')$($Prop.Value.ItemType)], [IntrinsicFunction], [ConditionFunction]))] [object] `$value)"
                    "            $setter"
                    '        }'
                )
            }
        }
        elseif ($Prop.Name -eq "UserData") {
            $prprtyContents += "    [UserData] `$$ParamName"
            if ($ResourceType -eq 'Resource') {
                $getter = "`$this.Properties['$ParamName']"
                $setter = "`$this.Properties['$ParamName'] = [FnBase64]([UserData]::Transform(`$value))"
            }
            else {
                $hiddenContents += "    hidden [object] `$$_paramName"
                $getter = "`$this.$_paramName"
                $setter = "`$this.$_paramName = [FnBase64]([UserData]::Transform(`$value))"
            }
            $accessorContents += @(
                '        $this | Add-Member -Force -MemberType ScriptProperty -Name UserData -Value {'
                "            $getter"
                '        } -SecondValue {'
                '            param([ValidateType(([string],[UserData],[FnBase64],[FnJoin]))] [object] $value)'
                "            $setter"
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
                $ValType += "[]"
            }
            else {
                $valueString = '$value'
            }
            $ValType += "]"
            $prprtyContents += "    $ValType `$$ParamName"
            if ($ResourceType -eq 'Resource') {
                $getter = "`$this.Properties['$ParamName']"
                $setter = "`$this.Properties['$ParamName'] = $valueString"
            }
            else {
                $hiddenContents += "    hidden [object] `$$_paramName"
                $getter = "`$this.$_paramName"
                $setter = "`$this.$_paramName = $valueString"
            }
            $accessorContents += @(
                "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                "            $getter"
                '        } -SecondValue {'
                '            param([ValidateType(([int],[IntrinsicFunction],[ConditionFunction]))] [object] $value)'
                "            $setter"
                '        }'
            )
        }
        elseif ($Prop.Value.PrimitiveType -eq "Double") {
            $ValType = '[double'
            if ($Prop.Value.Type -eq 'List') {
                $valueString = '@($value)'
                $ValType += "[]"
            }
            else {
                $valueString = '$value'
            }
            $ValType += "]"
            $prprtyContents += "    $ValType `$$ParamName"
            if ($ResourceType -eq 'Resource') {
                $getter = "`$this.Properties['$ParamName']"
                $setter = "`$this.Properties['$ParamName'] = $valueString"
            }
            else {
                $hiddenContents += "    hidden [object] `$$_paramName"
                $getter = "`$this.$_paramName"
                $setter = "`$this.$_paramName = $valueString"
            }
            $accessorContents += @(
                "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                "            $getter"
                '        } -SecondValue {'
                '            param([ValidateType(([double], [IntrinsicFunction], [ConditionFunction]))] [object] $value)'
                "            $setter"
                '        }'
            )
        }
        elseif ($Prop.Value.PrimitiveType -eq "Boolean") {
            $ValType = '[bool]'
            $prprtyContents += "    $ValType `$$ParamName"
            if ($ResourceType -eq 'Resource') {
                $getter = "`$this.Properties['$ParamName']"
                $setter = "`$this.Properties['$ParamName'] = `$value"
            }
            else {
                $hiddenContents += "    hidden [object] `$$_paramName"
                $getter = "`$this.$_paramName"
                $setter = "`$this.$_paramName = `$value"
            }
            $accessorContents += @(
                "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                "            $getter"
                '        } -SecondValue {'
                '            param([ValidateType(([bool], [IntrinsicFunction], [ConditionFunction]))] [object] $value)'
                "            $setter"
                '        }'
            )
        }
        elseif ($Prop.Value.PrimitiveType -eq "Json") {
            $prprtyContents += "    [VSJson] `$$ParamName"
            $accessorContents += @(
                "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                "            `$this.Properties['$ParamName']"
                '        } -SecondValue {'
                '            param([ValidateType(([string], [VSJson], [VSYaml], [psobject], [IDictionary]))][object] $value)'
                "            `$this.Properties['$ParamName'] = if (`$value -is [VSJson]) {"
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
                    '                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction], [LoggingLevel]))] [object]'
                    '                $value'
                    '            )'
                    '            $this._loggingLevel = $value'
                    '        }'
                )
            }
            elseif ($ClassName -eq 'LambdaFunctionCode' -and $ParamName -eq 'ZipFile') {
                $hiddenContents += '    hidden [object] $_zipFile'
                $prprtyContents += '    [string] $ZipFile'
                $accessorContents += @(
                    '        $this | Add-Member -Force -MemberType ScriptProperty -Name ZipFile -Value {'
                    '            $this._zipFile'
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
                    '            $this._zipFile = $final'
                    '        }'
                )
            }
            else {
                $ValType = '[string'
                if ($Prop.Value.Type -eq 'List') {
                    $valueString = '@($value)'
                    $ValType += "[]"
                }
                else {
                    $valueString = '$value'
                }
                $ValType += "]"
                $prprtyContents += "    $ValType `$$ParamName"
                if ($ResourceType -eq 'Resource') {
                    $getter = "`$this.Properties['$ParamName']"
                    $setter = "`$this.Properties['$ParamName'] = $valueString"
                }
                else {
                    $hiddenContents += "    hidden [object] `$$_paramName"
                    $getter = "`$this.$_paramName"
                    $setter = "`$this.$_paramName = $valueString"
                }
                $accessorContents += @(
                    "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                    "            $getter"
                    '        } -SecondValue {'
                    '            param([ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object] $value)'
                    "            $setter"
                    '        }'
                )
            }
        }
        else {
            $propType = if ($prop.Value.ItemType) {
                if (($prop.Value.ItemType -eq 'Tag' -or $prop.Value.ItemType -eq 'Json') -and $prop.Value.Type -eq 'List') {
                    'VSResourceTag'
                }
                else {
                    $ShortName -replace '\..*', $prop.Value.ItemType -replace '\W'
                }
            }
            elseif ($prop.Value.Type) {
                if (($prop.Value.Type -eq 'Tag' -or $prop.Value.Type -eq 'Json') -and $prop.Value.Type -eq 'List') {
                    'VSResourceTag'
                }
                elseif ($prop.Value.Type -in $noDepsTypes) {
                    $prop.Value.Type
                }
                else {
                    $ShortName -replace '\..*', $prop.Value.Type -replace '\W'
                }
            }
            elseif ($prop.Value.PrimitiveType) {
                $prop.Value.PrimitiveType
            }
            elseif ($prop.Value.PrimitiveItemType) {
                $prop.Value.PrimitiveItemType
            }
            else {
                'object'
            }
            switch -Regex ($propType) {
                '^Boolean$' {
                    $propType = 'bool'
                }
                '^Double$' {
                    $propType = 'double'
                }
                '^(Integer|Number)$' {
                    $propType = 'int'
                }
                '^Long$' {
                    $propType = 'long'
                }
                '^Json$' {
                    $propType = 'VSJson'
                }
                '^Timestamp$' {
                    $propType = 'VSTimestamp'
                }
                '^String$' {
                    $propType = 'string'
                }
            }
            $ValType = "[$propType"
            if ($Prop.Value.Type -eq 'List') {
                $valueString = '@($value)'
                $ValType += "[]"
            }
            else {
                $valueString = '$value'
            }
            $ValType += "]"
            $prprtyContents += "    $ValType `$$ParamName"
            if ($ResourceType -eq 'Resource') {
                $getter = "`$this.Properties['$ParamName']"
                $setter = "`$this.Properties['$ParamName'] = $valueString"
            }
            else {
                $hiddenContents += "    hidden [object] `$$_paramName"
                $getter = "`$this.$_paramName"
                $setter = "`$this.$_paramName = $valueString"
            }
            $accessorContents += @(
                "        `$this | Add-Member -Force -MemberType ScriptProperty -Name $ParamName -Value {"
                "            $getter"
                '        } -SecondValue {'
                '            param([ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object] $value)'
                "            $setter"
                '        }'
            )
        }
    }
    if ($ResourceType -ne "Property") {
        $prprtyContents += '    [IDictionary] $Metadata'
        if ($Name -in @("AWS::AutoScaling::AutoScalingGroup","AWS::EC2::Instance","AWS::CloudFormation::WaitCondition")) {
            $prprtyContents += '    [CreationPolicy] $CreationPolicy'
        }
        if ($Name -ne 'AWS::Events::EventBusPolicy') {
            $hiddenContents += '    hidden [object] $_condition'
            $prprtyContents += '    [UpdatePolicy] $UpdatePolicy'
            $prprtyContents += '    [string] $Condition'
            $accessorContents += @(
                "        `$this | Add-Member -Force -MemberType ScriptProperty -Name Condition -Value {"
                '            $this._condition'
                '        } -SecondValue {'
                '            param('
                '                [ValidateType(([string], [IntrinsicFunction], [ConditionFunction]))] [object]'
                '                $value'
                '            )'
                '            $this._condition = $value'
                '        }'
            )
        }
    }
    $scriptContents += $hiddenContents
    $scriptContents += ""
    $scriptContents += $prprtyContents
    $scriptContents += ""
    $scriptContents += $helpMethod
    $scriptContents += ""
    $scriptContents += $accessorContents
    $scriptContents += "    }"
    $scriptContents += ""
    $scriptContents += @(
        "    $ClassName() : base() {}"
        "    $ClassName([IDictionary] `$props) : base(`$props) {}"
        "    $ClassName([psobject] `$props) : base(`$props) {}"
        '}'
    )
    Set-Content -Value ($scriptContents -join [System.Environment]::NewLine) -Path $PS1Path -Encoding UTF8 -Force
}
