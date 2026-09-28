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
    new-item -path $moduleLogPath -itemtype file -force
    out-file -filepath $moduleLogPath -inputobject $message -append

}

