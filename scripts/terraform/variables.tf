variable "client_id" {
  description = "The Client ID for the Azure service principal"
  type        = string
}

variable "client_secret" {
  description = "The Client Secret for the Azure service principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for the Azure subscription"
  type        = string
}

variable "subscription_id" {
  description = "The Subscription ID for the Azure subscription"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the existing resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US" # Adjust this as needed
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster"
  type        = string
}

# Add other variables as needed for your infrastructure
