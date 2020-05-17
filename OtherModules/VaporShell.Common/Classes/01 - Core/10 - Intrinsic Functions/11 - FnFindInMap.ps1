class FnFindInMap : IntrinsicFunction {
    [string] ToString() {
        return "FnFindInMap($($this['Fn::FindInMap']))"
    }

    FnFindInMap([string] $mapName, [object] $topLevelKey, [object] $secondLevelKey) {
        $this['Fn::FindInMap'] = @($mapName, $topLevelKey, $secondLevelKey)
    }
}
