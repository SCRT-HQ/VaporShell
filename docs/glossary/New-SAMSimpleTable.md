---
layout: glossary
title: New-SAMSimpleTable
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# New-SAMSimpleTable

## SYNOPSIS
Adds an AWS::Serverless::SimpleTable resource to the template

## SYNTAX

```
New-SAMSimpleTable [-LogicalId] <String> [-PrimaryKey <Hashtable>] [-ProvisionedThroughput <Object>]
```

## DESCRIPTION
The AWS::Serverless::SimpleTable resource creates a DynamoDB table with a single attribute primary key.
It is useful when data only needs to be accessed via a primary key.
To use the more advanced functionality of DynamoDB, use an AWS::DynamoDB::Table resource instead.

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

### -PrimaryKey
Attribute name and type to be used as the table's primary key.
This cannot be modified without replacing the resource.
Defaults to String attribute named ID.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: (@{Name = "id"; Type="String"})
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProvisionedThroughput
Read and write throughput provisioning information.
Defaults to 5 read and 5 write capacity units per second.

      Use this 'Add-VSDynamoDBTableProvisionedThroughput' function for this value.

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

## INPUTS

## OUTPUTS

### Vaporshell.Serverless.SimpleTable

## NOTES
Return values

Ref
When the logical ID of this resource is provided to the Ref intrinsic function, it returns the resource name of the underlying DynamoDB table.

## RELATED LINKS

[https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md#awsserverlessfunction)

