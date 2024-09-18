output "acr_login_url" {
  description = "The login URL of the Azure Container Registry"
  value       = azurerm_container_registry.example.login_server
}

output "acr_username" {
  description = "The username for the Azure Container Registry"
  value       = azurerm_container_registry.example.admin_username
}

output "acr_password" {
  description = "The password for the Azure Container Registry"
  value       = azurerm_container_registry.example.admin_password
  sensitive   = true
}

output "aks_kubeconfig" {
  description = "The kubeconfig for the Azure Kubernetes Service cluster"
  value       = azurerm_kubernetes_cluster.example.kube_config.0.raw_kube_config
  sensitive   = true
}
