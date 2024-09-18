resource "azurerm_resource_group" "existing" {
  name     = var.resource_group_name
  location = var.location

  # Ensure the resource group already exists
  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_container_registry" "example" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.existing.name
  location            = var.location
  sku                 = "Basic"

  admin_enabled = true

  tags = {
    environment = "dev"
  }
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = azurerm_resource_group.existing.name
  dns_prefix          = var.aks_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }
}

output "acr_login_url" {
  value = azurerm_container_registry.example.login_server
}

output "acr_username" {
  value = azurerm_container_registry.example.admin_username
}

output "acr_password" {
  value = azurerm_container_registry.example.admin_password
  sensitive = true
}

output "aks_kubeconfig" {
  value = azurerm_kubernetes_cluster.example.kube_config.0.raw_kube_config
  sensitive = true
}
