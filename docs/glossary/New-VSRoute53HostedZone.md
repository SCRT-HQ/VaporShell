# New-VSRoute53HostedZone

## SYNOPSIS
Adds an AWS::Route53::HostedZone resource to the template.
The AWS::Route53::HostedZone resource is a Route 53 resource type that contains information about how you want to route traffic for a domain (example.com and its subdomains (acme.example.com, zenith.example.com:

## SYNTAX

```
New-VSRoute53HostedZone [-LogicalId] <String> [-HostedZoneConfig <Object>] [-HostedZoneTags <Object>]
 -Name <Object> [-QueryLoggingConfig <Object>] [-VPCs <Object>] [-DeletionPolicy <String>]
 [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53::HostedZone resource to the template.
The AWS::Route53::HostedZone resource is a Route 53 resource type that contains information about how you want to route traffic for a domain (example.com and its subdomains (acme.example.com, zenith.example.com:

+ Records in a public hosted zone define how you want to route traffic on the internet.

+ Records in a private hosted zone define how you want to route traffic within one or more Amazon Virtual Private Clouds (Amazon VPCs.

**Important**

You can't convert a public hosted zone to a private hosted zone or vice versa.
Instead, you must create a new hosted zone with the same name and create new records.

For more information about charges for hosted zones, see Amazon Route 53 Pricing: http://aws.amazon.com/route53/pricing/.

Note the following:

+ You can't create a hosted zone for a top-level domain (TLD such as .com.

+ For public hosted zones, Amazon Route 53 automatically creates a default SOA record and four NS records for the zone.
For more information about SOA and NS records, see NS and SOA Records that Route 53 Creates for a Hosted Zone: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html in the *Amazon Route 53 Developer Guide*.

If you want to use the same name servers for multiple public hosted zones, you can optionally associate a reusable delegation set with the hosted zone.
Using CloudFormation to create reusable delegation sets isn't supported, but you can create them programmatically using other methods, such as the Route 53 API: https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html, the AWS CLI: https://docs.aws.amazon.com/cli/latest/reference/route53/create-reusable-delegation-set.html, or AWS SDKs: https://docs.aws.amazon.com/ (see the "SDKs & Toolkits" section.

+ To create a private hosted zone, specify the VPC ID and Region for one VPC in the VPCs: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-vpcs object.

**Note**

You can specify only one Amazon VPC when you create a private hosted zone.
To associate additional Amazon VPCs with the hosted zone, use AssociateVPCWithHostedZone: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AssociateVPCWithHostedZone.html after you create the hosted zone.

+ If your domain is registered with a registrar other than Route 53, you must update the name servers with your registrar to make Route 53 the DNS service for the domain.
For more information, see Making Amazon Route 53 the DNS Service for an Existing Domain: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html in the *Amazon Route 53 Developer Guide*.

When you submit a CreateHostedZone request, the initial status of the hosted zone is PENDING.
For public hosted zones, this means that the NS and SOA records are not yet available on all Route 53 DNS servers.
When the NS and SOA records are available, the status of the zone changes to INSYNC.

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

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

### -HostedZoneConfig
A complex type that contains an optional comment.
If you don't want to specify a comment, omit the HostedZoneConfig and Comment elements.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzoneconfig
Type: HostedZoneConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostedZoneTags
Adds, edits, or deletes tags for a health check or a hosted zone.
For information about using tags for cost allocation, see Using Cost Allocation Tags: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html in the *AWS Billing and Cost Management User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzonetags
DuplicatesAllowed: True
ItemType: HostedZoneTag
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the domain.
Specify a fully qualified domain name, for example, *www.example.com*.
The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified.
This means that Route 53 treats *www.example.com* without a trailing dot and *www.example.com.* with a trailing dot as identical.
If you're creating a public hosted zone, this is the name you have registered with your DNS registrar.
If your domain name is registered with a registrar other than Route 53, change the name servers for your domain to the set of NameServers that are returned by the Fn::GetAtt intrinsic function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-name
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryLoggingConfig
Creates a configuration for DNS query logging.
After you create a query logging configuration, Amazon Route 53 begins to publish log data to an Amazon CloudWatch Logs log group.
DNS query logs contain information about the queries that Route 53 receives for a specified public hosted zone, such as the following:
+ Route 53 edge location that responded to the DNS query
+ Domain or subdomain that was requested
+ DNS record type, such as A or AAAA
+ DNS response code, such as NoError or ServFail
Log Group and Resource Policy
Before you create a query logging configuration, perform the following operations.
If you create a query logging configuration using the Route 53 console, Route 53 performs these operations automatically.
1.
Create a CloudWatch Logs log group, and make note of the ARN, which you specify when you create a query logging configuration.
Note the following:
+ You must create the log group in the us-east-1 region.
+ You must use the same AWS account to create the log group and the hosted zone that you want to configure query logging for.
+ When you create log groups for query logging, we recommend that you use a consistent prefix, for example:
/aws/route53/hosted zone name 
In the next step, you'll create a resource policy, which controls access to one or more log groups and the associated AWS resources, such as Route 53 hosted zones.
There's a limit on the number of resource policies that you can create, so we recommend that you use a consistent prefix so you can use the same resource policy for all the log groups that you create for query logging.
1.
Create a CloudWatch Logs resource policy, and give it the permissions that Route 53 needs to create log streams and to send query logs to log streams.
For the value of Resource, specify the ARN for the log group that you created in the previous step.
To use the same resource policy for all the CloudWatch Logs log groups that you created for query logging configurations, replace the hosted zone name with *, for example:
arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*
**Note**
You can't use the CloudWatch console to create or edit a resource policy.
You must use the CloudWatch API, one of the AWS SDKs, or the AWS CLI.
Log Streams and Edge Locations
When Route 53 finishes creating the configuration for DNS query logging, it does the following:
+ Creates a log stream for an edge location the first time that the edge location responds to DNS queries for the specified hosted zone.
That log stream is used to log all queries that Route 53 responds to for that edge location.
+ Begins to send query logs to the applicable log stream.
The name of each log stream is in the following format:
hosted zone ID/edge location code 
The edge location code is a three-letter code and an arbitrarily assigned number, for example, DFW3.
The three-letter code typically corresponds with the International Air Transport Association airport code for an airport near the edge location.
These abbreviations might change in the future.
For a list of edge locations, see "The Route 53 Global Network" on the Route 53 Product Details: http://aws.amazon.com/route53/details/ page.
Queries That Are Logged
Query logs contain only the queries that DNS resolvers forward to Route 53.
If a DNS resolver has already cached the response to a query such as the IP address for a load balancer for example.com, the resolver will continue to return the cached response.
It doesn't forward another query to Route 53 until the TTL for the corresponding resource record set expires.
Depending on how many DNS queries are submitted for a resource record set, and depending on the TTL for that resource record set, query logs might contain information about only one query out of every several thousand queries that are submitted to DNS.
For more information about how DNS works, see Routing Internet Traffic to Your Website or Web Application: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html in the *Amazon Route 53 Developer Guide*.
Log File Format
For a list of the values in each query log and the format of each value, see Logging DNS Queries: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html in the *Amazon Route 53 Developer Guide*.
Pricing
For information about charges for query logs, see Amazon CloudWatch Pricing: http://aws.amazon.com/cloudwatch/pricing/.
How to Stop Logging
If you want Route 53 to stop sending query logs to CloudWatch Logs, delete the query logging configuration.
For more information, see DeleteQueryLoggingConfig: https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-queryloggingconfig
Type: QueryLoggingConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VPCs
*Private hosted zones:* A complex type that contains information about the VPCs that are associated with the specified hosted zone.
For public hosted zones, omit VPCs, VPCId, and VPCRegion.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-vpcs
DuplicatesAllowed: True
ItemType: VPC
Type: List
UpdateType: Conditional

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateReplacePolicy
Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters.
If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update.
Recreating the resource generates a new physical ID.
AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource.
By default, AWS CloudFormation then deletes the old resource.
Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

You can apply the UpdateReplacePolicy attribute to any resource.
UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID.
For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one.
The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance.
The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference.
For more information on resource update behavior, see Update Behaviors of Stack Resources.

The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

Note
Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources.
Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots.
UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates.
Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Route53.HostedZone
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html)

