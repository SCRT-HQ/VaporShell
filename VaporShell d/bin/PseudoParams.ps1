$dict = @{}
'AWS::AccountId
AWS::StackId
AWS::NoValue
AWS::NotificationARNs
AWS::Region
AWS::StackName
AWS::Include
AWS::Partition
AWS::URLSuffix' -split "[\r\n]" | Where-Object {$_} | ForEach-Object {
    $name = "_$(($_ -replace "::").Trim())"
    $dict[$_] = $name
}
$dict