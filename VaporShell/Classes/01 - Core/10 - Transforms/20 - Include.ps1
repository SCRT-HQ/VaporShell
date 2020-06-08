using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class Include : FnTransform {
    [string] $Name = 'AWS::Include'
    [IDictionary] $Parameters = @{Location = ""}

    [string] ToString() {
        return "Include($($this.Parameters['Location']))"
    }

    static [void] Docs() {
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html'
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name 'LogicalId' -Value {
            'Fn::Transform'
        } -SecondValue {
            Write-Warning "This is a readonly property!"
        }
        $this | Add-Member -Force -MemberType ScriptProperty -Name 'Name' -Value {
            'AWS::Include'
        } -SecondValue {
            Write-Warning "This is a readonly property!"
        }
    }

    hidden [void] SetLocation([object] $inputData) {
        $props = if ($inputData -is [string]) {
            [pscustomobject]@{
                Location = $inputData
            }
        }
        elseif ($inputData -is [IDictionary]) {
            [pscustomobject]$inputData
        }
        elseif ($inputData -is [psobject]) {
            $inputData
        }
        else {
            $errorRecord = [VSError]::new(
                [ArgumentException]::new("Invalid input! Please either pass an IDictionary or PSObject containing a Parameters or Location property or just the S3 location as a string value."),
                'InvalidInput',
                [ErrorCategory]::InvalidArgument,
                $inputData
            )
            throw [VSError]::InsertError($errorRecord)
        }
        if ($props.PSObject.Properties.Name -contains 'Parameters') {
            if ($props.Parameters.Location -notmatch '^s3:\/\/.*') {
                $errorRecord = [VSError]::new(
                    [ArgumentException]::new("$($props.Parameters.Location) is not a valid s3 path! Location must match pattern '^s3:\/\/.*'"),
                    'InvalidLocation',
                    [ErrorCategory]::InvalidArgument,
                    $props
                )
                throw [VSError]::InsertError($errorRecord)
            }
            else {
                $this.Parameters['Location'] = $props.Parameters.Location
            }
        }
        elseif ($props.PSObject.Properties.Name -contains 'Location') {
            if ($props.Location -match '^s3:\/\/.*') {
                $this.Parameters['Location'] = $props.Location
            }
            else {
                $errorRecord = [VSError]::new(
                    [ArgumentException]::new("$($props.Location) is not a valid s3 path! Location must match pattern '^s3:\/\/.*'"),
                    'InvalidLocation',
                    [ErrorCategory]::InvalidArgument,
                    $props
                )
                throw [VSError]::InsertError($errorRecord)
            }
        }
        else {
            $errorRecord = [VSError]::new(
                [ArgumentException]::new("Invalid input! Please either pass an IDictionary or PSObject containing a Parameters or Location property or just the S3 location as a string value."),
                'InvalidInput',
                [ErrorCategory]::InvalidArgument,
                $props
            )
            throw [VSError]::InsertError($errorRecord)
        }
    }

    Include() {}

    Include([IDictionary] $props) {
        $this.SetLocation($props)
    }

    Include([psobject] $props) {
        $this.SetLocation($props)
    }

    Include([string] $location) {
        $this.SetLocation($location)
    }
}
