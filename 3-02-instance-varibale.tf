variable "ec2_instance_name" {
  type    = string
  default = "my_web"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "instance_keypair" {
  type    = string
  default = "k8-key"
}
variable "private_instance" {
  type    = string
  default = "ali-private"
}

# AWS EC2 Private Instance Count
variable "private_instance_count" {
  description = "AWS EC2 Private Instances Count"
  type        = number
  default     = 1
}
