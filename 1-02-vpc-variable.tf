variable "vpc_name" {
  type    = string
  default = "my_vpc"
}
variable "vpc_availability_zone" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "vpc_private_subnet" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}
variable "vpc_public_subnet" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "enable_nat_gateway" {
  type    = bool
  default = true

}
variable "single_nat_gateway" {
  type    = bool
  default = true

}

variable "vpc_tag_name" {
  type    = string
  default = "my_vpc"
}
