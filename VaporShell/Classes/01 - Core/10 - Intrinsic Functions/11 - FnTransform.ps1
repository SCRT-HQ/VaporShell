
using namespace System
using namespace System.Collections

class FnTransform : VSLogicalObject {
    [string] $LogicalId = 'Fn::Transform'
    [string] $Name
    [IDictionary] $Parameters

    static [string] Help() {
        return (Get-Help -Name 'Add-FnTransform' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnTransform'}
        switch -Regex ($scope) {
            '^F(u|ull){0,1}' {
                $params["Full"] = $true
            }
            '^D(e|etail){0,1}' {
                $params["Detailed"] = $true
            }
            '^E(x|xample){0,1}' {
                $params["Examples"] = $true
            }
            '^O(n|nline){0,1}$' {
                $params["Online"] = $true
            }
        }
        return (Get-Help @params | Out-String)
    }

    static [void] Docs() {
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-transform.html'
    }

    [string] ToString() {
        return "FnTransform($($this['Fn::Transform']))"
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name LogicalId -Value {
            'Fn::Transform'
        } -SecondValue {
            Write-Warning "This is a readonly property!"
        }
    }

    FnTransform() : base() {}
    FnTransform([IDictionary] $props) : base($props) {}
    FnTransform([psobject] $props) : base($props) {}
}
