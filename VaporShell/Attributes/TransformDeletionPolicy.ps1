using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class TransformDeletionPolicy : ArgumentTransformationAttribute {
    hidden [EngineIntrinsics] $engineIntrinsics

    hidden [object] TransformData([object] $inputData) {
        if ($inputData.ToString() -in @('Delete','Retain','Snapshot')) {
            return (Get-Culture).TextInfo.ToTitleCase(($inputData.ToString()).ToLower())
        }
        return $inputData
    }

    [object] Transform([EngineIntrinsics] $engineIntrinsics, [object] $inputData) {
        $this.engineIntrinsics = $engineIntrinsics
        return $this.TransformData($inputData)
    }
}
