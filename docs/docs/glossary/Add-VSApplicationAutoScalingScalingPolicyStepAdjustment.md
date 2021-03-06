# Add-VSApplicationAutoScalingScalingPolicyStepAdjustment

## SYNOPSIS
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.StepAdjustment resource property to the template.
StepAdjustment is a subproperty of StepScalingPolicyConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html that represents a step adjustment for a step scaling policy.

## SYNTAX

```
Add-VSApplicationAutoScalingScalingPolicyStepAdjustment [[-MetricIntervalLowerBound] <Object>]
 [[-MetricIntervalUpperBound] <Object>] [-ScalingAdjustment] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.StepAdjustment resource property to the template.
StepAdjustment is a subproperty of StepScalingPolicyConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html that represents a step adjustment for a step scaling policy.

For the following examples, suppose that you have an alarm with a breach threshold of 50:

+ To trigger a step adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.

+ To trigger a step adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.

For more information, see Step Adjustments: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html#as-scaling-steps in the *Application Auto Scaling User Guide*.

You can find a sample template snippet in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#aws-resource-applicationautoscaling-scalingpolicy--examples section of the AWS::ApplicationAutoScaling::ScalingPolicy documentation.

## PARAMETERS

### -MetricIntervalLowerBound
The lower bound for the difference between the alarm threshold and the CloudWatch metric.
If the metric value is above the breach threshold, the lower bound is inclusive the metric must be greater than or equal to the threshold plus the lower bound.
Otherwise, it is exclusive the metric must be greater than the threshold plus the lower bound.
A null value indicates negative infinity.
You must specify at least one upper or lower bound.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-metricintervallowerbound
PrimitiveType: Double
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

### -MetricIntervalUpperBound
The upper bound for the difference between the alarm threshold and the CloudWatch metric.
If the metric value is above the breach threshold, the upper bound is exclusive the metric must be less than the threshold plus the upper bound.
Otherwise, it is inclusive the metric must be less than or equal to the threshold plus the upper bound.
A null value indicates positive infinity.
You must specify at least one upper or lower bound.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-metricintervalupperbound
PrimitiveType: Double
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

### -ScalingAdjustment
The amount by which to scale.
The adjustment is based on the value that you specified in the AdjustmentType property either an absolute number or a percentage.
A positive value adds to the current capacity and a negative number subtracts from the current capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-scalingadjustment
PrimitiveType: Integer
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

### Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.StepAdjustment
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html)

