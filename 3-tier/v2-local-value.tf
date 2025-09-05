locals {
    owners = var.business_division
    evironment = var.evironment
  name = "${var.business_division}-${var.environment}"
}

common_tags {
      owners = local.owners
      environment = local.environment
}
    
