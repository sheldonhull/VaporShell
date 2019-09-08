function Add-VSApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template

    .DESCRIPTION
        Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html

    .PARAMETER CustomizedMetricSpecification
        A customized metric. You can specify either a predefined metric or a customized metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-customizedmetricspecification
        Type: CustomizedMetricSpecification
        UpdateType: Mutable

    .PARAMETER DisableScaleIn
        Indicates whether scale in by the target tracking scaling policy is disabled. If the value is true, scale in is disabled and the target tracking scaling policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource. The default value is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-disablescalein
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER PredefinedMetricSpecification
        A predefined metric. You can specify either a predefined metric or a customized metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-predefinedmetricspecification
        Type: PredefinedMetricSpecification
        UpdateType: Mutable

    .PARAMETER ScaleInCooldown
        The amount of time, in seconds, after a scale-in activity completes before another scale in activity can start.
The cooldown period is used to block subsequent scale-in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale-out policy during the cooldown period after a scale-in, Application Auto Scaling scales out your scalable target immediately.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleincooldown
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER ScaleOutCooldown
        The amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.
While the cooldown period is in effect, the capacity that has been added by the previous scale-out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously but not excessively scale out.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleoutcooldown
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER TargetValue
        The target value for the metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-targetvalue
        PrimitiveType: Double
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.TargetTrackingScalingPolicyConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomizedMetricSpecification,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DisableScaleIn,
        [parameter(Mandatory = $false)]
        $PredefinedMetricSpecification,
        [parameter(Mandatory = $false)]
        [Int]
        $ScaleInCooldown,
        [parameter(Mandatory = $false)]
        [Int]
        $ScaleOutCooldown,
        [parameter(Mandatory = $true)]
        [System.Double]
        $TargetValue
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.TargetTrackingScalingPolicyConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
