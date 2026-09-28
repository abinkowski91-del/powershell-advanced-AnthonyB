    function is used to make a new resource group with default tags or any other tags passed into it via pipeline

    function also tests for group names that are too long or too short

    function now acts as a cmdlet with bindings and parameter sets

    write verbose statements placed throughout function for more efficient debugging/troubleshooting

    counters were added to count errors and successful/skipped resource group creation

    function is now able to take input from a text file

    function now calls "write-modulelog" function to create and maintain a running log as new-testresourcegroup executes
    old transcript method is removed
