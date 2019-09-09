# Resource

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Resource [-ResourceType] <String> [-LogicalId] <String> [-Properties] <ScriptBlock> [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LogicalId
{{ Fill LogicalId Description }}

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
{{ Fill Properties Description }}

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
{{ Fill ResourceType Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: AlexaASKSkill, AmazonMQBroker, AmazonMQConfiguration, AmazonMQConfigurationAssociation, AmplifyApp, AmplifyBranch, AmplifyDomain, ApiGatewayAccount, ApiGatewayApiKey, ApiGatewayAuthorizer, ApiGatewayBasePathMapping, ApiGatewayClientCertificate, ApiGatewayDeployment, ApiGatewayDocumentationPart, ApiGatewayDocumentationVersion, ApiGatewayDomainName, ApiGatewayGatewayResponse, ApiGatewayMethod, ApiGatewayModel, ApiGatewayRequestValidator, ApiGatewayResource, ApiGatewayRestApi, ApiGatewayStage, ApiGatewayUsagePlan, ApiGatewayUsagePlanKey, ApiGatewayV2Api, ApiGatewayV2ApiMapping, ApiGatewayV2Authorizer, ApiGatewayV2Deployment, ApiGatewayV2DomainName, ApiGatewayV2Integration, ApiGatewayV2IntegrationResponse, ApiGatewayV2Model, ApiGatewayV2Route, ApiGatewayV2RouteResponse, ApiGatewayV2Stage, ApiGatewayVpcLink, ApplicationAutoScalingScalableTarget, ApplicationAutoScalingScalingPolicy, AppMeshMesh, AppMeshRoute, AppMeshVirtualNode, AppMeshVirtualRouter, AppMeshVirtualService, AppStreamDirectoryConfig, AppStreamFleet, AppStreamImageBuilder, AppStreamStack, AppStreamStackFleetAssociation, AppStreamStackUserAssociation, AppStreamUser, AppSyncApiKey, AppSyncDataSource, AppSyncFunctionConfiguration, AppSyncGraphQLApi, AppSyncGraphQLSchema, AppSyncResolver, AthenaNamedQuery, AutoScalingAutoScalingGroup, AutoScalingLaunchConfiguration, AutoScalingLifecycleHook, AutoScalingPlansScalingPlan, AutoScalingScalingPolicy, AutoScalingScheduledAction, BackupBackupPlan, BackupBackupSelection, BackupBackupVault, BatchComputeEnvironment, BatchJobDefinition, BatchJobQueue, BudgetsBudget, CertificateManagerCertificate, Cloud9EnvironmentEC2, CloudFormationCustomResource, CloudFormationMacro, CloudFormationStack, CloudFormationWaitCondition, CloudFormationWaitConditionHandle, CloudFrontCloudFrontOriginAccessIdentity, CloudFrontDistribution, CloudFrontStreamingDistribution, CloudTrailTrail, CloudWatchAlarm, CloudWatchAnomalyDetector, CloudWatchDashboard, CodeBuildProject, CodeBuildSourceCredential, CodeCommitRepository, CodeDeployApplication, CodeDeployDeploymentConfig, CodeDeployDeploymentGroup, CodePipelineCustomActionType, CodePipelinePipeline, CodePipelineWebhook, CodeStarGitHubRepository, CognitoIdentityPool, CognitoIdentityPoolRoleAttachment, CognitoUserPool, CognitoUserPoolClient, CognitoUserPoolGroup, CognitoUserPoolUser, CognitoUserPoolUserToGroupAttachment, ConfigAggregationAuthorization, ConfigConfigRule, ConfigConfigurationAggregator, ConfigConfigurationRecorder, ConfigDeliveryChannel, ConfigOrganizationConfigRule, ConfigRemediationConfiguration, DataPipelinePipeline, DAXCluster, DAXParameterGroup, DAXSubnetGroup, DirectoryServiceMicrosoftAD, DirectoryServiceSimpleAD, DLMLifecyclePolicy, DMSCertificate, DMSEndpoint, DMSEventSubscription, DMSReplicationInstance, DMSReplicationSubnetGroup, DMSReplicationTask, DocDBDBCluster, DocDBDBClusterParameterGroup, DocDBDBInstance, DocDBDBSubnetGroup, DynamoDBTable, EC2CapacityReservation, EC2ClientVpnAuthorizationRule, EC2ClientVpnEndpoint, EC2ClientVpnRoute, EC2ClientVpnTargetNetworkAssociation, EC2CustomerGateway, EC2DHCPOptions, EC2EC2Fleet, EC2EgressOnlyInternetGateway, EC2EIP, EC2EIPAssociation, EC2FlowLog, EC2Host, EC2Instance, EC2InternetGateway, EC2LaunchTemplate, EC2NatGateway, EC2NetworkAcl, EC2NetworkAclEntry, EC2NetworkInterface, EC2NetworkInterfaceAttachment, EC2NetworkInterfacePermission, EC2PlacementGroup, EC2Route, EC2RouteTable, EC2SecurityGroup, EC2SecurityGroupEgress, EC2SecurityGroupIngress, EC2SpotFleet, EC2Subnet, EC2SubnetCidrBlock, EC2SubnetNetworkAclAssociation, EC2SubnetRouteTableAssociation, EC2TransitGateway, EC2TransitGatewayAttachment, EC2TransitGatewayRoute, EC2TransitGatewayRouteTable, EC2TransitGatewayRouteTableAssociation, EC2TransitGatewayRouteTablePropagation, EC2TrunkInterfaceAssociation, EC2Volume, EC2VolumeAttachment, EC2VPC, EC2VPCCidrBlock, EC2VPCDHCPOptionsAssociation, EC2VPCEndpoint, EC2VPCEndpointConnectionNotification, EC2VPCEndpointService, EC2VPCEndpointServicePermissions, EC2VPCGatewayAttachment, EC2VPCPeeringConnection, EC2VPNConnection, EC2VPNConnectionRoute, EC2VPNGateway, EC2VPNGatewayRoutePropagation, ECRRepository, ECSCluster, ECSService, ECSTaskDefinition, EFSFileSystem, EFSMountTarget, EKSCluster, ElastiCacheCacheCluster, ElastiCacheParameterGroup, ElastiCacheReplicationGroup, ElastiCacheSecurityGroup, ElastiCacheSecurityGroupIngress, ElastiCacheSubnetGroup, ElasticBeanstalkApplication, ElasticBeanstalkApplicationVersion, ElasticBeanstalkConfigurationTemplate, ElasticBeanstalkEnvironment, ElasticLoadBalancingLoadBalancer, ElasticLoadBalancingV2Listener, ElasticLoadBalancingV2ListenerCertificate, ElasticLoadBalancingV2ListenerRule, ElasticLoadBalancingV2LoadBalancer, ElasticLoadBalancingV2TargetGroup, ElasticsearchDomain, EMRCluster, EMRInstanceFleetConfig, EMRInstanceGroupConfig, EMRSecurityConfiguration, EMRStep, EventsEventBusPolicy, EventsRule, FSxFileSystem, GameLiftAlias, GameLiftBuild, GameLiftFleet, GlueClassifier, GlueConnection, GlueCrawler, GlueDatabase, GlueDataCatalogEncryptionSettings, GlueDevEndpoint, GlueJob, GlueMLTransform, GluePartition, GlueSecurityConfiguration, GlueTable, GlueTrigger, GreengrassConnectorDefinition, GreengrassConnectorDefinitionVersion, GreengrassCoreDefinition, GreengrassCoreDefinitionVersion, GreengrassDeviceDefinition, GreengrassDeviceDefinitionVersion, GreengrassFunctionDefinition, GreengrassFunctionDefinitionVersion, GreengrassGroup, GreengrassGroupVersion, GreengrassLoggerDefinition, GreengrassLoggerDefinitionVersion, GreengrassResourceDefinition, GreengrassResourceDefinitionVersion, GreengrassSubscriptionDefinition, GreengrassSubscriptionDefinitionVersion, GuardDutyDetector, GuardDutyFilter, GuardDutyIPSet, GuardDutyMaster, GuardDutyMember, GuardDutyThreatIntelSet, IAMAccessKey, IAMGroup, IAMInstanceProfile, IAMManagedPolicy, IAMPolicy, IAMRole, IAMServiceLinkedRole, IAMUser, IAMUserToGroupAddition, InspectorAssessmentTarget, InspectorAssessmentTemplate, InspectorResourceGroup, IoT1ClickDevice, IoT1ClickPlacement, IoT1ClickProject, IoTAnalyticsChannel, IoTAnalyticsDataset, IoTAnalyticsDatastore, IoTAnalyticsPipeline, IoTCertificate, IoTEventsDetectorModel, IoTEventsInput, IoTPolicy, IoTPolicyPrincipalAttachment, IoTThing, IoTThingPrincipalAttachment, IoTThingsGraphFlowTemplate, IoTTopicRule, KinesisAnalyticsApplication, KinesisAnalyticsApplicationOutput, KinesisAnalyticsApplicationReferenceDataSource, KinesisAnalyticsV2Application, KinesisAnalyticsV2ApplicationCloudWatchLoggingOption, KinesisAnalyticsV2ApplicationOutput, KinesisAnalyticsV2ApplicationReferenceDataSource, KinesisFirehoseDeliveryStream, KinesisStream, KinesisStreamConsumer, KMSAlias, KMSKey, LakeFormationDataLakeSettings, LakeFormationPermissions, LakeFormationResource, LambdaAlias, LambdaEventSourceMapping, LambdaFunction, LambdaLayerVersion, LambdaLayerVersionPermission, LambdaPermission, LambdaVersion, LogsDestination, LogsLogGroup, LogsLogStream, LogsMetricFilter, LogsSubscriptionFilter, ManagedBlockchainMember, ManagedBlockchainNode, MediaLiveChannel, MediaLiveInput, MediaLiveInputSecurityGroup, MediaStoreContainer, MSKCluster, NeptuneDBCluster, NeptuneDBClusterParameterGroup, NeptuneDBInstance, NeptuneDBParameterGroup, NeptuneDBSubnetGroup, OpsWorksApp, OpsWorksCMServer, OpsWorksElasticLoadBalancerAttachment, OpsWorksInstance, OpsWorksLayer, OpsWorksStack, OpsWorksUserProfile, OpsWorksVolume, PinpointADMChannel, PinpointAPNSChannel, PinpointAPNSSandboxChannel, PinpointAPNSVoipChannel, PinpointAPNSVoipSandboxChannel, PinpointApp, PinpointApplicationSettings, PinpointBaiduChannel, PinpointCampaign, PinpointEmailChannel, PinpointEmailConfigurationSet, PinpointEmailConfigurationSetEventDestination, PinpointEmailDedicatedIpPool, PinpointEmailIdentity, PinpointEventStream, PinpointGCMChannel, PinpointSegment, PinpointSMSChannel, PinpointVoiceChannel, RAMResourceShare, RDSDBCluster, RDSDBClusterParameterGroup, RDSDBInstance, RDSDBParameterGroup, RDSDBSecurityGroup, RDSDBSecurityGroupIngress, RDSDBSubnetGroup, RDSEventSubscription, RDSOptionGroup, RedshiftCluster, RedshiftClusterParameterGroup, RedshiftClusterSecurityGroup, RedshiftClusterSecurityGroupIngress, RedshiftClusterSubnetGroup, RoboMakerFleet, RoboMakerRobot, RoboMakerRobotApplication, RoboMakerRobotApplicationVersion, RoboMakerSimulationApplication, RoboMakerSimulationApplicationVersion, Route53HealthCheck, Route53HostedZone, Route53RecordSet, Route53RecordSetGroup, Route53ResolverResolverEndpoint, Route53ResolverResolverRule, Route53ResolverResolverRuleAssociation, S3Bucket, S3BucketPolicy, SageMakerEndpoint, SageMakerEndpointConfig, SageMakerModel, SageMakerNotebookInstance, SageMakerNotebookInstanceLifecycleConfig, SageMakerWorkteam, SDBDomain, SecretsManagerResourcePolicy, SecretsManagerRotationSchedule, SecretsManagerSecret, SecretsManagerSecretTargetAttachment, SecurityHubHub, ServiceCatalogAcceptedPortfolioShare, ServiceCatalogCloudFormationProduct, ServiceCatalogCloudFormationProvisionedProduct, ServiceCatalogLaunchNotificationConstraint, ServiceCatalogLaunchRoleConstraint, ServiceCatalogLaunchTemplateConstraint, ServiceCatalogPortfolio, ServiceCatalogPortfolioPrincipalAssociation, ServiceCatalogPortfolioProductAssociation, ServiceCatalogPortfolioShare, ServiceCatalogResourceUpdateConstraint, ServiceCatalogStackSetConstraint, ServiceCatalogTagOption, ServiceCatalogTagOptionAssociation, ServiceDiscoveryHttpNamespace, ServiceDiscoveryInstance, ServiceDiscoveryPrivateDnsNamespace, ServiceDiscoveryPublicDnsNamespace, ServiceDiscoveryService, SESConfigurationSet, SESConfigurationSetEventDestination, SESReceiptFilter, SESReceiptRule, SESReceiptRuleSet, SESTemplate, SNSSubscription, SNSTopic, SNSTopicPolicy, SQSQueue, SQSQueuePolicy, SSMAssociation, SSMDocument, SSMMaintenanceWindow, SSMMaintenanceWindowTarget, SSMMaintenanceWindowTask, SSMParameter, SSMPatchBaseline, SSMResourceDataSync, StepFunctionsActivity, StepFunctionsStateMachine, TransferServer, TransferUser, WAFByteMatchSet, WAFIPSet, WAFRegionalByteMatchSet, WAFRegionalGeoMatchSet, WAFRegionalIPSet, WAFRegionalRateBasedRule, WAFRegionalRegexPatternSet, WAFRegionalRule, WAFRegionalSizeConstraintSet, WAFRegionalSqlInjectionMatchSet, WAFRegionalWebACL, WAFRegionalWebACLAssociation, WAFRegionalXssMatchSet, WAFRule, WAFSizeConstraintSet, WAFSqlInjectionMatchSet, WAFWebACL, WAFXssMatchSet, WorkSpacesWorkspace

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
