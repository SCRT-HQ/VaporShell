$buildOutputPath = [System.IO.Path]::Combine($PSScriptRoot,'..','..','..','BuildOutput')

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

Import-Module VaporShell -Verbose:$false

Describe "Parameter tests" {
    Context 'Initialization' {
        It "Should create a correctly formed Parameter" {
            {
                [VSParameter]@{
                    LogicalId   = 'BucketName1Param'
                    Description = 'The name of the first bucket to create'
                    Type        = 'String'
                }
            } | Should -Not -Throw
        }
    }
    Context 'Input validation' {
        It "Should fail to create a malformed Parameter" {
            {
                [VSParameter]@{
                    LogicalId   = 'BucketName1Param'
                    Description = 'The name of the first bucket to create'
                    Type        = 'ThisTypeDoesntExistInValidateSet'
                }
            } | Should -Throw -ExpectedMessage 'Exception setting "Type": "The argument "ThisTypeDoesntExistInValidateSet" does not belong to the set "String,Number,List<Number>,CommaDelimitedList,AWS::EC2::AvailabilityZone::Name,AWS::EC2::Image::Id,AWS::EC2::Instance::Id,AWS::EC2::KeyPair::KeyName,AWS::EC2::SecurityGroup::GroupName,AWS::EC2::SecurityGroup::Id,AWS::EC2::Subnet::Id,AWS::EC2::Volume::Id,AWS::EC2::VPC::Id,AWS::Route53::HostedZone::Id,List<AWS::EC2::AvailabilityZone::Name>,List<AWS::EC2::Image::Id>,List<AWS::EC2::Instance::Id>,List<AWS::EC2::SecurityGroup::GroupName>,List<AWS::EC2::SecurityGroup::Id>,List<AWS::EC2::Subnet::Id>,List<AWS::EC2::Volume::Id>,List<AWS::EC2::VPC::Id>,List<AWS::Route53::HostedZone::Id>" specified by the ValidateSet attribute. Supply an argument that is in the set and then try the command again."'
        }
    }
}
