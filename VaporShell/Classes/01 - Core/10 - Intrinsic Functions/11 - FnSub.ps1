using namespace System
using namespace System.Collections

class FnSub : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnSub' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnSub'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html'
    }

    [string] ToString() {
        return "FnSub($($this['Fn::Sub']))"
    }

    FnSub() {}

    FnSub(
        [string] $string
    ) {
        $this['Fn::Sub'] = $String
    }

    FnSub(
        [string] $string,
        [IDictionary] $mapping
    ) {
        $this['Fn::Sub'] = @($String,$Mapping)
    }
}
