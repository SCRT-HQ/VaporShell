[CmdletBinding()]
Param(
    [Parameter(Position = 0)]
    [ValidateSet('BuildCoreOnly','BuildClasses','TestClasses')]
    [string[]]
    $Task = @('BuildCoreOnly','TestClasses')
)

$BuildRoot = $PSScriptRoot
$buildOutputPath = [System.IO.Path]::Combine($BuildRoot,'BuildOutput')

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

try {
    $modules = @(
        'VaporShell'
        'VaporShell.ElasticLoadBalancing'
        'VaporShell.EC2'
        'VaporShell.AutoScaling'
    )
    Write-Host -ForegroundColor Green "Importing modules..."
    Import-Module $modules -Force
    Write-Host -ForegroundColor Green "Module imported, creating templates..."

    $DebugPreference = 'Continue'

    $stack = [VSTemplate]@{
        Parameters = @(
            [VSParameter]@{
                LogicalId = 'MinSize'
                Type = 'Number'
            }
            [VSParameter]@{
                LogicalId = 'MaxSize'
                Type = 'Number'
            }
            [VSParameter]@{
                LogicalId = 'DesiredSize'
                Type = 'Number'
            }
            [VSParameter]@{
                LogicalId = 'ImageId'
                Type = 'AWS::EC2::Image::Id'
            }
            [VSParameter]@{
                LogicalId = 'InstanceType'
                Type = 'String'
            }
            [VSParameter]@{
                LogicalId = 'KeyName'
                Type = 'String'
            }
            [VSParameter]@{
                LogicalId = 'SSLCertificateArn'
                Type = 'String'
            }
            [VSParameter]@{
                LogicalId = 'PrivateSubnets'
                Type = 'List<AWS::EC2::Subnet::Id>'
            }
            [VSParameter]@{
                LogicalId = 'PublicSubnets'
                Type = 'List<AWS::EC2::Subnet::Id>'
            }
            [VSParameter]@{
                LogicalId = 'ASGSecurityGroups'
                Type = 'List<AWS::EC2::SecurityGroup::Id>'
            }
            [VSParameter]@{
                LogicalId = 'BastionSecurityGroups'
                Type = 'List<AWS::EC2::SecurityGroup::Id>'
            }
            [VSParameter]@{
                LogicalId = 'LoadBalancerSecurityGroups'
                Type = 'List<AWS::EC2::SecurityGroup::Id>'
            }
        )
        Conditions = @(
            [VSCondition]@{
                LogicalId = 'HasSSL'
                Condition = [ConNot]::new([ConEquals]::new(([FnRef]'SSLCertificateArn','')))
            }
            [VSCondition]@{
                LogicalId = 'HasSSHKey'
                Condition = [ConNot]::new([ConEquals]::new([FnRef]'KeyName',''))
            }
        )
        Resources = @(
            [ElasticLoadBalancingLoadBalancer]@{
                LogicalId = 'LoadBalancer'
                Subnets = [FnRef]'PublicSubnets'
                SecurityGroups = [FnRef]'LoadBalancerSecurityGroups'
                Listeners = @(
                    [ElasticLoadBalancingLoadBalancerListeners]@{
                        LoadBalancerPort = '80'
                        InstancePort = '80'
                        Protocol = 'HTTP'
                    }
                    [ConIf]::new(
                        'HasSSL',
                        [ElasticLoadBalancingLoadBalancerListeners]@{
                            LoadBalancerPort = '443'
                            InstancePort = '443'
                            Protocol = 'HTTPS'
                            SSLCertificateId = [FnRef]'SSLCertificateArn'
                        },
                        [FnRef]::NoValue
                    )
                )
                HealthCheck = [ElasticLoadBalancingLoadBalancerHealthCheck]@{
                    Target = 'HTTP:80/'
                    HealthyThreshold = '3'
                    UnhealthyThreshold = '5'
                    Interval = '30'
                    Timeout = '5'
                }
            }
            [AutoScalingLaunchConfiguration]@{
                LogicalId = 'WebServerLaunchConfig'
                KeyName = [ConIf]::new(
                    'HasSSHKey',
                    [FnRef]'KeyName',
                    [FnRef]::NoValue
                )
                ImageId = [FnRef]'ImageId'
                UserData = (
                    '#!/bin/bash',
                    'yum install -y nginx',
                    'service nginx start'
                )
                SecurityGroups = [FnRef]'ASGSecurityGroups'
                InstanceType = [FnRef]'InstanceType'
            }
            [EC2Instance]@{
                LogicalId = 'Bastion'
                Condition = 'HasSSHKey'
                ImageId = [FnRef]'ImageId'
                InstanceType = 't2.micro'
                NetworkInterfaces = @(
                    [EC2InstanceNetworkInterface]@{
                        AssociatePublicIpAddress = $true
                        DeviceIndex = '0'
                        GroupSet = [FnRef]'BastionSecurityGroups'
                        SubnetId = [FnSelect]::new(0, [FnRef]'PublicSubnets')
                    }
                )
            }
        )
    }

    "`n`n~~~~~~~~~~~~~~~~~~~~~ `$stack.ToJson() ~~~~~~~~~~~~~~~~~~~~~`n"
    $stack.ToJson()

    "`n`n~~~~~~~~~~~~~~~~~~~~~ `$stack.ToYaml() ~~~~~~~~~~~~~~~~~~~~~`n"
    $stack.ToYaml()
}
catch {
    $_
}
