---
layout: glossary
title: New-SAMFunction
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# New-SAMFunction

## SYNOPSIS
Adds an AWS::Serverless::Function resource to the template

## SYNTAX

```
New-SAMFunction [-LogicalId] <String> -Handler <Object> -Runtime <Object> -CodeUri <Object>
 [-FunctionName <Object>] [-Description <Object>] [-MemorySize <Int32>] [-Timeout <Int32>] [-Role <Object>]
 [-Policies <Object>] [-Environment <Object>] [-VpcConfig <Object>] [-Events <Object>] [-Tags <Object>]
 [-Tracing <String>]
```

## DESCRIPTION
Creates a Lambda function, IAM execution role, and event source mappings which trigger the function.

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

### -Handler
Required.
Function within your code that is called to begin execution.

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

### -Runtime
Required.
The runtime environment.

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

### -CodeUri
Required.
S3 Uri or location to the function code.
The S3 object this Uri references MUST be a Lambda deployment package.

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

### -FunctionName
A name for the function.
If you don't specify a name, a unique name will be generated for you.

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

### -Description
Description of the function.

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

### -MemorySize
Size of the memory allocated per invocation of the function in MB.
Defaults to 128.

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

### -Timeout
Maximum time that the function can run before it is killed in seconds.
Defaults to 3.

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

### -Role
ARN of an IAM role to use as this function's execution role.
If omitted, a default role is created for this function.

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

### -Policies
Names of AWS managed IAM policies or IAM policy documents that this function needs, which should be appended to the default role for this function.
If the Role property is set, this property has no meaning.

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

### -Environment
Configuration for the runtime environment.

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

### -VpcConfig
Configuration to enable this function to access private resources within your VPC.

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

### -Events
A map (string to Event source object) that defines the events that trigger this function.
Keys are limited to alphanumeric characters.

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
A map (string to string) that specifies the tags to be added to this function.
Keys and values are limited to alphanumeric characters.
Keys can be 1 to 127 Unicode characters in length and cannot be prefixed with aws:.
Values can be 1 to 255 Unicode characters in length.
When the stack is created, SAM will automatically add a lambda:createdBy:SAM tag to this Lambda function.

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

### -Tracing
String that specifies the function's X-Ray tracing mode.
Accepted values are Active and PassThrough

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

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.Function

## NOTES
Return values  

Ref  
When the logical ID of this resource is provided to the Ref intrinsic function, it returns the resource name of the underlying Lambda function.

Fn::GetAtt  
When the logical ID of this resource is provided to the Fn::GetAtt intrinsic function, it returns a value for a specified attribute of this type.
This section lists the available attributes.

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction)

