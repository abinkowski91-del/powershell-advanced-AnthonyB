function New-TestResourceGroup{
<#
.SYNOPSIS
Creates a resource group in Azure

.DESCRIPTION
This script will create a resource group in Azure with the name specified by the user and in the location 'centralus'

.PARAMETER <a>
The name of the resource group to be created
tags describes the tags to be applied to the resource group
#>


    #create variables
    #validate that the resource group name is between 10 and 20 characters long and is mandatory

    #add tags to the resource group with default values of Department=IT and Environment=Test

    [CmdletBinding(SupportsShouldProcess=$true)]
    param(
        [Parameter(Mandatory,valuefrompipeline=$true)]
        [ValidateLength(10,20)]
        [string] $ResourceGroupName,
        [Parameter(Mandatory=$false)]
        [hashtable]$tags = @{Department='IT'; Environment='Test' }

    )

    Start-Transcript -path ./creat-resourcegroup.log -Append

    #create a custom object to hold the result of the resource group creation
    $result = [PSCustomObject]@{
        ResourcegroupName = $ResourceGroupName
        Location = 'centralus'
        Status = 'Not Created'
        Tags = $tags
        Timestamp = Get-Date
    }
    #try catch block to handle any errors that may occur during the creation of the resource group
    try {
        if ($PScmdlet.ShouldProcess("Resource Group '$RecourceGroupName'", "Create")){

            
        #create a new resource group with name stored in variable "$ResourceGroupName" and specify the location as "centralus"
        New-AzResourceGroup `
            -Name $ResourceGroupName `
            -Location centralus `
            -tag $Tags
        }

    }
    catch {
        Write-Host "Error creating resource group: $_"
    }
    finally {
        $result.Status = 'Created'
    }   

    write-host $result | Format-Table

    Stop-Transcript
}