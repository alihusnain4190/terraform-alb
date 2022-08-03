output "bastion_publicIP" {
  description = "bastion host public IP address"
  value       = module.ec2-instance-bastion.public_ip
}
output "bastion_privateIP" {
  description = "bastion host private IP"
  value       = module.ec2-instance-bastion.private_ip
}
output "ec2-instance-bastion" {
  description = "Ec2 instance ID private"
  value       = module.ec2-instance-bastion.id
}


/*Pivate instance 
output "ec2_instance_publicIP" {
  description = "bastion host public IP address"
  value       = module.ec2_instance.public_ip
}
output "ec2_instance_privateIP" {
  description = "ec2_instance_privateIP private IP"
  value       = module.ec2_instance.private_ip
}

output "ec2_instance_id" {
  description = "Ec2 instance ID private"
  value       = module.ec2_instance.id
}
*/
