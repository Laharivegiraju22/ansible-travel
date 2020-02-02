provider "aws" {
  access_key = "Access_Key"
  secret_key = "Secret_Key"
  region     = "us-west-2"
}
resource "aws_instance" "example" {
  ami           = "ami-0994c095691a46fb5"
  instance_type = "t2.micro"
}
