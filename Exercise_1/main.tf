# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "AKIAY43GZL4V4OCUPQXI"
  secret_key = "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"
  region     = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {

  ami           = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
  count         = 4
  tags = {
    name = "Udacity T2"
  }

}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  ami           = "ami-0aeeebd8d2ab47354"
  instance_type = "m4.large"
  count         = 2
  tags = {
    name = "Udacity M4"
  }

}
