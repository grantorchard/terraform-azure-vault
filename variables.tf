variable location {
  type = string
  default = "australiaeast"
}

variable hostname {
  type = string
  default = "vault"
}

variable description {
  type = string
  default = "Vault deployment resources"
}

variable cluster_size {
  type = number
  default = 1
}

variable deployment_name {
  type = string
  default = "vault"
}

variable admin_username {
  type = string
  default = "grant"
}

variable server_size {
  type = string
  default = "Standard_F2"
}

variable ssh_public_key {
  type = string
  default = "~/.ssh/id_rsa.pub"
}

variable slack_webhook {
  type = string
  default = ""
}
