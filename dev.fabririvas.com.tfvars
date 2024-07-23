zones = {
  "dev.fabririvas.com" = {
    comment = "Domain for dev.fabririvas.com"
    tags = {
      partition = "public"
    }
  }
}

records = [
  {
    name = "dev"
    type = "A"
    ttl  = 300
    records = [
      "10.0.0.1",
    ]
  },
]