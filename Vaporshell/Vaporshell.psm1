#Get public and private function definition files.
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
Foreach ($import in @($Public + $Private)) {
    Try {
        . $import.fullname
    }
    Catch {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

$_AWSAccountId = "AWS::AccountId"
$_AWSStackId = "AWS::StackId"
$_AWSNoValue = "AWS::NoValue"
$_AWSNotificationARNs = "AWS::NotificationARNs"
$_AWSRegion = "AWS::Region"
$_AWSStackName = "AWS::StackName"

Export-ModuleMember -Function $Public.Basename -Variable _AWSAccountId,_AWSStackId,_AWSNoValue,_AWSNotificationARNs,_AWSRegion,_AWSStackName