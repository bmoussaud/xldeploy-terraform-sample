##############################################################################
# Variables Files
# 
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "env" {
  description = "Environnement"
  default     = "dev"
}

variable "resource_group" {
  description = "The name of your Azure Resource Group."
  default     = "Azure-Vault-BMO-Demo"
}

variable "demo_prefix" {
  description = "This prefix will be included in the name of some resources."
  default     = "xlddemo"
}

variable "hostname" {
  description = "VM hostname. Used for local hostname, DNS, and storage-related names."
  default     = "bmo-test"
}

variable "location" {
  description = "The region where the virtual network is created."
  default     = "francecentral"
}

variable "virtual_network_name" {
  description = "The name for your virtual network."
  default     = "bmo-vn"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "vm_size" {
  description = "Specifies the size of the virtual machine."
  default     = "Standard_D2s_v3"
}

variable "admin_username" {
  description = "Administrator user name"
  default     = "xebialabs"
}

variable "admin_password" {
  description = "Administrator password"
  default     = "P4sswOrd"
}

variable "servers" {
  description = "Number of servers to deploy" 
}

variable "subscription_id" {
  description="Azure subscription_id"
}
variable "tenant_id" {
  description="Azure Tenant_id"
}



