script from step 2
    Three issues:
        -No comments to describe what's happening in the script
        -"$a" variable is abstract, needs more descriptive name
        -not sure what the scipt is doing but i'm sure a function or loop would help with structure
    Explanations
        -most enterprise environments have a testing dept separate from their development dept, comments explain what the code is supposed to do.  troubleshooting is difficult without knowing how something is supposed to work
        -kinda like the missing comments, vague variable names makes it difficult to track it throughout the code.  It's easier to give the variable a meaningful name, so everytime a tester sees it they know what it does
        -not having functions/loops or some kind of structure makes the code difficult to read.  unnecessary lines make it harder to keep track of where you are in the code and gives more chances for the code to error out.

TASK 2: step 6.
    purpose of the script: Creating a resource group with a name that is read from the user's input
    parameter being documented: "a" for the resource name
    sammple execution:

        PS C:\powershell-advanced-AnthonyB> . 'C:\powershell-advanced-AnthonyB\LM1\create-resourcegroup.ps1'
        RG Name: test

        Confirm
        Provided resource group already exists. Are you sure you want to update it?
        [Y] Yes  [N] No  [S] Suspend  [?] Help (default is "Y"): y

        ResourceGroupName : test
        Location          : centralus
        ProvisioningState : Succeeded
        Tags              : 
        ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/test

Task 3 Step 6
    validation method selected: validate lenght between 10 and 20 characters
    Example of valid input:
        PS C:\powershell-advanced-AnthonyB> . 'C:\powershell-advanced-AnthonyB\LM1\create-resourcegroup.ps1'

        cmdlet create-resourcegroup.ps1 at command pipeline position 1
        Supply values for the following parameters:
        ResourceGroupName: testgrouplongername

        ResourceGroupName : testgrouplongername
        Location          : centralus
        ProvisioningState : Succeeded
        Tags              : 
        ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/testgrouplongername
    
    Example of invalid input:
        PS C:\powershell-advanced-AnthonyB> . 'C:\powershell-advanced-AnthonyB\LM1\create-resourcegroup.ps1'

        cmdlet create-resourcegroup.ps1 at command pipeline position 1
        Supply values for the following parameters:
        ResourceGroupName: testgroup
        create-resourcegroup.ps1: Cannot validate argument on parameter 'ResourceGroupName'. The character length (9) of the argument is too short. Specify an argument with a length that is greater than or equal to "10", and then try the command again.     

    Results of testing: validation method works and variable is mandatory

Task 4 Step 3
    error generated: i set an invalid location
    Error message:
        Line |
         27 |      New-AzResourceGroup `
            |      ~~~~~~~~~~~~~~~~~~~~~
            | The provided location 'fakeus' is not available for resource group. List of available regions is
            | 'eastasia,southeastasia,austriaeast,australiaeast,australiacentral,australiacentral2,australiasoutheast,belgiumcentral,brazilsouth,canadacentral,canadaeast,switzerlandnorth,chilecentral,denmarkeast,germanywestcentral,eastus2,eastus,centralus,northcentralus,francecentral,uksouth,ukwest,indonesiacentral,israelcentral,centralindia,southindia,jioindiawest,italynorth,japaneast,japanwest,koreacentral,koreasouth,malaysiawest,mexicocentral,northeurope,norwayeast,newzealandnorth,polandcentral,qatarcentral,spaincentral,swedencentral,uaenorth,westcentralus,westeurope,westus2,westus,southcentralus,westus3,southafricanorth,westindia,jioindiacentral,indiasouthcentral'. StatusCode: 400 ReasonPhrase: Bad Request OperationID : f3009e36-b577-4a67-b8f0-eb13ed85a49e
    Catch block Handling: did not catch, went to Finally

    What occurred in Finally:
        Script execution completed.

Task 5 Step 4
    transcript file location: C:\powershell-advanced-anthonyb

    one example entry from transcript:

        Transcript started, output file is ./creat-resourcegroup.log

        ResourceGroupName : testgroupname
        Location          : centralus
        ProvisioningState : Succeeded
        Tags              : 
        ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/testgroupname

        Script execution completed.

    two readability improvments made:
        More spaces between "chunks" of code
        new lines for comments instead of using one big paragraph

