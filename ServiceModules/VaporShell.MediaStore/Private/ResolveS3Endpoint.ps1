function ResolveS3Endpoint {
    <#
    .SYNOPSIS
    Resolves the S3 endpoint most appropriate for each region.
    #>
    Param
    (
      [parameter(Mandatory=$true,Position=0)]
      [ValidateSet("eu-west-2","ap-south-1","us-east-2","sa-east-1","us-west-1","us-west-2","eu-west-1","ap-southeast-2","ca-central-1","ap-northeast-2","us-east-1","eu-central-1","ap-southeast-1","ap-northeast-1")]
      [String]
      $Region
    )
    $endpointMap = @{
        "us-east-2" = "s3.us-east-2.amazonaws.com"
        "us-east-1" = "s3.amazonaws.com"
        "us-west-1" = "s3-us-west-1.amazonaws.com"
        "us-west-2" = "s3-us-west-2.amazonaws.com"
        "ca-central-1" = "s3.ca-central-1.amazonaws.com"
        "ap-south-1" = "s3.ap-south-1.amazonaws.com"
        "ap-northeast-2" = "s3.ap-northeast-2.amazonaws.com"
        "ap-southeast-1" = "s3-ap-southeast-1.amazonaws.com"
        "ap-southeast-2" = "s3-ap-southeast-2.amazonaws.com"
        "ap-northeast-1" = "s3-ap-northeast-1.amazonaws.com"
        "eu-central-1" = "s3.eu-central-1.amazonaws.com"
        "eu-west-1" = "s3-eu-west-1.amazonaws.com"
        "eu-west-2" = "s3.eu-west-2.amazonaws.com"
        "sa-east-1" = "s3-sa-east-1.amazonaws.com"
    }
    return $endpointMap[$Region]
}