locals {
  ami_id_value = data.aws_ami.ami_id.id
}

data "aws_ami" "ami_id"{
  most_recent = true
  owners = ["amazon"]

  filter{
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

locals {
  name = "babuuu_server"
}

