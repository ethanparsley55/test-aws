locals {
  ec2_name      = "mib-ec2-${var.basic_info.application}-${var.basic_info.environment}"
}

data "aws_ami" "ami" {
  most_recent   = true
  owners        = ["${var.ami_owner}"]

  filter {
    name        = "name"
    values      = ["${var.ami_name}"]
  }

  filter {
    name        = "root-device-type"
    values      = ["${var.ami_root_type}"]
  }

  filter {
    name        = "virtualization-type"
    values      = ["${var.ami_virtualization_type}"]
  }
}

resource "aws_instance" "ec2_instance" {
  ami             = data.aws_ami.ami.id
  instance_type   = var.instance_type

  tags  = {
    Name          = local.ec2_name
  }
}