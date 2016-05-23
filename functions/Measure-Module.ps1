function Measure-Module
{
    <#
            .SYNOPSIS
            Get code metrics for a module
    #>
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]
        $ModuleName
    )
    
    # need to check if module is available in session first
    # if not remove it at the end
    $global:ImportState = [bool](Get-Module -Name $ModuleName)
    
    $Module = Import-Module -Name $ModuleName -PassThru -Force    
    
    foreach ($Command in $Module.ExportedCommands.Values.Name)
    {
        Measure-Function -Command "$($Module.Name)\$Command"
    }
    
    if (!$ImportState) { Remove-Module -Name $ModuleName -Force }
}
