using namespace System
using namespace System.Collections

class FnSplit : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnSplit' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnSplit'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-split.html'
    }

    [string] ToString() {
        return "FnSplit($($this['Fn::Split']))"
    }

    FnSplit() {}

    FnSplit(
        [string] $delimiter,
        [object] $sourceString
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($sourceString -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($sourceString, $validTypes)
        }
        $this['Fn::Split'] = @($delimiter,$sourceString)
    }
}
