---
layout: glossary
title: Add-VSDynamoDBTableProvisionedThroughput
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSDynamoDBTableProvisionedThroughput

## SYNOPSIS
Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template

## SYNTAX

```
Add-VSDynamoDBTableProvisionedThroughput [-ReadCapacityUnits] <Int32> [-WriteCapacityUnits] <Int32>
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.ProvisionedThroughput resource property to the template

## PARAMETERS

### -ReadCapacityUnits
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-readcapacityunits    
PrimitiveType: Integer    
Required: True    
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -WriteCapacityUnits
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-writecapacityunits    
PrimitiveType: Integer    
Required: True    
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DynamoDB.Table.ProvisionedThroughput

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html)

