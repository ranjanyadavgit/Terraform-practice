Lenovo@DESKTOP-M5DT73G MINGW64 ~/Terraform_aws/06/v2-vpc-module-standardizd (feature/new)
$ terraform plan

Changes to Outputs:
  + AZS = [
      + "us-east-1a",
      + "us-east-1b",
    ]

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.
╷
│ Error: invalid AWS Region: us-east-1b
│
│   with provider["registry.terraform.io/hashicorp/aws"],
│   on c1-versions.tf line 15, in provider "aws":
│   15: provider "aws" {
│
╵

Lenovo@DESKTOP-M5DT73G MINGW64 ~/Terraform_aws/06/v2-vpc-module-standardizd (feature/new)
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.vpc.aws_db_subnet_group.database[0] will be created
  + resource "aws_db_subnet_group" "database" {
      + arn                     = (known after apply)
      + description             = "Database subnet group for HR-stage-myvpc"
      + id                      = (known after apply)
      + name                    = "hr-stage-myvpc"
      + name_prefix             = (known after apply)
      + region                  = "us-east-1"
      + subnet_ids              = (known after apply)
      + supported_network_types = (known after apply)
      + tags                    = {
          + "Name"        = "hr-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                = {
          + "Name"        = "hr-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                  = (known after apply)
    }

  # module.vpc.aws_default_network_acl.this[0] will be created
  + resource "aws_default_network_acl" "this" {
      + arn                    = (known after apply)
      + default_network_acl_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + tags                   = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all               = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                 = (known after apply)

      + egress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }
      + egress {
          + action          = "allow"
          + cidr_block      = "0.0.0.0/0"
          + from_port       = 0
          + protocol        = "-1"
          + rule_no         = 100
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }

      + ingress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }
      + ingress {
          + action          = "allow"
          + cidr_block      = "0.0.0.0/0"
          + from_port       = 0
          + protocol        = "-1"
          + rule_no         = 100
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }
    }

  # module.vpc.aws_default_route_table.default[0] will be created
  + resource "aws_default_route_table" "default" {
      + arn                    = (known after apply)
      + default_route_table_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + route                  = (known after apply)
      + tags                   = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all               = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                 = (known after apply)

      + timeouts {
          + create = "5m"
          + update = "5m"
        }
    }

  # module.vpc.aws_default_security_group.this[0] will be created
  + resource "aws_default_security_group" "this" {
      + arn                    = (known after apply)
      + description            = (known after apply)
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all               = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + arn                  = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = "vpc"
      + id                   = (known after apply)
      + instance             = (known after apply)
      + ipam_pool_id         = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + ptr_record           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + region               = "us-east-1"
      + tags                 = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all             = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + region   = "us-east-1"
      + tags     = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.this[0] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + region                             = "us-east-1"
      + secondary_allocation_ids           = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                           = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + region                 = "us-east-1"
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + region                 = "us-east-1"
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route_table.database[0] will be created
  + resource "aws_route_table" "database" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + region           = "us-east-1"
      + route            = (known after apply)
      + tags             = {
          + "Name"        = "HR-stage-myvpc-db"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all         = {
          + "Name"        = "HR-stage-myvpc-db"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + region           = "us-east-1"
      + route            = (known after apply)
      + tags             = {
          + "Name"        = "HR-stage-myvpc-private"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all         = {
          + "Name"        = "HR-stage-myvpc-private"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + region           = "us-east-1"
      + route            = (known after apply)
      + tags             = {
          + "Name"        = "HR-stage-myvpc-public"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all         = {
          + "Name"        = "HR-stage-myvpc-public"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[0] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[1] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.database[0] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.151.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1a"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1a"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.database[1] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.152.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1b"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1b"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1a"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1a"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1b"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1b"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.101.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1a"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1a"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.102.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1b"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1b"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + region                               = "us-east-1"
      + tags                                 = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                             = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
    }

Plan: 25 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + AZS             = [
      + "us-east-1a",
      + "us-east-1b",
    ]
  + nat_public_ips  = [
      + (known after apply),
    ]
  + private_subnets = [
      + (known after apply),
      + (known after apply),
    ]
  + public_subnets  = [
      + (known after apply),
      + (known after apply),
    ]
  + vpc_cidr_block  = "10.0.0.0/16"
  + vpc_id          = (known after apply)

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

Lenovo@DESKTOP-M5DT73G MINGW64 ~/Terraform_aws/06/v2-vpc-module-standardizd (feature/new)
$ terraform apply --auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.vpc.aws_db_subnet_group.database[0] will be created
  + resource "aws_db_subnet_group" "database" {
      + arn                     = (known after apply)
      + description             = "Database subnet group for HR-stage-myvpc"
      + id                      = (known after apply)
      + name                    = "hr-stage-myvpc"
      + name_prefix             = (known after apply)
      + region                  = "us-east-1"
      + subnet_ids              = (known after apply)
      + supported_network_types = (known after apply)
      + tags                    = {
          + "Name"        = "hr-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                = {
          + "Name"        = "hr-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                  = (known after apply)
    }

  # module.vpc.aws_default_network_acl.this[0] will be created
  + resource "aws_default_network_acl" "this" {
      + arn                    = (known after apply)
      + default_network_acl_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + tags                   = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all               = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                 = (known after apply)

      + egress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }
      + egress {
          + action          = "allow"
          + cidr_block      = "0.0.0.0/0"
          + from_port       = 0
          + protocol        = "-1"
          + rule_no         = 100
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }

      + ingress {
          + action          = "allow"
          + from_port       = 0
          + ipv6_cidr_block = "::/0"
          + protocol        = "-1"
          + rule_no         = 101
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }
      + ingress {
          + action          = "allow"
          + cidr_block      = "0.0.0.0/0"
          + from_port       = 0
          + protocol        = "-1"
          + rule_no         = 100
          + to_port         = 0
            # (1 unchanged attribute hidden)
        }
    }

  # module.vpc.aws_default_route_table.default[0] will be created
  + resource "aws_default_route_table" "default" {
      + arn                    = (known after apply)
      + default_route_table_id = (known after apply)
      + id                     = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + route                  = (known after apply)
      + tags                   = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all               = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                 = (known after apply)

      + timeouts {
          + create = "5m"
          + update = "5m"
        }
    }

  # module.vpc.aws_default_security_group.this[0] will be created
  + resource "aws_default_security_group" "this" {
      + arn                    = (known after apply)
      + description            = (known after apply)
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + region                 = "us-east-1"
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all               = {
          + "Name"        = "HR-stage-myvpc-default"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                 = (known after apply)
    }

  # module.vpc.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + arn                  = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = "vpc"
      + id                   = (known after apply)
      + instance             = (known after apply)
      + ipam_pool_id         = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + ptr_record           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + region               = "us-east-1"
      + tags                 = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all             = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + region   = "us-east-1"
      + tags     = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.this[0] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id                      = (known after apply)
      + association_id                     = (known after apply)
      + connectivity_type                  = "public"
      + id                                 = (known after apply)
      + network_interface_id               = (known after apply)
      + private_ip                         = (known after apply)
      + public_ip                          = (known after apply)
      + region                             = "us-east-1"
      + secondary_allocation_ids           = (known after apply)
      + secondary_private_ip_address_count = (known after apply)
      + secondary_private_ip_addresses     = (known after apply)
      + subnet_id                          = (known after apply)
      + tags                               = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                           = {
          + "Name"        = "HR-stage-myvpc-us-east-1a"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + region                 = "us-east-1"
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + region                 = "us-east-1"
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route_table.database[0] will be created
  + resource "aws_route_table" "database" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + region           = "us-east-1"
      + route            = (known after apply)
      + tags             = {
          + "Name"        = "HR-stage-myvpc-db"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all         = {
          + "Name"        = "HR-stage-myvpc-db"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + region           = "us-east-1"
      + route            = (known after apply)
      + tags             = {
          + "Name"        = "HR-stage-myvpc-private"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all         = {
          + "Name"        = "HR-stage-myvpc-private"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + region           = "us-east-1"
      + route            = (known after apply)
      + tags             = {
          + "Name"        = "HR-stage-myvpc-public"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all         = {
          + "Name"        = "HR-stage-myvpc-public"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[0] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[1] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + region         = "us-east-1"
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.database[0] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.151.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1a"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1a"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.database[1] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.152.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1b"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-db-us-east-1b"
          + "Type"        = "Private Database subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1a"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1a"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1b"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-private-us-east-1b"
          + "Type"        = "Private Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.101.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1a"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1a"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.102.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags                                           = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1b"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                                       = {
          + "Name"        = "HR-stage-myvpc-public-us-east-1b"
          + "Type"        = "Public Subnets"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + region                               = "us-east-1"
      + tags                                 = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
      + tags_all                             = {
          + "Name"        = "HR-stage-myvpc"
          + "environment" = "stage"
          + "owners"      = "HR"
        }
    }

Plan: 25 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + AZS             = [
      + "us-east-1a",
      + "us-east-1b",
    ]
  + nat_public_ips  = [
      + (known after apply),
    ]
  + private_subnets = [
      + (known after apply),
      + (known after apply),
    ]
  + public_subnets  = [
      + (known after apply),
      + (known after apply),
    ]
  + vpc_cidr_block  = "10.0.0.0/16"
  + vpc_id          = (known after apply)
module.vpc.aws_vpc.this[0]: Creating...
module.vpc.aws_vpc.this[0]: Still creating... [00m10s elapsed]
module.vpc.aws_vpc.this[0]: Creation complete after 16s [id=vpc-04bbd4637b54e3b63]
module.vpc.aws_route_table.private[0]: Creating...
module.vpc.aws_default_route_table.default[0]: Creating...
module.vpc.aws_subnet.public[0]: Creating...
module.vpc.aws_subnet.public[1]: Creating...
module.vpc.aws_route_table.public[0]: Creating...
module.vpc.aws_default_security_group.this[0]: Creating...
module.vpc.aws_subnet.private[1]: Creating...
module.vpc.aws_subnet.private[0]: Creating...
module.vpc.aws_route_table.database[0]: Creating...
module.vpc.aws_default_network_acl.this[0]: Creating...
module.vpc.aws_default_route_table.default[0]: Creation complete after 1s [id=rtb-01533207901ba92bc]
module.vpc.aws_internet_gateway.this[0]: Creating...
module.vpc.aws_route_table.private[0]: Creation complete after 2s [id=rtb-045501c95235946cf]
module.vpc.aws_subnet.database[0]: Creating...
module.vpc.aws_route_table.public[0]: Creation complete after 2s [id=rtb-099d2f5cf9e1d8fb1]
module.vpc.aws_subnet.database[1]: Creating...
module.vpc.aws_subnet.private[0]: Creation complete after 2s [id=subnet-03453bffbc0dc24ad]
module.vpc.aws_subnet.public[0]: Creation complete after 2s [id=subnet-0735283dc0a120420]
module.vpc.aws_subnet.public[1]: Creation complete after 2s [id=subnet-00f1663b9c5937555]
module.vpc.aws_subnet.private[1]: Creation complete after 2s [id=subnet-020155c1faac6cd52]
module.vpc.aws_route_table_association.public[0]: Creating...
module.vpc.aws_route_table_association.public[1]: Creating...
module.vpc.aws_route_table_association.private[1]: Creating...
module.vpc.aws_route_table_association.private[0]: Creating...
module.vpc.aws_route_table.database[0]: Creation complete after 2s [id=rtb-0cda4c47b79856081]
module.vpc.aws_internet_gateway.this[0]: Creation complete after 2s [id=igw-036bb37a154d04a73]
module.vpc.aws_eip.nat[0]: Creating...
module.vpc.aws_route.public_internet_gateway[0]: Creating...
module.vpc.aws_route_table_association.private[1]: Creation complete after 1s [id=rtbassoc-0d813d54f9eef49aa]
module.vpc.aws_route_table_association.private[0]: Creation complete after 1s [id=rtbassoc-066f9c6f571b63ea2]
module.vpc.aws_route_table_association.public[1]: Creation complete after 1s [id=rtbassoc-0efa4b0ab2613bbf3]
module.vpc.aws_route_table_association.public[0]: Creation complete after 1s [id=rtbassoc-0b38a52231c1b4c03]
module.vpc.aws_subnet.database[0]: Creation complete after 2s [id=subnet-0d6d3df9e0ac39061]
module.vpc.aws_subnet.database[1]: Creation complete after 2s [id=subnet-0820be16cdd4b2720]
module.vpc.aws_route_table_association.database[0]: Creating...
module.vpc.aws_route_table_association.database[1]: Creating...
module.vpc.aws_db_subnet_group.database[0]: Creating...
module.vpc.aws_default_network_acl.this[0]: Creation complete after 4s [id=acl-0a644d4f6c67b1e48]
module.vpc.aws_default_security_group.this[0]: Creation complete after 4s [id=sg-025e163ee26537dba]
module.vpc.aws_route.public_internet_gateway[0]: Creation complete after 2s [id=r-rtb-099d2f5cf9e1d8fb11080289494]
module.vpc.aws_eip.nat[0]: Creation complete after 2s [id=eipalloc-0cf5784a117214c9e]
module.vpc.aws_route_table_association.database[0]: Creation complete after 1s [id=rtbassoc-02de9223c2574dd31]
module.vpc.aws_nat_gateway.this[0]: Creating...
module.vpc.aws_route_table_association.database[1]: Creation complete after 1s [id=rtbassoc-011b7e91a7197744a]
module.vpc.aws_db_subnet_group.database[0]: Creation complete after 2s [id=hr-stage-myvpc]
module.vpc.aws_nat_gateway.this[0]: Still creating... [00m10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [00m20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [00m30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [00m40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [00m50s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [01m00s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [01m10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [01m20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [01m30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [01m40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Creation complete after 1m48s [id=nat-00055af9519de1b08]
module.vpc.aws_route.private_nat_gateway[0]: Creating...
module.vpc.aws_route.private_nat_gateway[0]: Creation complete after 2s [id=r-rtb-045501c95235946cf1080289494]

Apply complete! Resources: 25 added, 0 changed, 0 destroyed.

Outputs:

AZS = tolist([
  "us-east-1a",
  "us-east-1b",
])
nat_public_ips = tolist([
  "54.205.166.101",
])
private_subnets = [
  "subnet-0735283dc0a120420",
  "subnet-00f1663b9c5937555",
]
public_subnets = [
  "subnet-03453bffbc0dc24ad",
  "subnet-020155c1faac6cd52",
]
vpc_cidr_block = "10.0.0.0/16"
vpc_id = "vpc-04bbd4637b54e3b63"

Lenovo@DESKTOP-M5DT73G MINGW64 ~/Terraform_aws/06/v2-vpc-module-standardizd (feature/new)
$ terraform state list
module.vpc.aws_db_subnet_group.database[0]
module.vpc.aws_default_network_acl.this[0]
module.vpc.aws_default_route_table.default[0]
module.vpc.aws_default_security_group.this[0]
module.vpc.aws_eip.nat[0]
module.vpc.aws_internet_gateway.this[0]
module.vpc.aws_nat_gateway.this[0]
module.vpc.aws_route.private_nat_gateway[0]
module.vpc.aws_route.public_internet_gateway[0]
module.vpc.aws_route_table.database[0]
module.vpc.aws_route_table.private[0]
module.vpc.aws_route_table.public[0]
module.vpc.aws_route_table_association.database[0]
module.vpc.aws_route_table_association.database[1]
module.vpc.aws_route_table_association.private[0]
module.vpc.aws_route_table_association.private[1]
module.vpc.aws_route_table_association.public[0]
module.vpc.aws_route_table_association.public[1]
module.vpc.aws_subnet.database[0]
module.vpc.aws_subnet.database[1]
module.vpc.aws_subnet.private[0]
module.vpc.aws_subnet.private[1]
module.vpc.aws_subnet.public[0]
module.vpc.aws_subnet.public[1]
module.vpc.aws_vpc.this[0]
