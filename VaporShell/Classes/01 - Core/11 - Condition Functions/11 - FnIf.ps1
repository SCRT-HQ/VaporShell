class FnIf : ConditionFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-ConIf' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-ConIf'}
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
        Start-Process 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if'
    }

    [string] ToString() {
        return "FnIf($($this['Fn::If']))"
    }

    FnIf() {}

    FnIf(
        [string] $conditionName,
        [object] $valueIfTrue,
        [object] $valueIfFalse
    ) {
        $validTypes = @([string], [int], [FnBase64], [FnFindInMap], [FnGetAtt], [FnGetAZs], [FnIf], [FnJoin], [FnSelect], [FnSub] [FnRef], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($valueIfTrue -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($valueIfTrue, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($valueIfFalse -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($valueIfFalse, $validTypes)
        }
        $this['Fn::If'] = @($conditionName,$valueIfTrue,$valueIfFalse)
    }
}
