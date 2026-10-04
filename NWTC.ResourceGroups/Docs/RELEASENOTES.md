New Features:
    Write-ModuleLog function creates a log file when called and generates log entries in the file

    Get-ResourceGroupSummary outputs a summary of all the Resource Groups in Azure including Tags and Location

Bug Fixes:

Upgrade Instructions:
    Download the newest version of the module under "NWTC.ResourceGroups"
    Place directory where you want the module
    Run Remove-Module NWTC.ResourceGroups
    Run Install-Module "path-to-your-directory/nwtc.resourcegroups.psm1" 

Known Issues:
    Write-ModuleLog does NOT work currently