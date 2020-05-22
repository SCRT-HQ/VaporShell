using namespace System.Collections
using namespace System.Management.Automation
class ValidateMapping : ValidateEnumeratedArgumentsAttribute {
    [Void] ValidateElement(
        [Object]$element
    ) {
        $element.GetEnumerator() | ForEach-Object {
            if ($_.Value -isnot [IDictionary]) {
                $errorRecord = [ErrorRecord]::new(
                    [ArgumentException]::new("The values of the Map property must be IDictionarys themselves. Map key '$($_.Key)' has a value of type '$($_.Value.GetType())' assigned to it."),
                    'InvalidMap',
                    [ErrorCategory]::InvalidArgument,
                    $element
                )
                throw $errorRecord
            }
        }
    }
}
