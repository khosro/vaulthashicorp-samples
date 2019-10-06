provider "postgresql" {
  alias    = "pg1"
  host     = "127.0.0.1"
  username = "terraformuser"
  password = "123456"
  sslmode  = "disable"
}


resource "postgresql_database" "terraform" {
  provider = "postgresql.pg1"
  name     = "terraform"
}

 