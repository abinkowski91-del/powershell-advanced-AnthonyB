Three Strengths of the LM3 Function
    Well Organized with comments throughout
    Input validated for some variables
    Error handling incorporated in Try Catch statement

Three Areas that could be improved
    try catch statement could be a little more robust
    more validation
    better output

Docmentated changes to "create-resourcegroup.ps1"
    added parameter sets for the ResourceGroupName and Project ID parameters
    changed the function so it works with either parameter to create a resource group in Azure

    added begin, process, end blocks to make the function more structured
    
    had to change some logic and move prefix variable around to make the projectID variable "work"
        (if the resource group name was too short, error would pop up but the function would still create a resource group called "RG-")

    tested function with piping resource group names into it

    added verbose statements throughout the function for future troubleshooting

Number of objects processed and successfully created: 9, no warnings


    PS C:\powershell-advanced-AnthonyB> get-content .\create-resourcegroup\ResourceGroups.txt | New-TestResourceGroup
Transcript started, output file is ./creat-resourcegroup.log

ResourceGroupName : RandomGroup1
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup1

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup2
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup2

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup3
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup3

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup4
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup4

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup5
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup5

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup6
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup6

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup7
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup7

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup8
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup8

Transcript started, output file is ./creat-resourcegroup.log
ResourceGroupName : RandomGroup9
Location          : centralus
ProvisioningState : Succeeded
Tags              : 
                    Name         Value
                    ===========  =====
                    Environment  Test 
                    Department   IT   
                    
ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/RandomGroup9