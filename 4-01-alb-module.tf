
module "alb" {
  source             = "terraform-aws-modules/alb/aws"
  version            = "7.0.0"
  name               = "my-alb"
  load_balancer_type = "application"
  vpc_id             = module.vpc.vpc_id
  subnets = [module.vpc.public_subnets[0],
  module.vpc.public_subnets[1]]
  security_groups = [module.loadbalancer_sg.this_security_group_id]
  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0 # App1 TG associated to this listener
    }
  ]
  target_groups = [
    {
      name_prefix      = "app1-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"

      health_check = {
        enabled             = true
        interval            = 30
        path                = "/app1/index.html"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
        protocol            = "HTTP"
        matcher             = "200-399"
      }
      protocol_version = "HTTP1"
      targets = {
        my_target = {
          target_id = module.ec2-instance-bastion.*.id[0]
          #          target_id = module.ec2-instance-bastion.id[0]

          port = 80
        },
        my_app1_vm2 = {
          target_id = module.ec2-instance-bastion.*.id[1]
          port      = 80
        }
      }
    }
  ]
}

