class FnRef : IntrinsicFunction {
    hidden [string] $_vsFunctionName = 'Add-FnRef'
    hidden [string] $_awsDocumentation = 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ref.html'

    static [FnRef] $AccountId = [FnRef]::new('AWS::AccountId')
    static [FnRef] $Include = [FnRef]::new('AWS::Include')
    static [FnRef] $NotificationARNs = [FnRef]::new('AWS::NotificationARNs')
    static [FnRef] $NoValue = [FnRef]::new('AWS::NoValue')
    static [FnRef] $Partition = [FnRef]::new('AWS::Partition')
    static [FnRef] $Region = [FnRef]::new('AWS::Region')
    static [FnRef] $StackId = [FnRef]::new('AWS::StackId')
    static [FnRef] $StackName = [FnRef]::new('AWS::StackName')
    static [FnRef] $URLSuffix = [FnRef]::new('AWS::URLSuffix')

    [string] $Ref

    [string] ToString() {
        return "Ref($($this['Ref']))"
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Ref -Value {
            $this['Ref']
        } -SecondValue {
            param([string] $ref)
            $this['Ref'] = $ref
        }
    }

    FnRef() {}

    FnRef([string] $ref) {
        $this['Ref'] = $ref
    }

    FnRef([VSLogicalObject] $vsLogicalObject) {
        $this['Ref'] = $vsLogicalObject.ToString()
    }
}
