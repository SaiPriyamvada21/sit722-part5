resource "azurerm_resource_group" "rg" {
  name     = "library-resources"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "library-k8s"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "librarydns"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
