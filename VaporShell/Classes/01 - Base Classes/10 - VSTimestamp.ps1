using namespace System
class VSTimestamp : VSObject {
    hidden [string] $_timestamp

    static [string] Help() {
        return "Help content has not been created for this class. Please open an issue on the GitHub repository to request help for this class."
    }

    static [string] Transform([datetime] $dateTime) {
        return $dateTime.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ss')
    }

    static [string] Transform([string] $dateString) {
        return (Get-Date $dateString).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ss')
    }

    [string] ToString() {
        return $this._timestamp
    }

    VSTimestamp() {}

    VSTimestamp([datetime] $dateTime) {
        $this._timestamp = $this::Transform($dateTime)
    }

    VSTimestamp([string] $dateString) {
        $this._timestamp = $this::Transform($dateString)
    }
}
