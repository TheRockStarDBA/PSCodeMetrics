function Measure-CodeLine
{
    <#
    Example from: https://blog.victorvogelpoel.nl/2014/01/12/powershell-measure-scriptcode-calculating-script-code-metrics/
    #>
    
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [System.Management.Automation.Language.Token[]]
        $Tokens
    )
    
    # count lines of code excluding comments
    # to do this we need to count any newline characters that were not preceded by a new line
    $Code = $Tokens.Kind | Where-Object { $_ -ne "Comment" }
    # if the last token before the end of input is a newline, we'll need to subtract 1 from the total
    $Subtractor = [int]($Code[-2] -eq 'NewLine')
    $PrevTokenIsNewline = $false
    
    $Code = foreach ($Item in $Code) {
        if ($Item -ne "NewLine" -or (!$PrevTokenIsNewline)) { $Item }
        $PrevTokenIsNewline = ($Item -eq "NewLine")
    } 
    $Code = $Code | Where-Object { $_ -eq "NewLine" }
    $Code.Count - $Subtractor
}