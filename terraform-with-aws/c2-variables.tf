variable "aws_region" {

  description = "region in which aws resource in which to be created"
  type = string
  default = "us-east-1"
}

variable "aws_instance" {
    description = "value of aws instance to be created"
    type= string
    default="t2.micro"  
}

variable "aws_key_pair" {
    description = "value of aws key pair to be created"
    type=string
    default="terraform-key" 
}

