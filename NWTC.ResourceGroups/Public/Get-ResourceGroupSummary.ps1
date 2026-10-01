function Get-ResourceGroupSummary {

get-azresourcegroup | select-object ResourceGroupName, Location, Tags | format-table
}