---
layout: pagenodesc
title: Add-CreationPolicy
category: glossary
---

# Add-CreationPolicy

## SYNOPSIS
Adds a CreationPolicy property to a resoure on the template

## SYNTAX

### CountTimeout (Default)
```
Add-CreationPolicy [[-AutoScalingCreationPolicy] <PSCustomObject>] [[-MinSuccessfulInstancesPercent] <Int32>]
 [[-ResourceSignal] <PSCustomObject>] [[-Count] <Int32>] [[-Timeout] <String>]
```

### ResourceSignal
```
Add-CreationPolicy [[-AutoScalingCreationPolicy] <PSCustomObject>] [[-MinSuccessfulInstancesPercent] <Int32>]
 [[-ResourceSignal] <PSCustomObject>] [[-Count] <Int32>] [[-Timeout] <String>]
```

### AutoScalingCreationPolicy
```
Add-CreationPolicy [[-AutoScalingCreationPolicy] <PSCustomObject>] [[-MinSuccessfulInstancesPercent] <Int32>]
 [[-ResourceSignal] <PSCustomObject>] [[-Count] <Int32>] [[-Timeout] <String>]
```

### MinSuccessfulInstancesPercent
```
Add-CreationPolicy [[-AutoScalingCreationPolicy] <PSCustomObject>] [[-MinSuccessfulInstancesPercent] <Int32>]
 [[-ResourceSignal] <PSCustomObject>] [[-Count] <Int32>] [[-Timeout] <String>]
```

## DESCRIPTION
Associate the CreationPolicy attribute with a resource to prevent its status from reaching create complete until AWS CloudFormation receives a specified number of success signals or the timeout period is exceeded.
To signal a resource, you can use the cfn-signal helper script or SignalResource API.
AWS CloudFormation publishes valid signals to the stack events so that you track the number of signals sent.

The creation policy is invoked only when AWS CloudFormation creates the associated resource.
Currently, the only AWS CloudFormation resources that support creation policies are AWS::AutoScaling::AutoScalingGroup, AWS::EC2::Instance, and AWS::CloudFormation::WaitCondition.

Use the CreationPolicy attribute when you want to wait on resource configuration actions before stack creation proceeds.
For example, if you install and configure software applications on an EC2 instance, you might want those applications to be running before proceeding.
In such cases, you can add a CreationPolicy attribute to the instance, and then send a success signal to the instance after the applications are installed and configured.

## PARAMETERS

### -AutoScalingCreationPolicy
For an Auto Scaling group replacement update, specifies how many instances must signal success for the update to succeed.

Parameter accepts a PSCustomObject.
Use this if you are customizing the AutoScalingCreationPolicy properties outside of MinSuccessfulInstancesPercent.

```yaml
Type: PSCustomObject
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinSuccessfulInstancesPercent
Specifies the percentage of instances in an Auto Scaling replacement update that must signal success for the update to succeed.
You can specify a value from 0 to 100.
AWS CloudFormation rounds to the nearest tenth of a percent.
For example, if you update five instances with a minimum successful percentage of 50, three instances must signal success.
If an instance doesn't send a signal within the time specified by the Timeout property, AWS CloudFormation assumes that the instance wasn't created.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceSignal
When AWS CloudFormation creates the associated resource, configures the number of required success signals and the length of time that AWS CloudFormation waits for those signals.

Parameter accepts a PSCustomObject.
Use this if you are customizing the ResourceSignal properties outside of Count and/or Timeout.

```yaml
Type: PSCustomObject
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Count
The number of success signals AWS CloudFormation must receive before it sets the resource status as CREATE_COMPLETE.
If the resource receives a failure signal or doesn't receive the specified number of signals before the timeout period expires, the resource creation fails and AWS CloudFormation rolls the stack back.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
The length of time that AWS CloudFormation waits for the number of signals that was specified in the Count property.
The timeout period starts after AWS CloudFormation starts creating the resource, and the timeout expires no sooner than the time you specify but can occur shortly thereafter.
The maximum time that you can specify is 12 hours.

The value must be in ISO8601 duration format, in the form: "PT#H#M#S", where each # is the number of hours, minutes, and seconds, respectively.
For best results, specify a period of time that gives your instances plenty of time to get up and running.
A shorter timeout can cause a rollback.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CreationPolicy

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html)

