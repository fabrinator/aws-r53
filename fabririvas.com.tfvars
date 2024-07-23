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
      "ns-1195.awsdns-21.org",
      "ns-18.awsdns-02.com",
      "ns-1569.awsdns-04.co.uk",
      "ns-911.awsdns-49.net"
    ]
  },
]