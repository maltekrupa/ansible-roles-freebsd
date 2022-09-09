log_level = "INFO"
datacenter = "dc1"

server {
  enabled = true
  bootstrap_expect = 3
  server_join {
    retry_join = ["{{ nomad_server_join_address }}:4648"]
  }
}

client {
  enabled = false
}
