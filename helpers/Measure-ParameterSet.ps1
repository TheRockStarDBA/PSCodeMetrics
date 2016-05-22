function Measure-ParameterSet
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]
        $Command
    )
    
    (Get-Command -Name $Command).ParameterSets.Count
}
