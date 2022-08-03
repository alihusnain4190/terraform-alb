module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"


  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = [var.vpc_availability_zone[0], var.vpc_availability_zone[1]]
  private_subnets = [var.vpc_private_subnet[0], var.vpc_private_subnet[1]]
  public_subnets  = [var.vpc_public_subnet[0], var.vpc_public_subnet[1]]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
