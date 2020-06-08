class FnAnd : ConditionFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-ConAnd' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-ConAnd'}
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
        Start-Process 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and'
    }

    [string] ToString() {
        return "FnAnd($($this['Fn::And']))"
    }

    FnAnd() {}

    FnAnd([object[]] $value) {
        $validTypes = @([string], [int], [FnFindInMap], [FnRef], [ConditionFunction])
        foreach ($item in $value) {
            $isValid = foreach ($type in $validTypes) {
                if ($item -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($item, $validTypes)
            }
        }
        $this['Fn::And'] = @($value)
    }
}
