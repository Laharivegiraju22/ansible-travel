variable "key_name" {
  default = "devops-my-aws-keypair"
}

variable "pvt_key" {
  default = "/root/.ssh/amit-personal-aws.pem"
}

variable "us-east-zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "sg-id" {
  default = "sg-00c3c981ea2a2ad80"
}
