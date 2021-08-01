Import-Module VaporShell -MinimumVersion 3.0.0 -Force
Import-Module VaporShell.IAM -MinimumVersion 3.0.0 -Force

############   Prep: Pull Existing To Clone   ############

$roleName = 'SecretsManagerLambdaRole'
Import-Module AWS.Tools.IdentityManagement

$assumeRolePolicy = (Get-IAMRole -RoleName $roleName).AssumeRolePolicyDocument
$policyNames = Get-IAMRolePolicyList -RoleName $roleName
$policies = $policyNames | ForEach-Object {
    Get-IAMRolePolicy -RoleName $roleName -PolicyName $_ | Select-Object -ExpandProperty PolicyDocument
}

############   Function Method   ############

$t = Initialize-Vaporshell
$t.AddResource(
    (New-VSIAMRole "IAMRole" -Path '/' -AssumeRolePolicyDocument $assumeRolePolicy -Policies (
        Add-VSIAMRolePolicy -PolicyName 'Inline' -PolicyDocument $policies
    ))
)
$t.ToJson()
$t.ToYaml()

############   Class Method   ############

$new = [VSTemplate]@{
    Resources = @(
        [IAMRole]@{
            LogicalId = 'IAMRole'
            Path = '/'
            RoleName = 'SMLambdaClonedRole'
            Policies = @(
                [IAMRolePolicy]@{
                    PolicyName = 'Inline'
                    PolicyDocument = $policies
                }
            )
            AssumeRolePolicyDocument = $assumeRolePolicy
        }
    )
}
$new.ToJson()
$new.ToYaml()
