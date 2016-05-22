@{
    RootModule = "PSCodeMetrics.psm1"
    ModuleVersion = '1.0'
    Author = 'Matt McNabb'
    Copyright = '(c) 2016 Matt McNabb. All rights reserved.'
    GUID = 'd14622b1-28f8-4283-9ac5-f3388938d243'
    PowerShellVersion = '3.0'

    FunctionsToExport = @(
        "Measure-Function",
        "Measure-Module",
        "Measure-Script"
    )
    FileList = @(
        "PSCodeMetrics.psd1"
        "PSCodeMetrics.psm1"
        "Get-Ast"
        "Measure-CodeLine.ps1",
        "Measure-CyclomaticComplexity.ps1",
        "Measure-Function.ps1",
        "Measure-Module.ps1",
        "Measure-ParameterSet.ps1",
        "Measure-Script.ps1",

        "PSCodeMetrics.tests.ps1"
    )
    PrivateData = @{
        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            # Tags = @()

            # A URL to the license for this module.
            # LicenseUri = ''

            # A URL to the main website for this project.
            # ProjectUri = ''

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            # ReleaseNotes = ''

        }
    }
}