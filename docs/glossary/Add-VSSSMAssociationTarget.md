---
layout: glossary
title: Add-VSSSMAssociationTarget
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSSSMAssociationTarget

## SYNOPSIS
Adds an AWS::SSM::Association.Target resource property to the template

## SYNTAX

```
Add-VSSSMAssociationTarget [-Key] <Object> [-Values] <Object>
```

## DESCRIPTION
Adds an AWS::SSM::Association.Target resource property to the template

## PARAMETERS

### -Key
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-key    
PrimitiveType: String    
Required: True    
UpdateType: Immutable

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

### -Values
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-values    
DuplicatesAllowed: False    
PrimitiveItemType: String    
Required: True    
Type: List    
UpdateType: Immutable

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

## INPUTS

## OUTPUTS

### VaporShell.Resource.SSM.Association.Target

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html)
