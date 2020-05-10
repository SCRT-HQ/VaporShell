enum VSDeletionPolicy {
    DELETE
    RETAIN
    SNAPSHOT
}

enum VSUpdateReplacePolicy {
    DELETE
    RETAIN
    SNAPSHOT
}

class FnRef {
    [string] $Ref

    [string] ToString() {
        return "Ref($($this.Ref))"
    }

    FnRef () { }

    FnRef ([string] $ref) {
        $this.Ref = $ref
    }
}

class VSResourceProperties {
    VSResourceProperties() { }

    VSResourceProperties([hashtable] $props) {
        $props.GetEnumerator() | ForEach-Object {
            $this | Add-Member -MemberType Property -Name $_.Key -Value $_.Value -Force
        }
    }

    VSResourceProperties([psobject] $props) {
        $props.PSObject.Properties.Name | ForEach-Object {
            $this | Add-Member -MemberType Property -Name $_ -Value $props.$_ -Force
        }
    }
}

class VSResource {
    hidden [string] $_logicalId
    hidden [string] $_deletionPolicy
    hidden [string] $_updateReplacePolicy

    [string] $LogicalId
    [string] $Type
    [VSResourceProperties] $Properties
    [object] $Condition
    [object] $CreationPolicy
    [object] $UpdatePolicy
    [VSDeletionPolicy] $DeletionPolicy
    [VSUpdateReplacePolicy] $UpdateReplacePolicy
    [string[]] $DependsOn
    [object] $Metadata


    [string] ToString() {
        return $this.LogicalId
    }

    [string] ToJson() {
        $cleanProps = $this.PSObject.Properties.Name.Where({$_ -notmatch '^(_|LogicalId)' -and $null -ne $this.$_})
        $clean = $this | Select-Object $cleanProps
        $hash = @{$this.LogicalId = $clean}
        return $hash | ConvertTo-Json -Depth 50
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name LogicalId -Value {$this._logicalId} -SecondValue {
            param([string] $logicalId)
            if ($logicalId -notmatch '^[a-zA-Z0-9]*$') {
                throw "The LogicalId must be alphanumeric (a-z, A-Z, 0-9) and unique within the template. Value provided: '$logicalId'"
            }
            else {
                $this._logicalId = $logicalId
            }
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name DeletionPolicy -Value {$this._deletionPolicy} -SecondValue {
            param([VSDeletionPolicy] $deletionPolicy)
            $this._deletionPolicy = $deletionPolicy.ToString()
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name UpdateReplacePolicy -Value {$this._updateReplacePolicy} -SecondValue {
            param([VSUpdateReplacePolicy] $updateReplacePolicy)
            $this._updateReplacePolicy = $updateReplacePolicy.ToString()
        }
    }

    VSResource() {
        $this._addAccessors()
    }

    VSResource([hashtable] $props) {
        $this._addAccessors()
        $props.GetEnumerator() | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_.Key) {
                $this."$($_.Key)" = $_.Value
            }
        }
    }

    VSResource([psobject] $props) {
        $this._addAccessors()
        $props.PSObject.Properties.Name | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_) {
                $this."$($_)" = $props.$_
            }
        }
    }
}

class VSTemplate {
    hidden [hashtable] $_resources = @{}
    # The description of the template
    [string] $Description
    # The resources on the template
    [VSResource[]] $Resources

    [string] ToJson() {
        $cleanProps = $this.PSObject.Properties.Name.Where({$_ -notmatch '^_' -and $null -ne $this.$_})
        $clean = $this | Select-Object $cleanProps
        return $clean | ConvertTo-Json -Depth 50
    }

    [string] ToString() {
        return $this.ToJson()
    }

    [void] AddResource([VSResource] $resource) {
        $cleanProps = $resource.PSObject.Properties.Name.Where({$_ -notmatch '^(_|LogicalId)' -and $null -ne $resource.$_})
        Write-Host "Selecting properties: $cleanProps"
        $this._resources[$resource.LogicalId] = $resource | Select-Object $cleanProps
    }

    [void] AddResource([VSResource[]] $resources) {
        $resources | ForEach-Object {
            $this.AddResource($_)
        }
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Resources -Value {$this._resources} -SecondValue {
            param([VSResource[]] $resources)
            $this.AddResource($resources)
        }
    }

    VSTemplate () {
        $this._addAccessors()
    }

    VSTemplate([hashtable] $props) {
        $this._addAccessors()
        $props.GetEnumerator() | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_.Key) {
                $this."$($_.Key)" = $_.Value
            }
        }
    }

    VSTemplate([psobject] $props) {
        $this._addAccessors()
        $props.PSObject.Properties.Name | ForEach-Object {
            if ($this.PSObject.Properties.Name -contains $_) {
                $this."$($_)" = $props.$_
            }
        }
    }
}

class S3BucketProperties : VSResourceProperties {
    [object] $BucketName
    S3BucketProperties() { }
}

class S3Bucket : VSResource {
    [S3BucketProperties] $Properties

    S3Bucket() {
        $this.Type = "AWS::S3::Bucket"
    }
    S3Bucket([S3BucketProperties] $properties) {
        $this.Type = "AWS::S3::Bucket"
        $this.Properties = $properties
    }
}

$t = [VSTemplate]@{
    Description = "My template"
    Resources = @(
        [S3Bucket]@{
            LogicalId      = 'MyBucket'
            DeletionPolicy = 'RETAIN'
            Properties     = [S3BucketProperties]@{
                BucketName = 'my-test-bucket'
            }
        }
        [S3Bucket]@{
            LogicalId      = 'MyOtherBucket'
            DeletionPolicy = 'RETAIN'
            Properties     = [S3BucketProperties]@{
                BucketName = [FnRef]('MyBucket')
            }
        }
    )
}

$t2Hash = @{
    Resources = @(
        [S3Bucket]@{
            LogicalId      = 'MyBucket'
            DeletionPolicy = 'RETAIN'
            Properties     = [S3BucketProperties]@{
                BucketName = 'my-test-bucket'
            }
        }
        [S3Bucket]@{
            LogicalId      = 'MyOtherBucket'
            DeletionPolicy = 'RETAIN'
            Properties     = [S3BucketProperties]@{
                BucketName = [FnRef]'MyBucket'
            }
        }
    )
}
$t2 = [VSTemplate]::new($t2Hash)

$resource = [S3Bucket]@{
    LogicalId      = 'MyBucket'
    DeletionPolicy = 'RETAIN'
    UpdateReplacePolicy = 'RETAIN'
    Properties     = [S3BucketProperties]@{
        BucketName = [FnRef]'BucketName'
    }
}

$t.ToJson()
$t2.ToJson()
