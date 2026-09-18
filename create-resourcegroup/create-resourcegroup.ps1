function New-TestResourceGroup{
   
<#
.SYNOPSIS
Creates a resource group in Azure

.DESCRIPTION
This script will create a resource group in Azure with the name specified by the user and in the location 'centralus'

.PARAMETER ResourceGroupName
The name of the resource group to be created

.PARAMETER PROJECTID
The project ID to be used to create the resource group name

.PARAMETER Tags
tags describes the tags to be applied to the resource group
#>
    #bind the function to the cmdlet binding and specify that it supports ShouldProcess
    [CmdletBinding(SupportsShouldProcess=$true)]

    param(
        [Parameter(Mandatory = $false,valuefrompipeline=$true, ParameterSetName = 'ResourceGroupName')]
        #validate that the resource group name is between 10 and 20 characters long and is mandatory
        [ValidateLength(10,20)]
        [string] $ResourceGroupName,

        [Parameter(Mandatory=$false)]
        #add tags to the resource group with default values of Department=IT and Environment=Test
        [hashtable]$tags = @{Department='IT'; Environment='Test' },

        #give option to create a resource group with a name based on a project ID
        [Parameter(Mandatory=$false, ParameterSetName = 'ProjectID')]
        [string] $projectId

    )


    Begin{
        
        write-verbose "starting function: New-TestResourceGroup"
        write-verbose "Resource group name is validated to be between 10 and 20 characters long"
        write-verbose "Tags are set to default values"
        write-verbose "Starting the creation of the output object"

        #create a custom object to hold the result of the resource group creation
        $result = [PSCustomObject]@{
            ResourcegroupName = $ResourceGroupName
            Location = 'centralus'
            Status = 'Not Created'
            Tags = $tags
            Timestamp = Get-Date    
        }

        #create counters for output later
        $RequestProcessed = 0
        $ResourceCreated = 0
        $ResourceSkipped = 0
        $ErrorCount = 0

    }

    Process{

       
        Start-Transcript -path ./creat-resourcegroup.log -Append
        
        #try catch block to handle any errors that may occur during the 
        #creation of the resource group
        try {
            if ($PScmdlet.ShouldProcess("Resource Group '$RecourceGroupName'", "Create")){

                
            #if resourcegroup name is not null, create anew resource group with name stored 
            #in variable "$ResourceGroupName" 
            #and specify the location as "centralus"
                if ($resourcegroupname)     {
                    
                    if (get-azresourcegroup -name $ResourceGroupName -ErrorAction SilentlyContinue) {
                        write-host "`n"
                        Write-Host "Resource group '$ResourceGroupName' already exists. Skipping creation."
                        write-host "`n"
                        $ResourceSkipped++
                    }
                    else {

                    write-host "`n"
                    Write-Host "Creating resource group '$ResourceGroupName' in location 'centralus' with tags: $Tags"
                    write-host "`n"
                    
                    New-AzResourceGroup `
                    -Name $ResourceGroupName `
                    -Location centralus `
                    -tag $Tags

                    $ResourceCreated++
                    }
                }
                #otherwise, create a resource group with a name based on the project ID variable if 
                #project ID parameter is specified
                elseif ($projectID)   {
                    
                    #add a prefix to the projectID variable so it can be used as a resource group name
                    $prefix = "RG-"
                    $projectID = $prefix + $projectID
                    New-AzResourceGroup `
                    -Name $ProjectID `
                    -Location centralus `
                    -tag $Tags

                    $ResourceCreated++
                }
            }
            $RequestProcessed++
        }
        catch {
            Write-Host "Error creating resource group: $_"
            $ErrorCount++
        }
        finally {
            $result.Status = 'Created'
        }   

    }
    end{
        #publish the result of the resource group creation to the console in a table format
        write-verbose "Resource group creation completed. Publishing result to console."
        write-host $result | Format-Table
        #publish counter amounts to the console
        write-host "summary of resource group creation:"
        write-host "-----------------------------------"
        write-host "Request Processed: $RequestProcessed"
        write-host "Resource Created: $ResourceCreated"
        write-host "Resource Skipped: $ResourceSkipped"
        write-host "Error Count: $ErrorCount"

        Stop-Transcript
    }
    
}