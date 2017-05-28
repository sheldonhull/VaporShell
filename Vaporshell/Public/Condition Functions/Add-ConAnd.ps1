function Add-ConAnd {
    <#
    .SYNOPSIS
        Adds the condition function "Fn::And" to a resource property
    
    .DESCRIPTION
        Returns true if all the specified conditions evaluate to true, or returns false if any one of the conditions evaluates to false. Fn::And acts as an AND operator. The minimum number of conditions that you can include is 2, and the maximum is 10.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and
    
    .PARAMETER Conditions
        A collection of conditions in object form where each evaluates to true or false. There must be at least 2 conditions but no more than 10 defined.

    .EXAMPLE
        Add-ConAnd -Conditions (Add-ConEquals -FirstValue "sg-mysggroup" -SecondValue (Add-FnRef -Ref "ASecurityGroup")),(Add-ConEquals -FirstValue "Production" -SecondValue (Add-FnRef -Ref "Environment"))

        # When the template is exported, this will convert to: {"Fn::And":[{"Fn::Equals":["sg-mysggroup",{"Ref":"ASecurityGroup"}]},{"Fn::Equals":["Production",{"Ref":"Environment"}]}]}

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [System.Object[]]
        $Conditions
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::And" = @($Conditions)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Condition','Vaporshell.Condition.And'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}