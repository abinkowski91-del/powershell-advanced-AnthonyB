Module Purpose  
    To create resource groups in Azure using the command line.  
    
Features
    Functionality so far is creating resource groups based on name or project ID. 
    Also uses Write-ModuleLog function to create a log file when the script executes

Installation instructions
    download the module files from NWTC.ResourceGroups folder
    Run: Import-module <your download path here>\nwtc.resourcegroups.psm1

Usage Examples
    "resourcegroupname" | new-testresourcegroup
        will create a resource group with that name

    new-testresourcegroup -projectID "65485"
        will create a resource group name with the prefix "RG-" and the entered project ID. e.g. "RG-65485"

    get-content c:\powershell-advanced-anthonyb\create-resourcegroup\resourcegroups.txt | new-testResourceGroup 
        takes the data from the file path and creates resource groups with names from the file

version info
    1.1.0 - added the new feature of using Write-Modulelog to create logs as New-TestResourceGroup executes
            added new feature of displaying a summary of all resource groups with Get-ResourceGroupSummary function
            not a major update since overall functionality of the module hasn't changed
            not a patch since new features were added and we are not fixing any bugs with this release