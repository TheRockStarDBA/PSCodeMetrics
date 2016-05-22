function Measure-Module
{
    <#
            .SYNOPSIS
            Get code metrics for a script or module
    #>
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]
        $Path
    )
    
    $Path = Convert-Path -Path $Path
    $Ast = Get-Ast -Path $Path
    
    [PSCustomObject]@{
        CyclomaticComplexity = Measure-CyclomaticComplexity -Ast $Ast
    }
}
