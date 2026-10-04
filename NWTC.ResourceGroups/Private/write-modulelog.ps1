function Write-ModuleLog {

<#
.SYNOPSIS
Writes a message to the module log file.
.DESCRIPTION
This function writes a message to the module log file.
.PARAMETER Message
The message to write to the module log file.
.PARAMETER moduleLogPath
The path to the module log file.
#>
    [CmdletBinding()]
    
    param(
        [Parameter(Mandatory=$true)]
        [string]$Message,
        [Parameter(Mandatory=$true)]
        [string]$moduleLogPath
    )


    if (-not (test-path -path $moduleLogPath)) {
        New-Item -Path $moduleLogPath -ItemType File -Force | Out-Null
    }
        

    $timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    $LogFile   = Join-Path -Path $moduleLogPath -ChildPath "MyScriptLog_$Timestamp.txt" 
    New-Item -ItemType File -Path $LogFile -Force | Out-Null 
    Add-Content -Path $LogFile -Value "[$timestamp] $Message"

}

