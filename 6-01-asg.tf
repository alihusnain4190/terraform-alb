/*resource "aws_placement_group" "test" {
  name     = "test"
  strategy = "cluster"
}*/

resource "aws_autoscaling_group" "ali" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id = aws_launch_template.ali-template.id

    version = "$Latest"
  }
}
