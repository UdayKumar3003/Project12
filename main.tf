resource "aws_instance" "Ec2" {
  ami = local.ami_id_value
  instance_type = "t3.micro"
  tags = {
    Name = local.name
  }
}

terraform {
  backend "s3" {
    bucket         = "my-unique-s3bucket.uday"  # Replace with your actual S3 bucket name
    key            = "terraform123.tfstate"   # The file name in S3
    region         = "us-east-1"           # Replace with your AWS region
    encrypt        = true                  # Enables state file encryption
  }
}








