
# Sets global variables for this Terraform project.

variable app_name {
  default = "priya"
}

variable location {
  default = "australiaeast"
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster"
  type        = string
}

# Add other variables as needed for your infrastructure
