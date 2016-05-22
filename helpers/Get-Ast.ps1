function Get-Ast
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    param
    (
        [Parameter(ParameterSetName = 'Path',Mandatory = $true)]
        [string]
        $Path,
        
        [Parameter(ParameterSetName = 'Content',Mandatory = $true)]
        [string[]]
        $Content
    )
    
    $Tokens = $Null
    
    switch ($PSCmdlet.ParameterSetName)
    {
        "Path"
        {
            $Path = Resolve-Path $Path
            $Ast = [System.Management.Automation.Language.Parser]::ParseFile($Path, [ref]$Tokens, [ref]$Null)
        }
        
        "Content"
        {
            $Ast = [System.Management.Automation.Language.Parser]::ParseInput($Content, [ref]$Tokens, [ref]$Null)
        }
    }
    
    [PSCustomObject]@{
        Ast = $Ast
        Tokens = $Tokens
    }
}
