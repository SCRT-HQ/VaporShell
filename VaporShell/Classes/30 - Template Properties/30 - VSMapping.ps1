using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSMapping : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'New-VaporMapping'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html'

    [ValidateMapping()] [IDictionary] $Map

    VSMapping() : base() {}
    VSMapping([IDictionary] $props) : base($props) {}
    VSMapping([psobject] $props) : base($props) {}
}
