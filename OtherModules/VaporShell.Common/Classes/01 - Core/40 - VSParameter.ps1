using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSParameter : VSObject {
    hidden [string] $_logicalId

    [string] $LogicalId
    [ValidateSet("String","Number","List<Number>","CommaDelimitedList","AWS::EC2::AvailabilityZone::Name","AWS::EC2::Image::Id","AWS::EC2::Instance::Id","AWS::EC2::KeyPair::KeyName","AWS::EC2::SecurityGroup::GroupName","AWS::EC2::SecurityGroup::Id","AWS::EC2::Subnet::Id","AWS::EC2::Volume::Id","AWS::EC2::VPC::Id","AWS::Route53::HostedZone::Id","List<AWS::EC2::AvailabilityZone::Name>","List<AWS::EC2::Image::Id>","List<AWS::EC2::Instance::Id>","List<AWS::EC2::SecurityGroup::GroupName>","List<AWS::EC2::SecurityGroup::Id>","List<AWS::EC2::Subnet::Id>","List<AWS::EC2::Volume::Id>","List<AWS::EC2::VPC::Id>","List<AWS::Route53::HostedZone::Id>")]
    [string]
    $Type
    [string]
    $Default
    [switch]
    $NoEcho
    [string]
    $AllowedPattern
    [string[]]
    $AllowedValues
    [string]
    $ConstraintDescription
    [string]
    $Description
    [int]
    $MaxLength
    [int]
    $MaxValue
    [int]
    $MinLength
    [int]
    $MinValue


    [string] ToString() {
        return $this.LogicalId
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name LogicalId -Value { $this._logicalId } -SecondValue {
            param([string] $logicalId)
            $this._logicalId = [Validator]::LogicalId($logicalId)
        }
    }

    VSParameter() : base() {}
    VSParameter([IDictionary] $props) : base($props) {}
    VSParameter([psobject] $props) : base($props) {}
}
