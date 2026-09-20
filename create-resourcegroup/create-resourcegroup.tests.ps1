BeforeAll {
    # Import the module containing the function to be tested
    . $psscriptroot\create-resourcegroup.ps1
}

Describe "new-testresourcegroup" {
    It "tests that a resource group was created successfully" {
        # Arrange
        $resourceGroupName = "TestResourceGroup"

        # Act
        New-AzResourceGroup -Name $resourceGroupName -Location "centralus"

        # Assert
        $resourceGroup = Get-AzResourceGroup -Name $resourceGroupName
        $resourceGroup.ResourceGroupName | Should -Be $resourceGroupName
        }

    it "tests that a resource group was not created when the name is invalid" {
        # Arrange
        $invalidResourceGroupName = "Invalid"

        # Act
        { New-AzResourceGroup -Name $invalidResourceGroupName -Location "centralus" } | Should -Throw
    }

    it "tests that a resource group was not created when the name is null" {
        # Arrange
        $nullResourceGroupName = $null

        # Act
        { New-AzResourceGroup -Name $nullResourceGroupName -Location "centralus" } | Should -Throw
    }
}