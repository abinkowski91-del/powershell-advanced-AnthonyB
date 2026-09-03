BeforeAll {
    # Import the module containing the function to be tested
    . $psscriptroot\create-resourcegroup.ps1
}

Describe "Create-resourcegroup" {
    It "resource group was created successfully" {
        # Arrange
        $resourceGroupName = "TestResourceGroup"

        # Act
        New-AzResourceGroup -Name $resourceGroupName -Location "centralus"

        # Assert
        $resourceGroup = Get-AzResourceGroup -Name $resourceGroupName
        $resourceGroup.ResourceGroupName | Should -Be $resourceGroupName
    }
}