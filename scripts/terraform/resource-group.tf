#
# Creates a resource group for FlixTube in your Azure account.
#
resource "azurerm_resource_group" "priya" {
  name     = "priya"
  location = "eastus"
}
resource "azurerm_role_assignment" "role_assignment" {
  principal_id   = "6f8927b1-3336-4d58-8537-dded9616f4f5"
  role_definition_name = "Owner"
  scope          = "/subscriptions/6241e51c-c2f5-4ed1-98c5-16824bbdeafa/resourceGroups/priya"
}
