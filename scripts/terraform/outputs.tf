output "acr_login_url" {
  value = azurerm_container_registry.container_registry.login_server
  description = "The login server URL for the ACR."
}

output "acr_username" {
  value = azurerm_container_registry.container_registry.admin_username
  description = "The admin username for the ACR."
}

output "acr_password" {
  value = azurerm_container_registry.container_registry.admin_password
  
  sensitive = true  
  description = "The admin password for the ACR."
}


output "aks_kubeconfig" {
  value       = base64encode(azurerm_kubernetes_cluster.cluster.kube_config)
  
  sensitive   = true
  description = "The kubeconfig for AKS in base64-encoded format."
}