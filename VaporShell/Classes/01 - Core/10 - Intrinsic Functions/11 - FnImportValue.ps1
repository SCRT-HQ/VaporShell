using namespace System.Management.Automation

class FnImportValue : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnImportValue' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnImportValue'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html'
    }

    [string] ToString() {
        return "FnImportValue($($this['Fn::ImportValue']))"
    }

    FnImportValue() {}

    FnImportValue([object] $valueToImport) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($valueToImport -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($valueToImport, $validTypes)
        }
        $this['Fn::ImportValue'] = $valueToImport
    }
}
