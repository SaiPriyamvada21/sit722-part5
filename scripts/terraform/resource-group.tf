#
# Creates a resource group for FlixTube in your Azure account.
#
resource "azurerm_resource_group" "priya" {
  name     = "priya"
  location = "eastus"
}