##############################################################################
# Outputs File
#
# Expose the outputs you want your users to see after a successful 
# `terraform apply` or `terraform output` command. You can add your own text 
# and include any data from the state file. Outputs are sorted alphabetically;
# use an underscore _ to move things to the bottom. In this example we're 
# providing instructions to the user on how to connect to their own custom 
# demo environment.

#output "file" {
#  value = "${data.template_file.consulconfig.rendered}"
#}

output "rg_name" {
  value = "${azurerm_resource_group.windows-rg.name}"
  description = "Name of the resource group created by terraform"
}

output "vnet_name" {
  value = "${azurerm_virtual_network.windows-vnet.name}"
  description = "Name of the Virtual Network created by terraform"
}



output "subnet_name" {
  value = "${azurerm_subnet.windows-subnet.name}"
  description = "Name of the Subnet created by terraform"
}

output "subnet_address_prefix" {
  value = "${azurerm_subnet.windows-subnet.address_prefix}"
  description = "Address Prefix of the Subnet created by terraform"
}

output "vm_name" {
  value = compact(coalescelist(azurerm_virtual_machine.web_server.*.name, [""]))[0]
  description = "Name of the 1st Virtual Machines created by terraform"
}

output "vm_public_ip" {
  value =  compact(coalescelist(azurerm_public_ip.windows-pip.*.ip_address, [""]))[0]  
  description = "1st Public IP Addresses of Virtual Machines created by terraform"
}
  
