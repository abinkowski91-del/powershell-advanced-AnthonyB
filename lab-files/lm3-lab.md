Lab 3 Summary
    I turned create-resourcegroup.ps1 into a standalone function to be reused in later labs (i assume :D).  The addition of CmdletBinding allowed the function to act as a callable cmdlet.

    Added the optional parameter and a hashtable parameter set to the "tags" variable to pass multiple "default" tags into the New-AzResourceGroup cmdlet

    Next, I added teh ability for the new function to be used with the pipeline functionality of Powerhsell.  Tested with a resource group name piped into the New-TestREsourceGroup function.

    For simplified output of the results of the function, I added a custom object containing basic properties like group name, location, status, etc.. The output is displayed to the user at the end of the function.

    Added WhatIf support to simulate parts of the function as to what would happen IF the function executed without actually executing it.  Also tested the confirm switch works for popping up execution confirmations while running the code.

    Finally, reorganized the folder structure of the powershell class repository to make more sense in a real environment.

    






