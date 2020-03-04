function Add-VSOpsWorksAppSource {
    <#
    .SYNOPSIS
        Adds an AWS::OpsWorks::App.Source resource property to the template. Contains the information required to retrieve an app or cookbook from a repository. For more information, see Creating Apps: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html or Custom Recipes and Cookbooks: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html.

    .DESCRIPTION
        Adds an AWS::OpsWorks::App.Source resource property to the template.
Contains the information required to retrieve an app or cookbook from a repository. For more information, see Creating Apps: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html or Custom Recipes and Cookbooks: https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html

    .PARAMETER Password
        When included in a request, the parameter depends on the repository type.
+ For Amazon S3 bundles, set Password to the appropriate IAM secret access key.
+ For HTTP bundles and Subversion repositories, set Password to the password.
For more information on how to safely handle IAM credentials, see https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html: https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html.
In responses, AWS OpsWorks Stacks returns *****FILTERED***** instead of the actual value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-pw
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Revision
        The application's version. AWS OpsWorks Stacks enables you to easily deploy new versions of an application. One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-revision
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER SshKey
        The repository's SSH key. For more information, see Using Git Repository SSH Keys: https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploykeys.html in the *AWS OpsWorks User Guide*. To pass in an SSH key as a parameter, see the following example:
"Parameters" : { "GitSSHKey" : { "Description" : "Change SSH key newlines to commas.", "Type" : "CommaDelimitedList", "NoEcho" : "true" }, ... "CustomCookbooksSource": { "Revision" : { "Ref": "GitRevision"}, "SshKey" : { "Fn::Join" :  "n", { "Ref": "GitSSHKey"} ] }, "Type": "git", "Url": { "Ref": "GitURL"} } ...

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-sshkey
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Type
        The repository type.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Url
        The source URL. The following is an example of an Amazon S3 source URL: https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-url
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Username
        This parameter depends on the repository type.
+ For Amazon S3 bundles, set Username to the appropriate IAM access key ID.
+ For HTTP bundles, Git repositories, and Subversion repositories, set Username to the user name.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-username
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpsWorks.App.Source')]
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","Password")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","Password")]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Password,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Revision,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SshKey,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Url,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Username
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpsWorks.App.Source'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
