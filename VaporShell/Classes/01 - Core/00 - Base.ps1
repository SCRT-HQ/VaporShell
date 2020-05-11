class VSObject {
    static [string] GetIntrinsicKey([string] $value) {
        $_intrinsicDict = @{
            Base64      = 'Fn::Base64'
            Cidr        = 'Fn::Cidr'
            FindInMap   = 'Fn::FindInMap'
            GetAtt      = 'Fn::GetAtt'
            GetAZs      = 'Fn::GetAZs'
            ImportValue = 'Fn::ImportValue'
            Join        = 'Fn::Join'
            Select      = 'Fn::Select'
            Split       = 'Fn::Split'
            Sub         = 'Fn::Sub'
            Transform   = 'Fn::Transform'
            Ref         = 'Ref'
        }
        return $_intrinsicDict[$value]
    }

    hidden [void] _addAccessors() {}

    [string] ToJson() {
        $props = $this.PSObject.Properties.Name
        $cleanProps = $props.Where({$_ -notmatch '^(_|LogicalId)' -and ($null -ne $this."$_" -or $_ -match '::')})
        $clean = $this | Select-Object $cleanProps
        if ($props -contains 'LogicalId') {
            $clean = @{$this.LogicalId = $clean}
        }
        return $clean | ConvertTo-Json -Depth 50
    }

    [string[]] ToYaml() {
        $json = $this.ToJson()
        if ($null -ne (Get-Command cfn-flip*)) {
            return $json | cfn-flip
        }
        else {
            Write-Warning "cfn-flip not found in PATH! Returning JSON"
            return $json
        }
    }

    VSObject() {
        $this._addAccessors()
    }
}
