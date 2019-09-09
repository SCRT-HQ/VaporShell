# New-VSSQSQueue

## SYNOPSIS
Adds an AWS::SQS::Queue resource to the template.
The AWS::SQS::Queue resource creates an Amazon Simple Queue Service (Amazon SQS standard or FIFO queue.

## SYNTAX

```
New-VSSQSQueue [-LogicalId] <String> [-ContentBasedDeduplication <Boolean>] [-DelaySeconds <Int32>]
 [-FifoQueue <Boolean>] [-KmsDataKeyReusePeriodSeconds <Int32>] [-KmsMasterKeyId <Object>]
 [-MaximumMessageSize <Int32>] [-MessageRetentionPeriod <Int32>] [-QueueName <Object>]
 [-ReceiveMessageWaitTimeSeconds <Int32>] [-RedrivePolicy <Object>] [-Tags <Object>]
 [-VisibilityTimeout <Int32>] [-DeletionPolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>]
 [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SQS::Queue resource to the template.
The AWS::SQS::Queue resource creates an Amazon Simple Queue Service (Amazon SQS standard or FIFO queue.

Keep the following caveats in mind:

+ If you don't specify the FifoQueue property, Amazon SQS creates a standard queue.

**Note**

You can't change the queue type after you create it and you can't convert an existing standard queue into a FIFO queue.
You must either create a new FIFO queue for your application or delete your existing standard queue and recreate it as a FIFO queue.
For more information, see Moving From a Standard Queue to a FIFO Queue: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving in the *Amazon Simple Queue Service Developer Guide*.

+ If you don't provide a value for a property, the queue is created with the default value for the property.

+ If you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.

+ To successfully create a new queue, you must provide a queue name that adheres to the limits related to queues: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html and is unique within the scope of your queues.

For more information about creating FIFO (first-in-first-out queues, see the tutorial Create a Queue Using AWS CloudFormation: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-create-queue.html#create-queue-cloudformation in the *Amazon Simple Queue Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

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

### -ContentBasedDeduplication
For first-in-first-out FIFO queues, specifies whether to enable content-based deduplication.
During the deduplication interval, Amazon SQS treats messages that are sent with identical content as duplicates and delivers only one copy of the message.
For more information, see the ContentBasedDeduplication attribute for the  CreateQueue: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html  action in the *Amazon Simple Queue Service API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-contentbaseddeduplication
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DelaySeconds
The time in seconds for which the delivery of all messages in the queue is delayed.
You can specify an integer value of 0 to 900 15 minutes.
The default value is 0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-delayseconds
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FifoQueue
If set to true, creates a FIFO queue.
If you don't specify this property, Amazon SQS creates a standard queue.
For more information, see FIFO First-In-First-Out Queues: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html in the *Amazon Simple Queue Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-fifoqueue
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -KmsDataKeyReusePeriodSeconds
The length of time in seconds for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again.
The value must be an integer between 60 1 minute and 86,400 24 hours.
The default is 300 5 minutes.
A shorter time period provides better security, but results in more calls to AWS KMS, which might incur charges after Free Tier.
For more information, see How Does the Data Key Reuse Period Work?: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work in the *Amazon Simple Queue Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-kmsdatakeyreuseperiodseconds
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -KmsMasterKeyId
The ID of an AWS managed customer master key CMK for Amazon SQS or a custom CMK.
To use the AWS managed CMK for Amazon SQS, specify the alias alias/aws/sqs.
For more information, see the following:
+  Protecting Data Using Server-Side Encryption SSE and AWS KMS: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html in the *Amazon Simple Queue Service Developer Guide*
+  CreateQueue: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html in the *Amazon Simple Queue Service API Reference*
+  The Customer Master Keys section of the AWS Key Management Service Best Practices: https://d0.awsstatic.com/whitepapers/aws-kms-best-practices.pdf whitepaper

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-kmsmasterkeyid
PrimitiveType: String
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

### -MaximumMessageSize
The limit of how many bytes that a message can contain before Amazon SQS rejects it.
You can specify an integer value from 1,024 bytes 1 KiB to 262,144 bytes 256 KiB.
The default value is 262,144 256 KiB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-maxmesgsize
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MessageRetentionPeriod
The number of seconds that Amazon SQS retains a message.
You can specify an integer value from 60 seconds 1 minute to 1,209,600 seconds 14 days.
The default value is 345,600 seconds 4 days.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-msgretentionperiod
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueueName
A name for the queue.
To create a FIFO queue, the name of your FIFO queue must end with the .fifo suffix.
For more information, see FIFO First-In-First-Out Queues: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html in the *Amazon Simple Queue Service Developer Guide*.
If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the queue name.
For more information, see Name Type: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html in the *AWS CloudFormation User Guide*.
If you specify a name, you can't perform updates that require replacement of this resource.
You can perform updates that require no or some interruption.
If you must replace the resource, specify a new name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-name
PrimitiveType: String
UpdateType: Immutable

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

### -ReceiveMessageWaitTimeSeconds
Specifies the duration, in seconds, that the ReceiveMessage action call waits until a message is in the queue in order to include it in the response, rather than returning an empty response if a message isn't yet available.
You can specify an integer from 1 to 20.
Short polling is used as the default or when you specify 0 for this property.
For more information, see Amazon SQS Long Poll: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-receivemsgwaittime
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RedrivePolicy
A string that includes the parameters for the dead-letter queue functionality redrive policy of the source queue.
For more information about the redrive policy and dead-letter queues, see Using Amazon SQS Dead-Letter Queues: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html in the *Amazon Simple Queue Service Developer Guide*.
The dead-letter queue of a FIFO queue must also be a FIFO queue.
Similarly, the dead-letter queue of a standard queue must also be a standard queue.
*JSON*
{ "deadLetterTargetArn" : String, "maxReceiveCount" : Integer }
*YAML*
deadLetterTargetArn : String 
maxReceiveCount : Integer 
+  deadLetterTargetArn - The Amazon Resource Name ARN of the dead-letter queue to which Amazon SQS moves messages after the value of maxReceiveCount is exceeded.
+  maxReceiveCount - The number of times a message is delivered to the source queue before being moved to the dead-letter queue.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-redrive
PrimitiveType: Json
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

### -Tags
The tags that you attach to this queue.
For more information, see Resource Tag: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html in the *AWS CloudFormation User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#cfn-sqs-queue-tags
DuplicatesAllowed: True
ItemType: Tag
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

### -VisibilityTimeout
The length of time during which a message will be unavailable after a message is delivered from the queue.
This blocks other components from receiving the same message and gives the initial component time to process and delete the message from the queue.
Values must be from 0 to 43,200 seconds 12 hours.
If you don't specify a value, AWS CloudFormation uses the default value of 30 seconds.
For more information about Amazon SQS queue visibility timeouts, see Visibility Timeout: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html in the *Amazon Simple Queue Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-visiblitytimeout
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
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

### Vaporshell.Resource.SQS.Queue
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html)

