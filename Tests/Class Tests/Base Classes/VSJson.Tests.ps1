$BuildRoot = (Resolve-Path ([System.IO.Path]::Combine($PSScriptRoot, '..', '..', '..'))).Path
$buildOutputPath = [System.IO.Path]::Combine($BuildRoot, 'BuildOutput')

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

Import-Module VaporShell

Describe "VSJson tests" -Tag 'Class', 'VSJson', 'VaporShell', 'ClassUnit' {
    Context 'Initialization' {
        It "Should create VSJson from hashtable" {
            {
                [VSJson]@{
                    Statement = @(
                        @{
                            Action   = @(
                                "logs:CreateLogStream"
                                "logs:CreateLogGroup"
                                "logs:DescribeLogGroups"
                                "logs:DescribeLogStreams"
                                "logs:PutLogEvents"
                                "ec2:DescribeTags"
                                "ec2:DescribeVolumes"
                                "ec2:DescribeInstances"
                            )
                            Resource = @("*")
                            Effect   = "Allow"
                        }
                        @{
                            Condition = @{
                                StringEquals = @{
                                    "ec2:ResourceTag/aws:cloudformation:stack-name" = [FnRef]::StackName
                                }
                            }
                            Action    = @(
                                "ec2:CreateTags"
                                "ec2:DeleteTags"
                            )
                            Resource  = @("*")
                            Effect    = "Allow"
                        }
                    )
                }
            } | Should -Not -Throw
        }
    }
}
