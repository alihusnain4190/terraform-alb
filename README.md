# Terraform ALB


# Introduction 
For Hand on of Application load balancer - Create [AWS Application Load Balancer Terraform Module](https://registry.terraform.io/modules/terraform-aws-modules/alb/aws/latest)

### Step 1 
    creating a VPC for that I am using aws VPC module[ https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest ]

        - ** It is creating a 2 public subnet and 2 private subnet.
        - ** For internet traffic enable internet gateway

### step 2 
    Using securty group module [https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/4.9.0]
        - ** Setting 2 security group 1 for Application load balancer and 1 for Ec2 instance 
        - ** Setting port 80 for HTTP and port 22 for SSH.

### Step 3 
    Using Ec2 module for creating instance [https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/4.1.1]
        - ** To get the latest ami using data source of AMI
        - ** Creating instnce with instance type t2.micro
        - ** at the launch level installing a script which is place in app1-install.sh file.



### Step 4
    At the end using ALB module [https://registry.terraform.io/modules/terraform-aws-modules/alb/aws/latest]