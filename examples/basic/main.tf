module "firewall_example" {
  source = "../../modules/firewall"

  name   = "smtn"
  labels = {}

  rules = {
    https = {
      direction = "in"
      protocol  = "tcp"
      port      = "443"
      source_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
      description = "Allow inbound encrypted http traffic."
    }
  }

  apply = {
    server1 = {
      server_id = "1"
    }
  }
}
