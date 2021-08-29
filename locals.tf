
data "http" "ip" {
  url = "https://api.ipify.org?format=json"
}

locals {
  cidr_block = "10.0.0.0/16"
  ip         = jsondecode(data.http.ip.body).ip
  pubkey     = file("~/.ssh/id_rsa.pub")
}
