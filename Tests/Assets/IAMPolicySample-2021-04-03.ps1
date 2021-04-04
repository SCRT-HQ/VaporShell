$vsjs = [VSJson]@{
    Statement = @(
      @{
        Action = @(
          "logs:CreateLogStream"
          "logs:CreateLogGroup"
          "logs:DescribeLogGroups"
          "logs:DescribeLogStreams"
          "logs:PutLogEvents"
          "ec2:DescribeTags"
          "ec2:DescribeVolumes"
          "ec2:DescribeInstances"
        )
        Resource = @("*")
        Effect = "Allow"
      }
      @{
        Condition = @{
          StringEquals = @{
            "ec2:ResourceTag/aws:cloudformation:stack-name" = "scrthq-shared-dev"
          }
        }
        Action = @(
          "ec2:CreateTags"
          "ec2:DeleteTags"
        )
        Resource = @("*")
        Effect = "Allow"
      }
      @{
        Action = @("s3:ListBucket")
        Resource = @(
          "arn:aws:s3:::scrthq-deployments-dev"
        )
        Effect = "Allow"
      }
      @{
        Action = @(
          "s3:Get*"
          "s3:List*"
        )
        Resource = @(
          "arn:aws:s3:::scrthq-deployments-dev/*"
        )
        Effect = "Allow"
      }
      @{
        Action = @(
          "s3:DeleteObject"
          "s3:PutObject"
        )
        Resource = @("arn:aws:s3:::scrthq-deployments-dev/*")
        Effect = "Allow"
      }
    )
  }

$vsjs.ToJson($true)


Import-Module ./BuildOutput/VaporShell/3.0.0/VaporShell.psd1
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
$DebugPreference = 'Continue'
$vsurl = [VSJson]::new('%7B%22Statement%22%3A%5B%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22*%22%5D%2C%22Action%22%3A%5B%22logs%3ACreateLogStream%22%2C%22logs%3ACreateLogGroup%22%2C%22logs%3ADescribeLogGroups%22%2C%22logs%3ADescribeLogStreams%22%2C%22logs%3APutLogEvents%22%2C%22ec2%3ADescribeTags%22%2C%22ec2%3ADescribeVolumes%22%2C%22ec2%3ADescribeInstances%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Condition%22%3A%7B%22StringEquals%22%3A%7B%22ec2%3AResourceTag%2Faws%3Acloudformation%3Astack-name%22%3A%22scrthq-shared-dev%22%7D%7D%2C%22Resource%22%3A%5B%22*%22%5D%2C%22Action%22%3A%5B%22ec2%3ACreateTags%22%2C%22ec2%3ADeleteTags%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22arn%3Aaws%3As3%3A%3A%3Ascrthq-deployments-dev%22%5D%2C%22Action%22%3A%5B%22s3%3AListBucket%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22arn%3Aaws%3As3%3A%3A%3Ascrthq-deployments-dev%2F*%22%5D%2C%22Action%22%3A%5B%22s3%3AGet*%22%2C%22s3%3AList*%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22arn%3Aaws%3As3%3A%3A%3Ascrthq-deployments-dev%2F*%22%5D%2C%22Action%22%3A%5B%22s3%3ADeleteObject%22%2C%22s3%3APutObject%22%5D%7D%5D%7D')
$vsurl

Import-Module ./BuildOutput/VaporShell.IAM/3.0.0/VaporShell.IAM.psd1
$role = [IAMRole]@{
    Policies = @(
        [IAMRolePolicy]@{
            PolicyName = 'EC2Policy'
            PolicyDocument = '%7B%22Statement%22%3A%5B%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22*%22%5D%2C%22Action%22%3A%5B%22logs%3ACreateLogStream%22%2C%22logs%3ACreateLogGroup%22%2C%22logs%3ADescribeLogGroups%22%2C%22logs%3ADescribeLogStreams%22%2C%22logs%3APutLogEvents%22%2C%22ec2%3ADescribeTags%22%2C%22ec2%3ADescribeVolumes%22%2C%22ec2%3ADescribeInstances%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Condition%22%3A%7B%22StringEquals%22%3A%7B%22ec2%3AResourceTag%2Faws%3Acloudformation%3Astack-name%22%3A%22scrthq-shared-dev%22%7D%7D%2C%22Resource%22%3A%5B%22*%22%5D%2C%22Action%22%3A%5B%22ec2%3ACreateTags%22%2C%22ec2%3ADeleteTags%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22arn%3Aaws%3As3%3A%3A%3Ascrthq-deployments-dev%22%5D%2C%22Action%22%3A%5B%22s3%3AListBucket%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22arn%3Aaws%3As3%3A%3A%3Ascrthq-deployments-dev%2F*%22%5D%2C%22Action%22%3A%5B%22s3%3AGet*%22%2C%22s3%3AList*%22%5D%7D%2C%7B%22Effect%22%3A%22Allow%22%2C%22Resource%22%3A%5B%22arn%3Aaws%3As3%3A%3A%3Ascrthq-deployments-dev%2F*%22%5D%2C%22Action%22%3A%5B%22s3%3ADeleteObject%22%2C%22s3%3APutObject%22%5D%7D%5D%7D'
        }
    )
}