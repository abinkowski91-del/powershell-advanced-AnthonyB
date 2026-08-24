<#
.SYNOPSIS
    Creates a resource group in Azure

.DESCRIPTION
    This script will create a resource group in Azure with the name specified by the user and in the location 'centralus'

.PARAMETER a    
    The name of the resource group to be created
#>


#create variable "a" to hold the name of the resource group that will be created

$a = Read-host "RG Name"

#create a new resource group with name stored in variable "a" and specify the location as "centralus"

new-azresourcegroup -name $a -location centralus
