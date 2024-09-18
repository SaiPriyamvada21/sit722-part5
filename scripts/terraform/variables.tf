# Sets global variables for this Terraform project.

variable app_name {
  default = "priya5"
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

variable kubernetes_version { 
  default = "1.30.3"   
}