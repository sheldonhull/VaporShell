# Add-VSMSKClusterStorageInfo

## SYNOPSIS
Adds an AWS::MSK::Cluster.StorageInfo resource property to the template.
Contains information about storage volumes attached to MSK broker nodes.

## SYNTAX

```
Add-VSMSKClusterStorageInfo [[-EBSStorageInfo] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.StorageInfo resource property to the template.
Contains information about storage volumes attached to MSK broker nodes.

## PARAMETERS

### -EBSStorageInfo
EBS volume information.

Type: EBSStorageInfo
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html#cfn-msk-cluster-storageinfo-ebsstorageinfo
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MSK.Cluster.StorageInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html)

