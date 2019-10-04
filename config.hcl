storage "postgresql" {
  connection_url = "postgres://vaultuser:123456@localhost:5432/vault?sslmode=disable"
}

listener "tcp" {
 address     = "127.0.0.1:8200"
 tls_disable = 1
}

