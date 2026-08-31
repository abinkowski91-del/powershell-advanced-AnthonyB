Task 1 Step 5:
    Original command: 
        get-process -name explore
    error message received: 
        Get-Process: Cannot find a process with the name "explore". Verify the process name and call the cmdlet again.
    Cause of the error:
        no process called explore currently running on the system
    Corrected Command:
        get-process -name svchost (or any other process that's running on the machine)


Task 2 Step 8:
    Example of Verbose output;
        PS C:\powershell-advanced-AnthonyB> . 'C:\powershell-advanced-AnthonyB\LM1\create-resourcegroup.ps1'  -verbose                           

        cmdlet create-resourcegroup.ps1 at command pipeline position 1
        Supply values for the following parameters:
        ResourceGroupName: testgrouplonger
        Transcript started, output file is ./creat-resourcegroup.log

        Confirm
        Provided resource group already exists. Are you sure you want to update it?
        [Y] Yes  [N] No  [S] Suspend  [?] Help (default is "Y"): y
        VERBOSE: 9:57:15 PM - Created resource group 'testgrouplonger' in location 'centralus'

        ResourceGroupName : testgrouplonger
        Location          : centralus
        ProvisioningState : Succeeded
        Tags              : 
        ResourceId        : /subscriptions/c590d1c0-2832-4a91-a127-fad428b7a9f3/resourceGroups/testgrouplonger

        VERBOSE: Resource group 'testgrouplonger' created successfully in 'centralus'.
        Script execution completed.
        Transcript stopped, output file is C:\powershell-advanced-AnthonyB\creat-resourcegroup.log

    Example of debug output (truncated): 
        PS C:\powershell-advanced-AnthonyB> . 'C:\powershell-advanced-AnthonyB\LM1\create-resourcegroup.ps1'  -debug         

        cmdlet create-resourcegroup.ps1 at command pipeline position 1
        Supply values for the following parameters:
        ResourceGroupName: testgrouplonger
        Transcript started, output file is ./creat-resourcegroup.log
        DEBUG: 9:59:46 PM - [ConfigManager] Got nothing from [DisplaySecretsWarning], Module = [], Cmdlet = []. Returning default value [True].
        DEBUG: 9:59:46 PM - NewAzureResourceGroupCmdlet begin processing with ParameterSet '__AllParameterSets'.
        DEBUG: 9:59:46 PM - using account id '22017169@nwtc.edu'...
        DEBUG: 9:59:46 PM - [ConfigManager] Got nothing from [DisplayBreakingChangeWarning], Module = [Az.Resources], Cmdlet = [New-AzResourceGroup]. Returning default value [True].
        DEBUG: [Common.Authentication]: Authenticating using Account: '22017169@nwtc.edu', environment: 'AzureCloud', tenant: '83ee665d-ab1a-468c-9c2b-d58ab9aa4b97'
        DEBUG: 9:59:46 PM - [ConfigManager] Got nothing from [DisableInstanceDiscovery], Module = [], Cmdlet = []. Returning default value [False].
        DEBUG: 9:59:46 PM - [ConfigManager] Got nothing from [EnableLoginByWam], Module = [], Cmdlet = []. Returning default value [True].

        Confirm
        Provided resource group already exists. Are you sure you want to update it?
        [Y] Yes  [N] No  [S] Suspend  [?] Help (default is "Y"): y
        DEBUG: 9:59:46 PM - [SilentAuthenticator] Calling SharedTokenCacheCredential.GetTokenAsync - TenantId:'83ee665d-ab1a-468c-9c2b-d58ab9aa4b97', Scopes:'https://management.core.windows.net//.default', AuthorityHost:'https://login.microsoftonline.com/', UserId:'22017169@nwtc.edu'

    observed Differences:
        verbose seems to just confirm that a piece of code was executed and spits out a message

        Debug is way more in depth of what goes on behind the scenes as the script exectues.  Way more detail for someone trying to do advanced troubleshooting on a script

