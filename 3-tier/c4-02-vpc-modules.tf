
modules "vpc" {
  source = "terraform-aws-modules/aws/vpc"
  version = "6.0.1"
  }

# VPC Basic Details
  name = "${local.name}-${var.vpc_name}"
  cidr = var.cidr_block
  availability_zone = var.vpc_availability_zone
  public_subnets = var.public_subnet
  private_subnets = var.private_subnet

#Database Subnet
  database_subnet = var.database_subnet
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  enable_vpc_nat_gateway=true
  enable_vpc_subnet_gateway=true
