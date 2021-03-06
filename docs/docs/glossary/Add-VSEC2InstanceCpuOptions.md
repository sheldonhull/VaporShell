# Add-VSEC2InstanceCpuOptions

## SYNOPSIS
Adds an AWS::EC2::Instance.CpuOptions resource property to the template.
The CPU options for the instance.

## SYNTAX

```
Add-VSEC2InstanceCpuOptions [[-CoreCount] <Object>] [[-ThreadsPerCore] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.CpuOptions resource property to the template.
The CPU options for the instance.

## PARAMETERS

### -CoreCount
The number of CPU cores for the instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-corecount
PrimitiveType: Integer
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

### -ThreadsPerCore
The number of threads per CPU core.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-threadspercore
PrimitiveType: Integer
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

### Vaporshell.Resource.EC2.Instance.CpuOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html)

