#!/bin/bash -xe
yum update -y aws-cfn-bootstrap
/opt/aws/bin/cfn-init -v \
    --stack Stack1 \
    --resource LaunchConfig \
    --configsets wordpress_install \
    --region us-west-1
/opt/aws/bin/cfn-signal -e $? \
    --stack Stack1 \
    --resource WebServerGroup \
    --region us-west-1





