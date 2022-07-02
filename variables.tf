variable "__resource_group_name_prefix__" {
  default       = "staging"
  description   = "Prefix of the resource group name."
}

variable "resource_group_location" {
  default = "westeurope"
  description   = "Location of the resource group."
}

variable "__machine__" {
  default = 3
}

variable "__name__" {
  default = "postgres-production"
}

variable "__pass_db__" {
  default = "password123"
  type = string
  sensitive = true
}

variable "__pass_app__" {
  default = "abc123"
  type = string
  sensitive = true
}

variable "__machine_user__" {
  default = "tf-app"
  type = string
  sensitive = true
}

variable "__db_user__" {
  default = "user"
  type = string
  sensitive = true
}

variable "__main_user__" {
  default = "admin"
  type = string
  sensitive = true
}

variable "__main_pass__" {
  default = "pass"
  type = string
  sensitive = true
}

variable "__database_name__" {
  default = "postgresql-server-for-staging"
  type = string
  sensitive = true
}

