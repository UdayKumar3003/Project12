resource "aws_instance" "Ec2" {
  ami = local.ami_id_value
  instance_type = "t3.micro"
}







