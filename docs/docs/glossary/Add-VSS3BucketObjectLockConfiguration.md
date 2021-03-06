# Add-VSS3BucketObjectLockConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.ObjectLockConfiguration resource property to the template.
Places an Object Lock configuration on the specified bucket.
The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket.

## SYNTAX

```
Add-VSS3BucketObjectLockConfiguration [[-ObjectLockEnabled] <Object>] [[-Rule] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.ObjectLockConfiguration resource property to the template.
Places an Object Lock configuration on the specified bucket.
The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket.

**Note**

DefaultRetention requires either Days or Years.
You can't specify both at the same time.

**Related Resources**

+  Locking Objects: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html

## PARAMETERS

### -ObjectLockEnabled
Indicates whether this bucket has an Object Lock configuration enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html#cfn-s3-bucket-objectlockconfiguration-objectlockenabled
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Rule
The Object Lock rule in place for the specified object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html#cfn-s3-bucket-objectlockconfiguration-rule
Type: ObjectLockRule
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.ObjectLockConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html)

