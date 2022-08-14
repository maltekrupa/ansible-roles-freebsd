log_level = "INFO"
datacenter = "dc1"

server {
  enabled = true
  bootstrap_expect = 3
  server_join {
    retry_join = ["10.0.0.100:4648"]
  }
}

client {
  enabled = false
}
