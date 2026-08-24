#code creates a variable "a" to hold the name of the resource group 
#that will be created and then creates a new resource group with that name in the "centralus" location.

#create variable "a" to hold the name of the resource group that will be created

$a = Read-host "RG Name"

#create a new resource group with name stored in variable "a" and specify the location as "centralus"

new-azresourcegroup -name $a -location centralus
