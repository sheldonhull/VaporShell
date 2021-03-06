# Add-VSCloudTrailTrailDataResource

## SYNOPSIS
Adds an AWS::CloudTrail::Trail.DataResource resource property to the template.
The Amazon S3 buckets or AWS Lambda functions that you specify in your event selectors for your trail to log data events.
Data events provide information about the resource operations performed on or within a resource itself.
These are also known as data plane operations.
You can specify up to 250 data resources for a trail.

## SYNTAX

```
Add-VSCloudTrailTrailDataResource [-Type] <Object> [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudTrail::Trail.DataResource resource property to the template.
The Amazon S3 buckets or AWS Lambda functions that you specify in your event selectors for your trail to log data events.
Data events provide information about the resource operations performed on or within a resource itself.
These are also known as data plane operations.
You can specify up to 250 data resources for a trail.

**Note**

The total number of allowed data resources is 250.
This number can be distributed between 1 and 5 event selectors, but the total cannot exceed 250 across all selectors.

The following example demonstrates how logging works when you configure logging of all data events for an S3 bucket named bucket-1.
In this example, the CloudTrail user specified an empty prefix, and the option to log both Read and Write data events.

1.
A user uploads an image file to bucket-1.

1.
The PutObject API operation is an Amazon S3 object-level API.
It is recorded as a data event in CloudTrail.
Because the CloudTrail user specified an S3 bucket with an empty prefix, events that occur on any object in that bucket are logged.
The trail processes and logs the event.

1.
A user uploads an object to an Amazon S3 bucket named arn:aws:s3:::bucket-2.

1.
The PutObject API operation occurred for an object in an S3 bucket that the CloudTrail user didn't specify for the trail.
The trail doesn't log the event.

The following example demonstrates how logging works when you configure logging of AWS Lambda data events for a Lambda function named *MyLambdaFunction*, but not for all AWS Lambda functions.

1.
A user runs a script that includes a call to the *MyLambdaFunction* function and the *MyOtherLambdaFunction* function.

1.
The Invoke API operation on *MyLambdaFunction* is an AWS Lambda API.
It is recorded as a data event in CloudTrail.
Because the CloudTrail user specified logging data events for *MyLambdaFunction*, any invocations of that function are logged.
The trail processes and logs the event.

1.
The Invoke API operation on *MyOtherLambdaFunction* is an AWS Lambda API.
Because the CloudTrail user did not specify logging data events for all Lambda functions, the Invoke operation for *MyOtherLambdaFunction* does not match the function specified for the trail.
The trail doesn't log the event.

## PARAMETERS

### -Type
The resource type in which you want to log data events.
You can specify AWS::S3::Object or AWS::Lambda::Function resources.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-type
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

### -Values
An array of Amazon Resource Name ARN strings or partial ARN strings for the specified objects.
+ To log data events for all objects in all S3 buckets in your AWS account, specify the prefix as arn:aws:s3:::.
**Note**
This will also enable logging of data event activity performed by any user or role in your AWS account, even if that activity is performed on a bucket that belongs to another AWS account.
+ To log data events for all objects in an S3 bucket, specify the bucket and an empty object prefix such as arn:aws:s3:::bucket-1/.
The trail logs data events for all objects in this S3 bucket.
+ To log data events for specific objects, specify the S3 bucket and object prefix such as arn:aws:s3:::bucket-1/example-images.
The trail logs data events for objects in this S3 bucket that match the prefix.
+ To log data events for all functions in your AWS account, specify the prefix as arn:aws:lambda.
**Note**
This will also enable logging of Invoke activity performed by any user or role in your AWS account, even if that activity is performed on a function that belongs to another AWS account.
+ To log data events for a specific Lambda function, specify the function ARN.
**Note**
Lambda function ARNs are exact.
For example, if you specify a function ARN *arn:aws:lambda:us-west-2:111111111111:function:helloworld*, data events will only be logged for *arn:aws:lambda:us-west-2:111111111111:function:helloworld*.
They will not be logged for *arn:aws:lambda:us-west-2:111111111111:function:helloworld2*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-values
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.CloudTrail.Trail.DataResource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html)

