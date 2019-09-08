function Add-VSElasticLoadBalancingV2ListenerAction {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::Listener.Action resource property to the template

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::Listener.Action resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html

    .PARAMETER AuthenticateCognitoConfig
        HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only when Type is authenticate-cognito.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticatecognitoconfig
        Type: AuthenticateCognitoConfig
        UpdateType: Mutable

    .PARAMETER AuthenticateOidcConfig
        HTTPS listeners] Information about an identity provider that is compliant with OpenID Connect OIDC. Specify only when Type is authenticate-oidc.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticateoidcconfig
        Type: AuthenticateOidcConfig
        UpdateType: Mutable

    .PARAMETER FixedResponseConfig
        Application Load Balancer] Information for creating an action that returns a custom HTTP response. Specify only when Type is fixed-response.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-fixedresponseconfig
        Type: FixedResponseConfig
        UpdateType: Mutable

    .PARAMETER Order
        The order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first. The final action to be performed must be a forward or a fixed-response action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-order
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER RedirectConfig
        Application Load Balancer] Information for creating a redirect action. Specify only when Type is redirect.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-redirectconfig
        Type: RedirectConfig
        UpdateType: Mutable

    .PARAMETER TargetGroupArn
        The Amazon Resource Name ARN of the target group. Specify only when Type is forward.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-targetgrouparn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Type
        The type of action. Each rule must include exactly one of the following types of actions: forward, fixed-response, or redirect.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-type
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.Listener.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AuthenticateCognitoConfig,
        [parameter(Mandatory = $false)]
        $AuthenticateOidcConfig,
        [parameter(Mandatory = $false)]
        $FixedResponseConfig,
        [parameter(Mandatory = $false)]
        [Int]
        $Order,
        [parameter(Mandatory = $false)]
        $RedirectConfig,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TargetGroupArn,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.Listener.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
