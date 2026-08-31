<#
.SYNOPSIS
Creates a resource group in Azure

.DESCRIPTION
This script will create a resource group in Azure with the name specified by the user and in the location 'centralus'

.PARAMETER <a>
The name of the resource group to be created
#>


#create variable "$ResourceGroupName" to hold the name of the resource group that will be created
#validate that the name is between 10 and 20 characters long
#variable is mandatory

param(
    [Parameter(Mandatory)]
    [ValidateLength(10,20)]
    [string] $ResourceGroupName
    
)

Start-Transcript -path ./creat-resourcegroup.log -Append

#create a new resource group with name stored in variable "$ResourceGroupName" and specify the location as "centralus"


New-AzResourceGroup `
        -Name $ResourceGroupName `
        -Location centralus 
    

Stop-Transcript