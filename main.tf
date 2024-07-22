#TODO:
#Crear backend
#Pasar por pipeline
module "zones" {
  source  = "terraform-aws-modules/route53/aws//modules/zones"
  version = "~> 3.0"
  zones = var.zones
  tags = {
    ManagedBy = "Terraform"
  }
}

module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 3.0"
  zone_name = keys(module.zones.route53_zone_name)[0]
  records = var.records
  depends_on = [module.zones]
}


