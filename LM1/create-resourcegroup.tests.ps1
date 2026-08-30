BeforeAll {
    # Import the module containing the function to be tested
    . $psscriptroot\create-resourcegroup.ps1
}

Describe "Create Resource Group Tests" 
{
    It "Should create a resource group with a valid name" 
    {
        # Arrange
        $resourceGroupName = "ValidResourceGroup"

        # Act
        $result = New-AzResourceGroup -Name $resourceGroupName -Location "centralus"

        # Assert
        $result.ResourceGroupName | Should -Be $resourceGroupName
    }

    It "Should throw an error for a resource group name that is too short" 
    {
        # Arrange
        $shortResourceGroupName = "Short"

        # Act & Assert
        { New-AzResourceGroup -Name $shortResourceGroupName -Location "centralus" } | Should -Throw
    }

    It "Should throw an error for a resource group name that is too long" 
    {
        # Arrange
        $longResourceGroupName = "ThisIsAVeryLongResourceGroupNameExceedingLimit"

        # Act & Assert
        { New-AzResourceGroup -Name $longResourceGroupName -Location "centralus" } | Should -Throw
    }
}