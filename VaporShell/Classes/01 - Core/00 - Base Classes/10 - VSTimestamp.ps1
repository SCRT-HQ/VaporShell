using namespace System
class VSTimestamp {
    static [string] Transform([datetime] $dateTime) {
        return $dateTime.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ss')
    }
}
