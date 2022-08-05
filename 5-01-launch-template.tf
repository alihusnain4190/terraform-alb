resource "aws_launch_template" "ali-template" {
  name = var.aws_launch_template_name

  image_id               = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_types
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]
  key_name               = var.instance_keypair
  user_data              = filebase64("${path.module}/app1-install.sh")

  /*block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size           = 8
      delete_on_termination = true
      volume_type           = "gp2"
    }

  }
    */


}
