$publicFunctions = Get-ChildItem -Path $PSScriptRoot\NWTC.ResourceGroups\Public\*.ps1 -erroraction SilentlyContinue

foreach ($function in $publicFunctions) {
    . $function.FullName
}

export-ModuleMember -Function $publicFunctions.BaseName

$privateFunctions = Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -erroraction SilentlyContinue

foreach ($function in $privateFunctions) {
    . $function.FullName
}