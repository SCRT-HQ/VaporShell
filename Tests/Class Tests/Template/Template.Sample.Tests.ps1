$BuildRoot = (Resolve-Path ([System.IO.Path]::Combine($PSScriptRoot,'..','..','..'))).Path
$buildOutputPath = [System.IO.Path]::Combine($BuildRoot,'BuildOutput')

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

Import-Module VaporShell,
            VaporShell.AutoScaling,
            VaporShell.EC2,
            VaporShell.ElasticLoadBalancing

Describe "Sample template tests" -Tag 'Class','VSTemplate','S3Bucket','VSParameter','VSCondition','VSResource','VSOutput','VaporShell','ClassUnit' {
    Context 'Initialization' {
        It "Should create full, complex template with a mixture of classes and aliases" {
            {
                [VSTemplate]@{
                    AWSTemplateFormatVersion = '2010-09-09'
                    Description = "Sample template"
                    Mappings    = @(
                        [VSMapping]@{
                            LogicalId = 'AmiMap'
                            Map       = @{
                                'us-west-2' = @{
                                    AmiId = 'ami-lkjsdflkjsdf'
                                }
                                'us-east-1' = @{
                                    AmiId = 'ami-iuosdfoiulsa'
                                }
                            }
                        }
                    )
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
                            Condition = !Not (!Equals (!Ref SSLCertificateArn) '')
                        }
                        [VSCondition]@{
                            LogicalId = 'HasSSHKey'
                            Condition = !Not (!Equals (!Ref KeyName) '')
                        }
                    )
                    Resources = @(
                        [ElasticLoadBalancingLoadBalancer]@{
                            LogicalId = 'LoadBalancer'
                            Subnets = !Ref PublicSubnets
                            SecurityGroups = !Ref LoadBalancerSecurityGroups
                            Listeners = @(
                                [ElasticLoadBalancingLoadBalancerListeners]@{
                                    LoadBalancerPort = '80'
                                    InstancePort = '80'
                                    Protocol = 'HTTP'
                                }
                                (!If HasSSL (
                                    [ElasticLoadBalancingLoadBalancerListeners]@{
                                        LoadBalancerPort = '443'
                                        InstancePort = '443'
                                        Protocol = 'HTTPS'
                                        SSLCertificateId = !Ref SSLCertificateArn
                                    }) ([FnRef]::NoValue)
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
                            KeyName = !If HasSSHKey (!Ref KeyName) ([FnRef]::NoValue)
                            ImageId = !Ref ImageId
                            UserData = './Tests/Assets/UserData.sh'
                            SecurityGroups = !Ref ASGSecurityGroups
                            InstanceType = !Ref InstanceType
                        }
                        [AutoScalingAutoScalingGroup]@{
                            LogicalId = 'WebServerGroup'
                            UpdatePolicy = [UpdatePolicy]@{
                                AutoScalingRollingUpdate = [AutoScalingRollingUpdate]@{
                                    MinInstancesInService = 1
                                    PauseTime = 'PT1M'
                                }
                            }
                            LaunchConfigurationName = !Ref WebServerLaunchConfig
                            MinSize = !Ref MinSize
                            MaxSize = !Ref MaxSize
                            DesiredCapacity = !Ref DesiredSize
                            LoadBalancerNames = @((!Ref LoadBalancer))
                            VPCZoneIdentifier = !Ref PrivateSubnets
                        }
                        [EC2Instance]@{
                            LogicalId = 'Bastion'
                            Condition = 'HasSSHKey'
                            ImageId = !Ref ImageId
                            InstanceType = 't2.micro'
                            NetworkInterfaces = @(
                                [EC2InstanceNetworkInterface]@{
                                    AssociatePublicIpAddress = $true
                                    DeviceIndex = '0'
                                    GroupSet = !Ref BastionSecurityGroups
                                    SubnetId = !Select 0 (!Ref PublicSubnets)
                                }
                            )
                        }
                    )
                    Outputs = @(
                        [VSOutput]@{
                            LogicalId = 'ELB'
                            Description = 'LoadBalancer DNS Name'
                            Value = [FnGetAtt]::new('LoadBalancer','DNSName')
                            Export = [Export]'elb-dns-name'
                        }
                        [VSOutput]@{
                            LogicalId = 'Bastion'
                            Description = 'Bastion instance IP'
                            Value = [FnGetAtt]::new('Bastion','PublicIp')
                            Condition = [ConRef]'HasSSHKey'
                        }
                    )
                }
            } | Should -Not -Throw
        }
    }
}
