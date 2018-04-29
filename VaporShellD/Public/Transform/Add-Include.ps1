function Add-Include {
    <#
    .SYNOPSIS
        Adds the transform function "AWS::Include" to a Vaporshell template
    
    .DESCRIPTION
        You can use the AWS::Include transform to work with template snippets that are stored separately from the main AWS CloudFormation template. When you specify Name: 'AWS::Include' and the Location parameter, the Transform key is a placeholder where snippets are injected. AWS CloudFormation inserts those snippets into your main template when Creating a Change Set or Updating Stacks Using Change Sets.

        You might have a Lambda function that you want to reuse in one or more AWS CloudFormation templates. The AWS::Include transform lets you create a reference to a transform snippet in an Amazon S3 bucket. You can add AWS::Include to the Transform function in your AWS CloudFormation template. The AWS::Include function behaves similarly to an include, copy, or import directive in programming languages.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
    
    .PARAMETER Location
        The location is an Amazon S3 URI, with a specific file name in an S3 bucket. For example, s3://MyBucketName/MyFile.yaml.

    .EXAMPLE
        Add-Include -Location "s3://MyAmazonS3BucketName/single_wait_condition.yaml"

        When the template is exported, this will convert to: {"Fn::Transform":{"Name":"AWS::Include","Parameters":{"Location":"s3://MyAmazonS3BucketName/single_wait_condition.yaml"}}}
        # If used at the top level, the Logical ID will be 'Transform' instead of 'Fn::Transform'.

    .NOTES
        When using AWS::Include, keep the following in mind:

            * AWS::Include is supported only in regions where AWS Lambda is available. For a list of regions where Lambda is available, see http://docs.aws.amazon.com/general/latest/gr/rande.html#lambda_region.
            * We currently support Amazon S3 URI, but no other Amazon S3 format (such as Amazon S3 ARN). It must be an Amazon S3 bucket, as opposed to something like a GitHub repository.
            * Anyone with access to the Amazon S3 URL can include the snippet in their template.
            * Your template snippet must be valid YAML or valid JSON.
            * A template snippet must pass validation checks for a create stack or update stack operation.
            * AWS CloudFormation resolves transforms first, and then processes the template. The resulting template must be valid JSON or YAML and must not exceed the template size limit.
            * If your snippets change, your stack doesn't automatically pick up those changes. To get those changes, you must update the stack with the updated snippets. If you update your stack, make sure your included snippets haven't changed without your knowledge. To verify before updating the stack, check the change set.
            * When using the update rollback feature, AWS CloudFormation uses a copy of the original template. It will roll back to the original template even if the included snippet was changed.
            * Nested transforms do not work because we do not process transforms iteratively.
            * When creating templates and snippets, you can mix YAML and JSON template languages.
            * We do not currently support using shorthand notations for YAML snippets.
            * You can use multiple transforms within a single template. Nevertheless, you cannot simultaneously have AWS::Include transforms at both the top level of a template and embedded within a section of a template.
            * You can provide a cross-region replication Amazon S3 URI with AWS::Include. Be sure to check S3 bucket names when accessing cross-region replication objects. For more information, see Cross-Region Replication.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Transform.Include')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidatePattern("^s3:\/\/.*")]
        [System.String]
        $Location
    )
    $obj = [PSCustomObject][Ordered]@{
        "LogicalId" = "Fn::Transform"
        "Props" = [PSCustomObject][Ordered]@{
            "Name" = "AWS::Include"
            "Parameters" = [PSCustomObject][Ordered]@{
                "Location" = $Location
            }
        }
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Transform','Vaporshell.Transform.Include'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5 -Compress)`n"
}