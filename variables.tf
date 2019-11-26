variable "env" {}

variable "region" {}

variable "instance_type" {
  type = "map"

  default = {
    dev  = "t2.micro"
    test = "t2.medium"
    prod = "t2.micro"
  }
}

variable "ami_id" {
  type = "map"

  default = {
    us-east-1      = "ami-00068cd7555f543d5"
    us-east-2      = "ami-0dacb0c129b49f529"
    us-west-1      = "ami-0b2d8d1abb76a53d8"
    us-west-2      = ""
    ap-east-1      = ""
    ap-south-1     = ""
    ap-northeast-1 = ""
    ap-northeast-2 = ""
    ap-southeast-1 = ""
    ap-southeast-2 = ""
  }
}

variable "sgs" {
  type    = "list"
  default = ["sg-01a8ca85ce7b94b8f", "sg-09ba482c4f0d3e988"]
}
