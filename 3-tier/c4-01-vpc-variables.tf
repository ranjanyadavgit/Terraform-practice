
# vpc name
variable "vpc_name" {
   description="name of the vpc'
   type = string
   default ="myvpc"
}

#cidr block
variable "cidr_block" {
   descrition = "cidr block value"
   type = string
   default = "10.0.0.0/16"
}

#availability zone
variable "vpc_availability_zone" {
   description="value of vpc availability zone"
   type = list(string)
   default = ["us-east-1a","us-east-1b"]
}

# Public subnet
variable "public_subnet" { 
  description="the value of public subnet"
  type = list(string)
  default = ["10.0.0.0/24",10.0.0.1/24"]
  } 

# Private Subnet
             
variable "private_subnet" {
  description ="the value of private subnet"
  type = list(string)
  default = ["10.0.101.0/24","10.0.102.0"]
}

variable "database_subnet" {
  description="the value of database subnet"
  type = list(string)
  default=["10.0.151.0/24","10.0.152.0"]
}
             
variable "vpc_create_database_subnet_group" {
  description="the value of database subnet group"
  type = bool
  default = true
}

variable "vpc_create_database_subnet_route_table {  
 description="the value of the database subnet route table"
 type = bool
 default = true
}

variable "vpc_enable_nat_gateway" {
 description="the value of the vpc nat gateway"
 type = bool
 default = true
}

#vpc single nat gateway

variable "vpc_subnet_nat_gateway" {
 description="the value of subnet nat gateway"
 type = bool
 default = true
}
  



             
             
               
             
             

             
           
  



















            
