using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSMetadata : VSLogicalObject {
    hidden [string] $_vsFunctionName = 'New-VaporMetadata'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html'

    [object] $Metadata

    VSMetadata() : base() {}
    VSMetadata([IDictionary] $props) : base($props) {}
    VSMetadata([psobject] $props) : base($props) {}
}
