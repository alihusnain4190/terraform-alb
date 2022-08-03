vpc_name              = "ali_vpc"
vpc_availability_zone = ["us-east-1a", "us-east-1b"]
vpc_cidr              = "10.0.0.0/16"
vpc_private_subnet    = ["10.0.101.0/24", "10.0.102.0/24"]
vpc_public_subnet     = ["10.0.1.0/24", "10.0.2.0/24"]
enable_nat_gateway    = true
single_nat_gateway    = true
