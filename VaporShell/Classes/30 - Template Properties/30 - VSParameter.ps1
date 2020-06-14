using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSParameter : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'New-VaporParameter'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html'

    [string] $AllowedPattern
    [string[]] $AllowedValues
    [string] $ConstraintDescription
    [string] $Default
    [ValidateLength(0,4000)] [string] $Description
    [nullable[int]] $MaxLength = $null
    [nullable[int]] $MaxValue = $null
    [nullable[int]] $MinLength = $null
    [nullable[int]] $MinValue = $null
    [nullable[bool]] $NoEcho = $null
    [ValidateSet("String","Number","List<Number>","CommaDelimitedList","AWS::EC2::AvailabilityZone::Name","AWS::EC2::Image::Id","AWS::EC2::Instance::Id","AWS::EC2::KeyPair::KeyName","AWS::EC2::SecurityGroup::GroupName","AWS::EC2::SecurityGroup::Id","AWS::EC2::Subnet::Id","AWS::EC2::Volume::Id","AWS::EC2::VPC::Id","AWS::Route53::HostedZone::Id","List<AWS::EC2::AvailabilityZone::Name>","List<AWS::EC2::Image::Id>","List<AWS::EC2::Instance::Id>","List<AWS::EC2::SecurityGroup::GroupName>","List<AWS::EC2::SecurityGroup::Id>","List<AWS::EC2::Subnet::Id>","List<AWS::EC2::Volume::Id>","List<AWS::EC2::VPC::Id>","List<AWS::Route53::HostedZone::Id>")] [string] $Type

    VSParameter() : base() {}
    VSParameter([IDictionary] $props) : base($props) {}
    VSParameter([psobject] $props) : base($props) {}
}
