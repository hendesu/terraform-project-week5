# terraform-project-week5




# Terraform Project

### workspace
> - i used two workspaces for this project, one for **staging** and one for **production** 
>> if you want to use two workspaces, you need to create them.
>
>>- note ! you have one workspace by default that called "**default**"
> 
#### ****so how do you create workspace:****
1. open a terminal in your ide (pycharm,vs, etc.), make sure you are in the project directory.
2. enter the command **'terraform workspace new the_name_of_the_workspace.'**
3. type the command **'terraform workspace list'** to see the list of the workspaces you have.
4. now if you want to move from one workspace to another type **'terraform workspace select the_name_of_the_workspace'**
5. if you want to delete type **'terraform workspace delete the_name_of_the_workspace'** (you cannot delete a workspace that you're working on. move to another workspace and then delete. )

### variables

- you have two types of variables files:

> variable.tf
>>in this file you keep all the vars you need to use in this project. however, some vars contains sensitive data like password and username. so if you upload the project to source control like ***github*** ....
>
>> so how do you protect the data? you can use *****variable.tfvars file*****
> 

> variable.tfvars
>> you can create .tfvars file and keep all the sensitive data in variables that match the same variables name in the variable.tf file
> >> for example: i have "pass:123" in var.tf, the value "123" is not my real password, i keep the real password in tera.tfvars under "pass:realpass". the name of the var must be the same in both files.
> 
>> after updating the vars, you need to add .tfvrs to gitignore.

---
## before !
- install terraform - https://learn.hashicorp.com/tutorials/terraform/install-cli
- Sign in with Azure CLI - https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli
---
# Installation

1. clone the repo using the command 'git clone "url"'
2. open the project in your ide.
3. open the terminal in the ide.
4. if you want to work with workspaces, you can create some (see how at the beginning of the readme.)
5. create a .tfvars file with your own values.(if you have more workspaces create one for each workspace.)
6. you can configer the resources as you like.
7. run 'terraform init' in the terminal.
8. run 'terraform plan'.
9. run 'terraform apply'
10. run 'terraform destroy' to destroy all resources on the cloud to save money.







## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.12 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.99.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_lb.load-balancer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.lb-backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_probe.check](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.connect](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |
| [azurerm_linux_virtual_machine.Appserver](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_linux_virtual_machine.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.App-network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface.main-nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_backend_address_pool_association.vm-lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_backend_address_pool_association) | resource |
| [azurerm_network_interface_security_group_association.new-merge](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.App-nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_group.Database-nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_group.main-nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_postgresql_flexible_server.postgres-server-for-staging](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |
| [azurerm_postgresql_flexible_server_configuration.postgres_off_require_secure_transport](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_configuration) | resource |
| [azurerm_postgresql_flexible_server_database.ps-db](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_database) | resource |
| [azurerm_private_dns_zone.db-dns](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_public_ip.lb-public-ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_public_ip.public-ip-new](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.App-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.Database-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.new-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.merge](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.merge-app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | n/a | `string` | `"user"` | no |
| <a name="input_machine"></a> [machine](#input\_machine) | n/a | `number` | `3` | no |
| <a name="input_machine_user"></a> [machine\_user](#input\_machine\_user) | n/a | `string` | `"tf-app"` | no |
| <a name="input_main_pass"></a> [main\_pass](#input\_main\_pass) | n/a | `string` | `"pass"` | no |
| <a name="input_main_user"></a> [main\_user](#input\_main\_user) | n/a | `string` | `"admin"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"postgres-production"` | no |
| <a name="input_pass_app"></a> [pass\_app](#input\_pass\_app) | n/a | `string` | `"abc123"` | no |
| <a name="input_pass_db"></a> [pass\_db](#input\_pass\_db) | n/a | `string` | `"password123"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of the resource group. | `string` | `"westeurope"` | no |
| <a name="input_resource_group_name_prefix"></a> [resource\_group\_name\_prefix](#input\_resource\_group\_name\_prefix) | Prefix of the resource group name. | `string` | `"staging"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
| <a name="output_resource_linux_machine_pass"></a> [resource\_linux\_machine\_pass](#output\_resource\_linux\_machine\_pass) | n/a |
| <a name="output_resource_linux_machine_user"></a> [resource\_linux\_machine\_user](#output\_resource\_linux\_machine\_user) | n/a |
| <a name="output_resource_postgresql_flexible_server_pass"></a> [resource\_postgresql\_flexible\_server\_pass](#output\_resource\_postgresql\_flexible\_server\_pass) | n/a |
| <a name="output_resource_postgresql_flexible_server_user"></a> [resource\_postgresql\_flexible\_server\_user](#output\_resource\_postgresql\_flexible\_server\_user) | n/a |
