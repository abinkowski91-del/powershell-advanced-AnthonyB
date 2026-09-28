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
      $directory = Split-Path -Path $moduleLogPath -Parent

    <#
    if (-not [string]::IsNullOrEmpty($directory) -and -not (Test-Path -Path $directory)) {
        New-Item -Path $directory -ItemType Directory -Force | Out-Null
    }
        #>

    $timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    Add-Content -Path $moduleLogPath -Value "[$timestamp] $Message"

}

