Describe 'TransformTagAttribute' {
    BeforeAll {
        function Test-TagBinding {
            [CmdletBinding()]
            param (
                [VaporShell.Core.TransformTag()]
                [object[]] $Tags
            )

            $Tags
        }
    }

    It 'Should return one or more tags when given <TestName>' -TestCases @(
        @{
            TestName       = 'multiple hashtables'
            InputData      = @{ one = 1 }, @{ two = 2 }
            ExpectedResult = [PSCustomObject]@{ Key = 'one'; Value = '1' }, [PSCustomObject]@{ Key = 'two'; Value = '2' }
        }
        @{
            TestName       = 'multiple PSObjects'
            InputData      = [PSCustomObject]@{ one = 1 }, [PSCustomObject]@{ two = 2 }
            ExpectedResult = [PSCustomObject]@{ Key = 'one'; Value = '1' }, [PSCustomObject]@{ Key = 'two'; Value = '2' }
        }
        @{
            TestName       = 'a single hashtable with multiple keys'
            InputData      = [PSCustomobject]@{ one = 1; two = 2 }
            ExpectedResult = [PSCustomObject]@{ Key = 'one'; Value = '1' }, [PSCustomObject]@{ Key = 'two'; Value = '2' }
        }
        @{
            TestName       = 'an existing VSTag object'
            InputData      = Add-VSTag -Key one -Value '1'
            ExpectedResult = [PSCustomObject]@{ Key = 'one'; Value = '1' }
        }
        @{
            TestName       = 'a hashtable with Key and Value keys'
            InputData      = @{Key = 'Name'; Value = 'Harold'}
            ExpectedResult = [PSCustomObject]@{ Key = 'Name'; Value = 'Harold' }
        }
        @{
            TestName       = 'a hashtable with lowercase key and value keys'
            InputData      = @{ key = 'Name'; value = 'Harold'}
            ExpectedResult = [PSCustomObject]@{ Key = 'Name'; Value = 'Harold' }
        }
        @{
            TestName       = 'a hashtable with mixed case key and value keys'
            InputData      = @{ kEy = 'Name'; ValUE = 'Harold'}
            ExpectedResult = [PSCustomObject]@{ Key = 'Name'; Value = 'Harold' }
        }
        @{
            TestName       = 'a PSCustomObject key and value properties'
            InputData      = [PSCustomObject]@{ Key = 'Name'; Value = 'Harold' }
            ExpectedResult = [PSCustomObject]@{ Key = 'Name'; Value = 'Harold' }
        }
        @{
            TestName       = 'a PSCustomObject lowercase key and value properties'
            InputData      = [PSCustomObject]@{ key = 'Name'; value = 'Harold' }
            ExpectedResult = [PSCustomObject]@{ Key = 'Name'; Value = 'Harold' }
        }
    ) {
        param (
            $InputData,
            $ExpectedResult
        )

        Assert-Equivalent -Actual (Test-TagBinding -Tags $InputData) -Expected $ExpectedResult
    }
}
