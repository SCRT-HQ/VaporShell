function Set-VSCredentials {
    [cmdletbinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","CredentialStore")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","")]
    Param
    (
      [parameter(Mandatory=$false,Position=0)]
      [String]
      $ProfileName = "default",
      [parameter(Mandatory=$false)]
      [String]
      $AccessKey,
      [parameter(Mandatory=$false)]
      [String]
      $SecretKey
    )
    DynamicParam {
        $ParamAttrib  = New-Object System.Management.Automation.ParameterAttribute -Property @{Mandatory = $false;ParameterSetName = '__AllParameterSets'}
        $AttribColl = New-Object  System.Collections.ObjectModel.Collection[System.Attribute]
        $AttribColl.Add($ParamAttrib)
        $AttribColl.Add((New-Object  System.Management.Automation.ValidateSetAttribute(([Amazon.RegionEndpoint]).GetFields().Name)))
        $RuntimeParam  = New-Object System.Management.Automation.RuntimeDefinedParameter('Region',  [string], $AttribColl)
        $RuntimeParamDic  = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
        $RuntimeParamDic.Add('Region', $RuntimeParam)
        return  $RuntimeParamDic
    }
    Begin {
        $optProps = @{}
        if ($PSBoundParameters.Keys -contains "AccessKey") {
            Write-Verbose "Setting AccessKey"
            $optProps["AccessKey"] = $PSBoundParameters["AccessKey"]
        }
        if ($PSBoundParameters.Keys -contains "SecretKey") {
            Write-Verbose "Setting SecretKey"
            $optProps["SecretKey"] = $PSBoundParameters["SecretKey"]
        }
    }
    Process {
        $options = New-Object Amazon.Runtime.CredentialManagement.CredentialProfileOptions -Property $optProps
        $prof = [Amazon.Runtime.CredentialManagement.CredentialProfile]::new("$ProfileName", $options)
        if ($PSBoundParameters.Keys -contains "Region") {
            Write-Verbose "Setting Region"
            $Region = $PSBoundParameters["Region"]
            $prof.Region = [Amazon.RegionEndpoint]::$Region
        }
        $sharedFile = [Amazon.Runtime.CredentialManagement.SharedCredentialsFile]::new()
        Write-Verbose "Updating SharedCredentials file"
        $sharedFile.RegisterProfile($prof)
    }
}