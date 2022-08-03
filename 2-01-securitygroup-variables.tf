variable "security_bastion_group_name" {
  type    = string
  default = "ali-bastion-sg"
}
variable "security_private_group_name" {
  type    = string
  default = "ali-private-sg"
}
variable "bastion_sg_ingress_cidr" {
  type    = string
  default = "0.0.0.0/0"
}
/*variable "bastion_sg_engress_cidr" {
  type    = string
  default = "0.0.0.0/0"
}*/
