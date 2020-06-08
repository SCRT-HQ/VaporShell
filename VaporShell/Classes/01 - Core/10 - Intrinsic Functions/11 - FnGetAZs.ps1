using namespace System.Management.Automation

class FnGetAZs : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnGetAZs' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnGetAZs'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getavailabilityzones.html'
    }

    [string] ToString() {
        return "FnGetAZs($($this['Fn::GetAZs']))"
    }

    FnGetAZs() {}

    FnGetAZs([object] $region) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($region -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($region, $validTypes)
        }
        $this['Fn::GetAZs'] = $region
    }
}
