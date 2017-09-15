---
layout: glossary
title: Add-VSDynamoDBTableGlobalSecondaryIndex
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSDynamoDBTableGlobalSecondaryIndex

## SYNOPSIS
Adds an AWS::DynamoDB::Table.GlobalSecondaryIndex resource property to the template

## SYNTAX

```
Add-VSDynamoDBTableGlobalSecondaryIndex [-IndexName] <Object> [-KeySchema] <Object> [-Projection] <Object>
 [-ProvisionedThroughput] <Object>
```

## DESCRIPTION
Adds an AWS::DynamoDB::Table.GlobalSecondaryIndex resource property to the template

## PARAMETERS

### -IndexName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-indexname    
PrimitiveType: String    
Required: True    
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

### -KeySchema
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-keyschema    
DuplicatesAllowed: False    
ItemType: KeySchema    
Required: True    
Type: List    
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

### -Projection
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-projection    
Required: True    
Type: Projection    
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

### -ProvisionedThroughput
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-provisionedthroughput    
Required: True    
Type: ProvisionedThroughput    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DynamoDB.Table.GlobalSecondaryIndex

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html)

