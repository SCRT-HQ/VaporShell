using namespace System.Management.Automation

class FnCidr : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnCidr' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnCidr'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html'
    }

    [string] ToString() {
        return "FnCidr($($this['Fn::Cidr']))"
    }

    FnCidr() {}

    FnCidr(
        [object] $ipBlock,
        [object] $count,
        [object] $cidrBits
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($ipBlock -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($ipBlock, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($count -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($count, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($cidrBits -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($cidrBits, $validTypes)
        }
        $this['Fn::Cidr'] = @($ipBlock, $count, $cidrBits)
    }
}
