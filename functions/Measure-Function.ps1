function Measure-Function
{
    <#
            .SYNOPSIS
            Get code metrics for a function
    #>
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        $Command
    )
    
    $Definition = Get-Command -Name $Command | Select-Object -ExpandProperty Definition
    $Ast = Get-Ast -Content $Definition
    
    [PSCustomObject]@{
        Function             = $Command
        CyclomaticComplexity = Measure-CyclomaticComplexity -Ast $Ast.Ast -Tokens $Ast.Tokens
        LinesOfCode          = Measure-CodeLine -Tokens $Ast.Tokens
        ParameterSets        = Measure-ParameterSet -Command $Command
    }
}
