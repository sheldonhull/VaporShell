# New-VaporParameter

## SYNOPSIS
Adds a Parameter object to the template

## SYNTAX

```
New-VaporParameter [-LogicalId] <String> [-Type] <String> [[-Default] <String>] [-NoEcho]
 [[-AllowedPattern] <String>] [[-AllowedValues] <String[]>] [[-ConstraintDescription] <String>]
 [[-Description] <String>] [[-MaxLength] <Int32>] [[-MaxValue] <Int32>] [[-MinLength] <Int32>]
 [[-MinValue] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
You can use the optional Parameters section to pass values into your template when you create a stack.
With parameters, you can create templates that are customized each time you create a stack.
Each parameter must contain a value when you create a stack.
You can specify a default value to make the parameter optional so that you don't need to pass in a value when creating a stack.
AWS CloudFormation will use the default value.
For more information about creating stacks, see Working with Stacks.

The Parameters section consists of the key name Parameters.
You can have a maximum of 60 parameters in an AWS CloudFormation template.

For each parameter, you must declare a logical name, which must be alphanumeric and unique among all logical names within the template.
After you declare the parameter's logical name, you can specify the parameter's properties.
You must declare parameters as one of following types: String, Number, CommaDelimitedList, or an AWS-specific type.
For String, Number, and AWS-specific parameter types, you can define constraints that AWS CloudFormation uses to validate the value of the parameter.

AWS-specific parameter types are AWS values such as Amazon EC2 key pair names and VPC IDs.
AWS CloudFormation validates these parameter values against existing values in users' AWS accounts.
AWS-specific parameter types are helpful in catching invalid values at the start of creating or updating a stack.

** Important **
    For sensitive parameter values (such as passwords), set the NoEcho property to true.
That way, whenever anyone describes your stack, the parameter value is shown as asterisks (*****).

## EXAMPLES

### EXAMPLE 1
```
$template = Initialize-Vaporshell -Description "Testing Mapping addition"
$template.AddParameter(
    (New-VaporParameter -LogicalId "DBPort" -Default 3306 -Description "TCP/IP port for the Propertiesbase" -Type "Number" -MinValue 1150 -MaxValue 65535),
    (New-VaporParameter -LogicalId "DBPwd" -NoEcho -Description "The Propertiesbase admin account password" -Type "String" -MinLength 1 -MaxLength 41 -AllowedPattern "^[a-zA-Z0-9]*$")
)
```

When the template is exported, this will convert to: 
    {
        "AWSTemplateFormatVersion":  "2010-09-09",
        "Description":  "Testing Mapping addition",
        "Parameters":  {
            "DBPwd":  {
                "Type":  "String",
                "NoEcho":  {
                    "IsPresent":  true
                },
                "Description":  "The Propertiesbase admin account password",
                "MinLength":  1,
                "MaxLength":  41,
                "AllowedPattern":  "^\[a-zA-Z0-9\]*$"
            },
            "DBPort":  {
                "Type":  "Number",
                "Default":  "3306",
                "Description":  "TCP/IP port for the Propertiesbase",
                "MinValue":  1150,
                "MaxValue":  65535
            }
        }
    }

## PARAMETERS

### -LogicalId
An identifier for the current condition.
The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.

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

### -Type
The Properties type for the parameter (PropertiesType).

Required: Yes

You can specify the following values for the Type property:

String
    A literal string.

    For example, users could specify "MyUserName".

Number
    An integer or float.
AWS CloudFormation validates the parameter value as a number; however, when you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a string.

    For example, users could specify "8888".

List\<Number\>
    An array of integers or floats that are separated by commas.
AWS CloudFormation validates the parameter value as numbers; however, when you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a list of strings.

    For example, users could specify "80,20", and a Ref will result in \["80","20"\].

CommaDelimitedList
    An array of literal strings that are separated by commas.
The total number of strings should be one more than the total number of commas.
Also, each member string is space trimmed.

    For example, users could specify "test,dev,prod", and a Ref will result in \["test","dev","prod"\].

AWS-Specific Parameter Types

    For AWS-specific parameter types, template users must specify existing AWS values that are in their account.
AWS CloudFormation supports the following AWS-specific types:

        AWS::EC2::AvailabilityZone::Name
        An Availability Zone, such as us-west-2a.

        AWS::EC2::Image::Id
        An Amazon EC2 image ID, such as ami-ff527ecf.
Note that the AWS CloudFormation console won't show a drop-down list of values for this parameter type.

        AWS::EC2::Instance::Id
        An Amazon EC2 instance ID, such as i-1e731a32.

        AWS::EC2::KeyPair::KeyName
        An Amazon EC2 key pair name.

        AWS::EC2::SecurityGroup::GroupName
        An EC2-Classic or default VPC security group name, such as my-sg-abc.

        AWS::EC2::SecurityGroup::Id
        A security group ID, such as sg-a123fd85.

        AWS::EC2::Subnet::Id
        A subnet ID, such as subnet-123a351e.

        AWS::EC2::Volume::Id
        An Amazon EBS volume ID, such as vol-3cdd3f56.

        AWS::EC2::VPC::Id
        A VPC ID, such as vpc-a123baa3.

        AWS::Route53::HostedZone::Id
        An Amazon Route 53 hosted zone ID, such as Z23YXV4OVPL04A.

        List\<AWS::EC2::AvailabilityZone::Name\>
        An array of Availability Zones for a region, such as us-west-2a, us-west-2b.

        List\<AWS::EC2::Image::Id\>
        An array of Amazon EC2 image IDs, such as ami-ff527ecf, ami-e7527ed7.
Note that the AWS CloudFormation console won't show a drop-down list of values for this parameter type.

        List\<AWS::EC2::Instance::Id\>
        An array of Amazon EC2 instance IDs, such as i-1e731a32, i-1e731a34.

        List\<AWS::EC2::SecurityGroup::GroupName\>
        An array of EC2-Classic or default VPC security group names, such as my-sg-abc, my-sg-def.

        List\<AWS::EC2::SecurityGroup::Id\>
        An array of security group IDs, such as sg-a123fd85, sg-b456fd85.

        List\<AWS::EC2::Subnet::Id\>
        An array of subnet IDs, such as subnet-123a351e, subnet-456b351e.

        List\<AWS::EC2::Volume::Id\>
        An array of Amazon EBS volume IDs, such as vol-3cdd3f56, vol-4cdd3f56.

        List\<AWS::EC2::VPC::Id\>
        An array of VPC IDs, such as vpc-a123baa3, vpc-b456baa3.

        List\<AWS::Route53::HostedZone::Id\>
        An array of Amazon Route 53 hosted zone IDs, such as Z23YXV4OVPL04A, Z23YXV4OVPL04B.

        AWS CloudFormation validates input values for these types against existing values in a user's account.
For example, with the AWS::EC2::VPC::Id type, a user must enter an existing VPC ID that is in her account and in the region in which she is creating the stack.

        Group and Sort Parameters in the AWS CloudFormation Console

        When you use the AWS CloudFormation console to create or update a stack, the console alphabetically lists input parameters by their logical ID.
To override the default ordering, you can use the AWS::CloudFormation::Interface metaProperties key.
By grouping and ordering parameters, you make it easier for users to specify parameter values.
For example, you could group all VPC-related parameters so that they aren't scattered throughout an alphabetical list.

        In the metaProperties key, you can specify the groups to create, the parameters to include in each group, and the order in which the console shows each parameter within its group.
You can also define friendly parameter names so that the console shows descriptive names instead of logical IDs.
All parameters that you reference in the metaProperties key must be declared in the Parameters section of the template.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Default
A value of the appropriate type for the template to use if no value is specified when a stack is created.
If you define constraints for the parameter, you must specify a value that adheres to those constraints.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoEcho
Whether to mask the parameter value whenever anyone makes a call that describes the stack.
If you set the value to true, the parameter value is masked with asterisks (*****).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedPattern
A regular expression that represents the patterns you want to allow for String types.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowedValues
An array containing the list of values allowed for the parameter.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConstraintDescription
A string that explains the constraint when the constraint is violated.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
A string of up to 4000 characters that describes the parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxLength
An integer value that determines the largest number of characters you want to allow for String types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxValue
A numeric value that determines the largest numeric value you want to allow for Number types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinLength
An integer value that determines the smallest number of characters you want to allow for String types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinValue
A numeric value that determines the smallest numeric value you want to allow for Number types.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Parameter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html)

