variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "allowed_http_cidr" {
  type = list(string)
}

variable "allowed_ssh_cidr" {
  type = list(string)
}
