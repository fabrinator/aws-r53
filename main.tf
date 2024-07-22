#TODO:
#Crear backend
#Pasar por pipeline
module "zones" {
  source  = "terraform-aws-modules/route53/aws//modules/zones"
  version = "~> 3.0"
  providers = {
    aws = aws.infra-shared
  }
  zones = {
    "fabririvas.com" = {
      comment = "Domain for fabririvas.com"
      tags = {
        partition = "public"
      }
    }
  }
  tags = {
    ManagedBy = "Terraform"
  }
}

module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 3.0"
  zone_name = keys(module.zones.route53_zone_name)[0]
  providers = {
    aws = aws.infra-shared
  }
  records = [
    {
      name = ""
      type = "MX"
      ttl  = 300
      records = [
        "10 fabririvas.com.mx.one.com",
      ]
    },
    {
      name = ""
      type = "TXT"
      ttl =  300
      records = [
        "v=spf1 include:_custspf.one.com ~all"
      ]
    },
    {
      name           = "ed1._domainkey"
      type           = "CNAME"
      ttl            = 300
      records        = ["ed1.dkim.c420fb9ld.service.one"]
    },
    {
      name           = "ed2._domainkey"
      type           = "CNAME"
      ttl            = 300
      records        = ["ed2.dkim.c420fb9ld.service.one"]
    },
    {
      name           = "rsa1._domainkey"
      type           = "CNAME"
      ttl            = 300
      records        = ["rsa1.dkim.c420fb9ld.service.one"]
    },
    {
      name           = "rsa2._domainkey"
      type           = "CNAME"
      ttl            = 300
      records        = ["rsa2.dkim.c420fb9ld.service.one"]
    }


  ]

  depends_on = [module.zones]
}


