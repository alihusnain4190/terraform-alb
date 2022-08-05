module "ec2-instance-bastion" {
  source        = "terraform-aws-modules/ec2-instance/aws"
  version       = "3.5.0"
  name          = var.ec2_instance_name
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  #availability_zone      = module.vpc.vpc_availability_zone
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]
  subnet_id              = element(module.vpc.public_subnets, 2)
  user_data              = file("${path.module}/app1-install.sh")
  count                  = 2
}




