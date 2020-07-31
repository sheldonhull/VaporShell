function Add-VSCloudFrontDistributionViewerCertificate {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.ViewerCertificate resource property to the template. A complex type that determines the distribution’s SSL/TLS configuration for communicating with viewers.

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.ViewerCertificate resource property to the template.
A complex type that determines the distribution’s SSL/TLS configuration for communicating with viewers.

If the distribution doesn’t use Aliases (also known as alternate domain names or CNAMEs—that is, if the distribution uses the CloudFront domain name such as d111111abcdef8.cloudfront.net—set CloudFrontDefaultCertificate to true and leave all other fields empty.

If the distribution uses Aliases (alternate domain names or CNAMEs, use the fields in this type to specify the following settings:

+ Which viewers the distribution accepts HTTPS connections from: only viewers that support server name indication (SNI: https://en.wikipedia.org/wiki/Server_Name_Indication (recommended, or all viewers including those that don’t support SNI.

+ To accept HTTPS connections from only viewers that support SNI, set SslSupportMethod to sni-only. This is recommended. Most browsers and clients released after 2010 support SNI.

+ To accept HTTPS connections from all viewers, including those that don’t support SNI, set SslSupportMethod to vip. This is not recommended, and results in additional monthly charges from CloudFront.

+ The minimum SSL/TLS protocol version that the distribution can use to communicate with viewers. To specify a minimum version, choose a value for MinimumProtocolVersion. For more information, see Security Policy: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy in the *Amazon CloudFront Developer Guide*.

+ The location of the SSL/TLS certificate, AWS Certificate Manager (ACM: https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html (recommended or AWS Identity and Access Management (AWS IAM: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html. You specify the location by setting a value in one of the following fields (not both:

+  AcmCertificateArn

+  IamCertificateId

All distributions support HTTPS connections from viewers. To require viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use ViewerProtocolPolicy in the CacheBehavior or DefaultCacheBehavior. To specify how CloudFront should use SSL/TLS to communicate with your custom origin, use CustomOriginConfig.

For more information, see Using HTTPS with CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html and  Using Alternate Domain Names and HTTPS: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html in the *Amazon CloudFront Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html

    .PARAMETER IamCertificateId
        If the distribution uses Aliases alternate domain names or CNAMEs and the SSL/TLS certificate is stored in AWS Identity and Access Management AWS IAM: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html, provide the ID of the IAM certificate.
If you specify an IAM certificate ID, you must also specify values for MinimumProtocolVersion and SslSupportMethod.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-iamcertificateid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER SslSupportMethod
        If the distribution uses Aliases alternate domain names or CNAMEs, specify which viewers the distribution accepts HTTPS connections from.
+  sni-only – The distribution accepts HTTPS connections from only viewers that support server name indication SNI: https://en.wikipedia.org/wiki/Server_Name_Indication. This is recommended. Most browsers and clients released after 2010 support SNI.
+  vip – The distribution accepts HTTPS connections from all viewers including those that don’t support SNI. This is not recommended, and results in additional monthly charges from CloudFront.
If the distribution uses the CloudFront domain name such as d111111abcdef8.cloudfront.net, don’t set a value for this field.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-sslsupportmethod
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER MinimumProtocolVersion
        If the distribution uses Aliases alternate domain names or CNAMEs, specify the security policy that you want CloudFront to use for HTTPS connections with viewers. The security policy determines two settings:
+ The minimum SSL/TLS protocol that CloudFront can use to communicate with viewers.
+ The ciphers that CloudFront can use to encrypt the content that it returns to viewers.
For more information, see Security Policy: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy and Supported Protocols and Ciphers Between Viewers and CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers in the *Amazon CloudFront Developer Guide*.
On the CloudFront console, this setting is called **Security Policy**.
We recommend that you specify TLSv1.2_2018 unless your viewers are using browsers or devices that don’t support TLSv1.2.
When you’re using SNI only you set SslSupportMethod to sni-only, you must specify TLSv1 or higher.
If the distribution uses the CloudFront domain name such as d111111abcdef8.cloudfront.net you set CloudFrontDefaultCertificate to true, CloudFront automatically sets the security policy to TLSv1 regardless of the value that you set here.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-minimumprotocolversion
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER CloudFrontDefaultCertificate
        If the distribution uses the CloudFront domain name such as d111111abcdef8.cloudfront.net, set this field to true.
If the distribution uses Aliases alternate domain names or CNAMEs, omit this field and specify values for the following fields:
+  AcmCertificateArn or IamCertificateId specify a value for one, not both
+  MinimumProtocolVersion
+  SslSupportMethod

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-cloudfrontdefaultcertificate
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER AcmCertificateArn
        If the distribution uses Aliases alternate domain names or CNAMEs and the SSL/TLS certificate is stored in AWS Certificate Manager ACM: https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html, provide the Amazon Resource Name ARN of the ACM certificate. CloudFront only supports ACM certificates in the US East N. Virginia Region us-east-1.
If you specify an ACM certificate ARN, you must also specify values for MinimumProtocolVersion and SslSupportMethod.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-acmcertificatearn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.ViewerCertificate')]
    [cmdletbinding()]
    Param
    (
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
        $IamCertificateId,
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
        $SslSupportMethod,
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
        $MinimumProtocolVersion,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CloudFrontDefaultCertificate,
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
        $AcmCertificateArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.ViewerCertificate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
