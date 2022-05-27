variable "network_cidr" {
  type  = string
  default = "192.168.0.0/16"
}

variable "region" {
  type = string
  default = "ap-south-1"
}

variable "subnet_cidr" {

type = list(string)
default = [ "192.168.0.0/24","192.168.1.0/24","192.168.2.0/24","192.168.3.0/24" ]
}

variable "az-a" {
  type = string 
  default = "ap-south-1a"
}

variable "az-b" {
  type = string
  default = "ap-south-1b"
}