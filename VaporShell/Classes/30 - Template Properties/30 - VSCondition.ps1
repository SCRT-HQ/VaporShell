using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSCondition : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'New-VaporCondition'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/conditions-section-structure.html'

    [ConditionFunction] $Condition

    VSCondition() : base() {}
    VSCondition([IDictionary] $props) : base($props) {}
    VSCondition([psobject] $props) : base($props) {}
}
