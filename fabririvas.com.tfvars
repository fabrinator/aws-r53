zones = {
  "fabririvas.com" = {
    comment = "Domain for fabririvas.com"
    tags = {
      partition = "public"
    }
  }
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
  },
  {
    name = "dev"
    type = "NS"
    ttl  = 300
    records = [
      "ns-857.awsdns-43.net",
      "ns-253.awsdns-31.com",
      "ns-1423.awsdns-49.org",
      "ns-1980.awsdns-55.co.uk"
    ]
  },
]