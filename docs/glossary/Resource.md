---
layout: glossary
title: Resource
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Resource

## SYNOPSIS
{{Fill in the Synopsis}}

## SYNTAX

```
Resource [-ResourceType] <String> [-LogicalId] <String> [-Properties] <ScriptBlock> [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -LogicalId
{{Fill LogicalId Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Properties
{{Fill Properties Description}}

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceType
{{Fill ResourceType Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: AmazonMQBroker, AmazonMQConfiguration, ApiGatewayAccount, ApiGatewayApiKey, ApiGatewayAuthorizer, ApiGatewayBasePathMapping, ApiGatewayClientCertificate, ApiGatewayDeployment, ApiGatewayDocumentationPart, ApiGatewayDocumentationVersion, ApiGatewayDomainName, ApiGatewayGatewayResponse, ApiGatewayMethod, ApiGatewayModel, ApiGatewayRequestValidator, ApiGatewayResource, ApiGatewayRestApi, ApiGatewayStage, ApiGatewayUsagePlan, ApiGatewayUsagePlanKey, ApiGatewayVpcLink, ApplicationAutoScalingScalableTarget, ApplicationAutoScalingScalingPolicy, AppSyncApiKey, AppSyncDataSource, AppSyncGraphQLApi, AppSyncGraphQLSchema, AppSyncResolver, AthenaNamedQuery, AutoScalingAutoScalingGroup, AutoScalingLaunchConfiguration, AutoScalingLifecycleHook, AutoScalingPlansScalingPlan, AutoScalingScalingPolicy, AutoScalingScheduledAction, BatchComputeEnvironment, BatchJobDefinition, BatchJobQueue, BudgetsBudget, CertificateManagerCertificate, Cloud9EnvironmentEC2, CloudFormationCustomResource, CloudFormationStack, CloudFormationWaitCondition, CloudFormationWaitConditionHandle, CloudFrontCloudFrontOriginAccessIdentity, CloudFrontDistribution, CloudFrontStreamingDistribution, CloudTrailTrail, CloudWatchAlarm, CloudWatchDashboard, CodeBuildProject, CodeCommitRepository, CodeDeployApplication, CodeDeployDeploymentConfig, CodeDeployDeploymentGroup, CodePipelineCustomActionType, CodePipelinePipeline, CodePipelineWebhook, CognitoIdentityPool, CognitoIdentityPoolRoleAttachment, CognitoUserPool, CognitoUserPoolClient, CognitoUserPoolGroup, CognitoUserPoolUser, CognitoUserPoolUserToGroupAttachment, ConfigAggregationAuthorization, ConfigConfigRule, ConfigConfigurationAggregator, ConfigConfigurationRecorder, ConfigDeliveryChannel, DataPipelinePipeline, DAXCluster, DAXParameterGroup, DAXSubnetGroup, DirectoryServiceMicrosoftAD, DirectoryServiceSimpleAD, DMSCertificate, DMSEndpoint, DMSEventSubscription, DMSReplicationInstance, DMSReplicationSubnetGroup, DMSReplicationTask, DynamoDBTable, EC2CustomerGateway, EC2DHCPOptions, EC2EgressOnlyInternetGateway, EC2EIP, EC2EIPAssociation, EC2FlowLog, EC2Host, EC2Instance, EC2InternetGateway, EC2LaunchTemplate, EC2NatGateway, EC2NetworkAcl, EC2NetworkAclEntry, EC2NetworkInterface, EC2NetworkInterfaceAttachment, EC2NetworkInterfacePermission, EC2PlacementGroup, EC2Route, EC2RouteTable, EC2SecurityGroup, EC2SecurityGroupEgress, EC2SecurityGroupIngress, EC2SpotFleet, EC2Subnet, EC2SubnetCidrBlock, EC2SubnetNetworkAclAssociation, EC2SubnetRouteTableAssociation, EC2TrunkInterfaceAssociation, EC2Volume, EC2VolumeAttachment, EC2VPC, EC2VPCCidrBlock, EC2VPCDHCPOptionsAssociation, EC2VPCEndpoint, EC2VPCEndpointConnectionNotification, EC2VPCGatewayAttachment, EC2VPCPeeringConnection, EC2VPNConnection, EC2VPNConnectionRoute, EC2VPNGateway, EC2VPNGatewayRoutePropagation, ECRRepository, ECSCluster, ECSService, ECSTaskDefinition, EFSFileSystem, EFSMountTarget, EKSCluster, ElastiCacheCacheCluster, ElastiCacheParameterGroup, ElastiCacheReplicationGroup, ElastiCacheSecurityGroup, ElastiCacheSecurityGroupIngress, ElastiCacheSubnetGroup, ElasticBeanstalkApplication, ElasticBeanstalkApplicationVersion, ElasticBeanstalkConfigurationTemplate, ElasticBeanstalkEnvironment, ElasticLoadBalancingLoadBalancer, ElasticLoadBalancingV2Listener, ElasticLoadBalancingV2ListenerCertificate, ElasticLoadBalancingV2ListenerRule, ElasticLoadBalancingV2LoadBalancer, ElasticLoadBalancingV2TargetGroup, ElasticsearchDomain, EMRCluster, EMRInstanceFleetConfig, EMRInstanceGroupConfig, EMRSecurityConfiguration, EMRStep, EventsRule, GameLiftAlias, GameLiftBuild, GameLiftFleet, GlueClassifier, GlueConnection, GlueCrawler, GlueDatabase, GlueDevEndpoint, GlueJob, GluePartition, GlueTable, GlueTrigger, GuardDutyDetector, GuardDutyFilter, GuardDutyIPSet, GuardDutyMaster, GuardDutyMember, GuardDutyThreatIntelSet, IAMAccessKey, IAMGroup, IAMInstanceProfile, IAMManagedPolicy, IAMPolicy, IAMRole, IAMServiceLinkedRole, IAMUser, IAMUserToGroupAddition, InspectorAssessmentTarget, InspectorAssessmentTemplate, InspectorResourceGroup, IoTCertificate, IoTPolicy, IoTPolicyPrincipalAttachment, IoTThing, IoTThingPrincipalAttachment, IoTTopicRule, KinesisAnalyticsApplication, KinesisAnalyticsApplicationOutput, KinesisAnalyticsApplicationReferenceDataSource, KinesisFirehoseDeliveryStream, KinesisStream, KMSAlias, KMSKey, LambdaAlias, LambdaEventSourceMapping, LambdaFunction, LambdaPermission, LambdaVersion, LogsDestination, LogsLogGroup, LogsLogStream, LogsMetricFilter, LogsSubscriptionFilter, NeptuneDBCluster, NeptuneDBClusterParameterGroup, NeptuneDBInstance, NeptuneDBParameterGroup, NeptuneDBSubnetGroup, OpsWorksApp, OpsWorksElasticLoadBalancerAttachment, OpsWorksInstance, OpsWorksLayer, OpsWorksStack, OpsWorksUserProfile, OpsWorksVolume, RDSDBCluster, RDSDBClusterParameterGroup, RDSDBInstance, RDSDBParameterGroup, RDSDBSecurityGroup, RDSDBSecurityGroupIngress, RDSDBSubnetGroup, RDSEventSubscription, RDSOptionGroup, RedshiftCluster, RedshiftClusterParameterGroup, RedshiftClusterSecurityGroup, RedshiftClusterSecurityGroupIngress, RedshiftClusterSubnetGroup, Route53HealthCheck, Route53HostedZone, Route53RecordSet, Route53RecordSetGroup, S3Bucket, S3BucketPolicy, SageMakerEndpoint, SageMakerEndpointConfig, SageMakerModel, SageMakerNotebookInstance, SageMakerNotebookInstanceLifecycleConfig, SDBDomain, ServiceCatalogAcceptedPortfolioShare, ServiceCatalogCloudFormationProduct, ServiceCatalogCloudFormationProvisionedProduct, ServiceCatalogLaunchNotificationConstraint, ServiceCatalogLaunchRoleConstraint, ServiceCatalogLaunchTemplateConstraint, ServiceCatalogPortfolio, ServiceCatalogPortfolioPrincipalAssociation, ServiceCatalogPortfolioProductAssociation, ServiceCatalogPortfolioShare, ServiceCatalogTagOption, ServiceCatalogTagOptionAssociation, ServiceDiscoveryInstance, ServiceDiscoveryPrivateDnsNamespace, ServiceDiscoveryPublicDnsNamespace, ServiceDiscoveryService, SESConfigurationSet, SESConfigurationSetEventDestination, SESReceiptFilter, SESReceiptRule, SESReceiptRuleSet, SESTemplate, SNSSubscription, SNSTopic, SNSTopicPolicy, SQSQueue, SQSQueuePolicy, SSMAssociation, SSMDocument, SSMMaintenanceWindowTask, SSMParameter, SSMPatchBaseline, SSMResourceDataSync, StepFunctionsActivity, StepFunctionsStateMachine, WAFByteMatchSet, WAFIPSet, WAFRegionalByteMatchSet, WAFRegionalIPSet, WAFRegionalRule, WAFRegionalSizeConstraintSet, WAFRegionalSqlInjectionMatchSet, WAFRegionalWebACL, WAFRegionalWebACLAssociation, WAFRegionalXssMatchSet, WAFRule, WAFSizeConstraintSet, WAFSqlInjectionMatchSet, WAFWebACL, WAFXssMatchSet, WorkSpacesWorkspace

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None


## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
