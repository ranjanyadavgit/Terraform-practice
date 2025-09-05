
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

  enable_nat_gateway=true
  enable_subnet_gateway=true

tags=local.common_tags
vpc_tags=local.vpc_tags

public_subnet_tags {

 Type = "Public Subnet"
}

private_subnet_tags {

 Type = "Private Subnet"

}

database_subnet_tags {

 Type= "Private database_subnet"

}
