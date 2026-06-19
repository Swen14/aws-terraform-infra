variable "aws_region" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidr" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "allowed_http_cidr" {
  type = list(string)
}

variable "allowed_ssh_cidr" {
  type = list(string)
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}
