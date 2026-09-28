$publicFunctions = Get-ChildItem -Path $psscriptroot\Public\*.ps1 -erroraction SilentlyContinue

write-host "Loading public functions from $($publicFunctions.Count) files in the Public folder..."

foreach ($function in $publicFunctions) {
    . $function.FullName
}

export-ModuleMember -Function $publicFunctions.BaseName

$privateFunctions = Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -erroraction SilentlyContinue

foreach ($function in $privateFunctions) {
    . $function.FullName
}