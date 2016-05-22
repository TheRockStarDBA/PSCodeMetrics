function Measure-Script
{
    <#
            .SYNOPSIS
            Get code metrics for a script
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
        Script               = Split-Path -Path $Path -Leaf
        CyclomaticComplexity = Measure-CyclomaticComplexity -Ast $Ast.Ast -Tokens $Tokens
        LinesOfCode          = Measure-CodeLine -Tokens $Ast.Tokens
        ParameterSets        = Measure-ParameterSet -Command $Path
    }
}
