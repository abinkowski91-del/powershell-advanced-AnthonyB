$publicFunctions = Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 | ForEach-Object {
    $functionName = $_.FullName
    $functionCode = Get-Content -Path $_.FullName -Raw
    $functionCode
}