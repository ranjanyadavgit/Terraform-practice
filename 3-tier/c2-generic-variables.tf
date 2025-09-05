
variable "aws_region" {
  description = "the value of aws region"
  default = "us-east-1"
  }

variable "environment" {
  description="the value of the environment"
  type=string
   default="stage"
  }

variable "business" {
  description="the value of the business segment"
  type=string
  default="SAP"
}
