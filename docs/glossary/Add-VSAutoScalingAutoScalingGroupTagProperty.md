# Add-VSAutoScalingAutoScalingGroupTagProperty

## SYNOPSIS
Adds an AWS::AutoScaling::AutoScalingGroup.TagProperty resource property to the template.
TagProperty specifies a list of tags for the Tag property of AWS::AutoScaling::AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html.
TagProperty adds tags to all associated instances in an Auto Scaling group.

## SYNTAX

```
Add-VSAutoScalingAutoScalingGroupTagProperty [-Key] <Object> [-PropagateAtLaunch] <Object> [-Value] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::AutoScalingGroup.TagProperty resource property to the template.
TagProperty specifies a list of tags for the Tag property of AWS::AutoScaling::AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html.
TagProperty adds tags to all associated instances in an Auto Scaling group.

For more information, see Tagging Auto Scaling Groups and Instances: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html in the *Amazon EC2 Auto Scaling User Guide*.
You can find a sample template snippet in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#aws-properties-as-group--examples section of the AWS::AutoScaling::AutoScalingGroup documentation.

AWS CloudFormation adds the following tags to all Auto Scaling groups and associated instances:

+ aws:cloudformation:stack-name

+ aws:cloudformation:stack-id

+ aws:cloudformation:logical-id

## PARAMETERS

### -Key
The tag key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Key
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PropagateAtLaunch
Set to true if you want AWS CloudFormation to copy the tag to EC2 instances that are launched as part of the Auto Scaling group.
Set to false if you want the tag attached only to the Auto Scaling group and not copied to any instances launched as part of the Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-PropagateAtLaunch
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The tag value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Value
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScaling.AutoScalingGroup.TagProperty
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html)

