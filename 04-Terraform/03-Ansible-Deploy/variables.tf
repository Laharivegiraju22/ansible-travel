variable "key_name" {
  default = "lah1"
}

variable "pvt_key" {
  default = "/root/.ssh/hkey.pem"
}

variable "us-east-zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "sg-id" {
  default = "sg-00bf8e15b47e23b8d"
}
