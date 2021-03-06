function Add-VSGreengrassConnectorDefinitionConnectorDefinitionVersion {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ConnectorDefinition.ConnectorDefinitionVersion resource property to the template. <a name="aws-properties-greengrass-connectordefinition-connectordefinitionversion-description"></a>A connector definition version contains a list of connectors.

    .DESCRIPTION
        Adds an AWS::Greengrass::ConnectorDefinition.ConnectorDefinitionVersion resource property to the template.
<a name="aws-properties-greengrass-connectordefinition-connectordefinitionversion-description"></a>A connector definition version contains a list of connectors.

**Note**

After you create a connector definition version that contains the connectors you want to deploy, you must add it to your group version. For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

<a name="aws-properties-greengrass-connectordefinition-connectordefinitionversion-inheritance"></a> In an AWS CloudFormation template, ConnectorDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::ConnectorDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html

    .PARAMETER Connectors
        The connectors in this version. Only one instance of a given connector can be added to a connector definition version at a time.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html#cfn-greengrass-connectordefinition-connectordefinitionversion-connectors
        ItemType: Connector
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.ConnectorDefinition.ConnectorDefinitionVersion')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Greengrass.ConnectorDefinition.Connector"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Connectors
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ConnectorDefinition.ConnectorDefinitionVersion'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
