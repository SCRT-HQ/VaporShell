using namespace System.Collections
using namespace System.Management.Automation
class ValidateMapping : ValidateEnumeratedArgumentsAttribute {
    [Void] ValidateElement(
        [Object]$element
    ) {
        $element.GetEnumerator() | ForEach-Object {
            if ($_.Value -isnot [IDictionary]) {
                throw [VSError]::InvalidMap($element, $_.Key, $_.Value)
            }
        }
    }
}
