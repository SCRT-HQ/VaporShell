using namespace System
using namespace System.Collections
using namespace System.Collections.Generic

class VSResourceProperty : VSObject {
    hidden [string] $_vsFunctionName = 'New-VaporResource'
    hidden [string] $_awsDocumentation = 'https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html'

    VSResourceProperty() : base() {}
    VSResourceProperty([IDictionary] $props) : base($props) {}
    VSResourceProperty([psobject] $props) : base($props) {}
}
