function Measure-CyclomaticComplexity
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.Management.Automation.Language.Ast]
        $Ast,
        
        $Tokens
    )
    
    $Tokens = $Tokens | Where-Object {$_.Kind -in 'while','if','else','until','for'}
    $AstSwitch = $Ast.FindAll({$args[0] -is [System.Management.Automation.Language.SwitchStatementAst]}, $true)
    $Tokens.Count + $AstSwitch.Clauses.Count + 1
}
