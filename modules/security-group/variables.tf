variable "vpc_id" {
  type = string
}

variable "environment" {
  type = string
}

variable "allowed_http_cidr" {
  type = list(string)
}

variable "allowed_ssh_cidr" {
  type = list(string)
}
