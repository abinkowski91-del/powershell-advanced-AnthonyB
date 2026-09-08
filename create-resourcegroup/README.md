Project Purpose:
    to learn about proper scripting practices with powershell
    to employ documentation and testing mimicking a real development environment

    to create a standalone function "create-testresourcegroup" for use in future scripts
        function is used to make a new resource group with default tags or any other tags passed into it via pipeline
        function also tests for group names that are too long or too short

Files included:
    create-resourcegroup.ps1
    create-resourcegroup.tests.ps1
    
Lessons learned:
    ooh boy, pester sure is confusing to me. Kept getting errors and thankfully VS Code was able to help with some of them with its autocompletion thing.  also learned that i need to pace myself doing these labs and not wait until Sunday night to do them.