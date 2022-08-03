output "vpc_id" {
  value = module.vpc.vpc_id
}
output "vpc_availability_zone" {
  value = module.vpc.azs
}

output "vpc_public_subnet" {
  value = module.vpc.public_subnets
}

#output "vpc_private_subnet" {
# value=module.vpc.private_subnets
#}
