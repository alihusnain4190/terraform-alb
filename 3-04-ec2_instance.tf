/*module "ec2_instance" {
  source        = "terraform-aws-modules/ec2-instance/aws"
  version       = "3.5.0"
  depends_on    = [module.vpc] # VERY VERY IMPORTANT else userdata webserver provisioning will fail
  name          = var.private_instance
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  #availability_zone      = module.vpc.vpc_availability_zone
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.this_security_group_id]
  subnet_ids = [
    module.vpc.private_subnets[0],
    module.vpc.private_subnets[1]
  ]
  count = 2
  tags = {
    "Name" = "Count-Demo-${count.index}"
  }
}

*/


