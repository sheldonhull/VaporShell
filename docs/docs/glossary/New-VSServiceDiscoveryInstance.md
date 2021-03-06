# New-VSServiceDiscoveryInstance

## SYNOPSIS
Adds an AWS::ServiceDiscovery::Instance resource to the template.
A complex type that contains information about an instance that AWS Cloud Map creates when you submit a RegisterInstance request.

## SYNTAX

```
New-VSServiceDiscoveryInstance [-LogicalId] <String> -InstanceAttributes <Object> [-InstanceId <Object>]
 -ServiceId <Object> [-DeletionPolicy <String>] [-UpdateReplacePolicy <String>] [-DependsOn <String[]>]
 [-Metadata <Object>] [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ServiceDiscovery::Instance resource to the template.
A complex type that contains information about an instance that AWS Cloud Map creates when you submit a RegisterInstance request.

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

### -InstanceAttributes
A string map that contains the following information for the service that you specify in ServiceId:
+ The attributes that apply to the records that are defined in the service.
+ For each attribute, the applicable value.
Supported attribute keys include the following:
**AWS_ALIAS_DNS_NAME**
****
If you want AWS Cloud Map to create a Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer.
For information about how to get the DNS name, see "DNSName" in the topic AliasTarget: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html.
Note the following:
+ The configuration for the service that is specified by ServiceId must include settings for an A record, an AAAA record, or both.
+ In the service that is specified by ServiceId, the value of RoutingPolicy must be WEIGHTED.
+ If the service that is specified by ServiceId includes HealthCheckConfig settings, AWS Cloud Map will create the health check, but it won't associate the health check with the alias record.
+ Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than ELB load balancers.
+ If you specify a value for AWS_ALIAS_DNS_NAME, don't specify values for any of the AWS_INSTANCE attributes.
**AWS_INSTANCE_CNAME**
If the service configuration includes a CNAME record, the domain name that you want Route 53 to return in response to DNS queries, for example, example.com.
This value is required if the service specified by ServiceId includes settings for an CNAME record.
**AWS_INSTANCE_IPV4**
If the service configuration includes an A record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, 192.0.2.44.
This value is required if the service specified by ServiceId includes settings for an A record.
If the service includes settings for an SRV record, you must specify a value for AWS_INSTANCE_IPV4, AWS_INSTANCE_IPV6, or both.
**AWS_INSTANCE_IPV6**
If the service configuration includes an AAAA record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, 2001:0db8:85a3:0000:0000:abcd:0001:2345.
This value is required if the service specified by ServiceId includes settings for an AAAA record.
If the service includes settings for an SRV record, you must specify a value for AWS_INSTANCE_IPV4, AWS_INSTANCE_IPV6, or both.
**AWS_INSTANCE_PORT**
If the service includes an SRV record, the value that you want Route 53 to return for the port.
If the service includes HealthCheckConfig, the port on the endpoint that you want Route 53 to send requests to.
This value is required if you specified settings for an SRV record or a Route 53 health check when you created the service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceattributes
PrimitiveType: Json
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceId
An identifier that you want to associate with the instance.
Note the following:
+ If the service that is specified by ServiceId includes settings for an SRV record, the value of InstanceId is automatically included as part of the value for the SRV record.
For more information, see DnsRecord \> Type: https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type.
+ You can use this value to update an existing instance.
+ To register a new instance, you must specify a value that is unique among instances that you register by using the same service.
+ If you specify an existing InstanceId and ServiceId, AWS Cloud Map updates the existing DNS records.
If there's also an existing health check, AWS Cloud Map deletes the old health check and creates a new one.
**Note**
The health check isn't deleted immediately, so it will still appear for a while if you submit a ListHealthChecks request, for example.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceid
PrimitiveType: String
UpdateType: Immutable

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

### -ServiceId
The ID of the service that you want to use for settings for the instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-serviceid
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateReplacePolicy
Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters.
If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update.
Recreating the resource generates a new physical ID.
AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource.
By default, AWS CloudFormation then deletes the old resource.
Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

You can apply the UpdateReplacePolicy attribute to any resource.
UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID.
For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one.
The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance.
The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference.
For more information on resource update behavior, see Update Behaviors of Stack Resources.

The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

Note
Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources.
Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots.
UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates.
Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

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

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

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

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ServiceDiscovery.Instance
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html)

