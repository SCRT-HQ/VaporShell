class FnSelect : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnSelect' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnSelect'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html'
    }

    [string] ToString() {
        return "FnSelect($($this['Fn::Select']))"
    }

    FnSelect() {}

    FnSelect(
        [object] $index,
        [object[]] $listOfObjects
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($index -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($index, $validTypes)
        }
        foreach ($value in $listOfObjects) {
            $isValid = foreach ($type in $validTypes) {
                if ($value -is $type) {
                    $true
                    break
                }
            }
            if (-not $isValid) {
                throw [VSError]::InvalidType($value, $validTypes)
            }
        }
        $this['Fn::Select'] = @($index, @($listOfObjects))
    }
}
