variable "instance_ami" {
    type = string
    description = "this is ami varaible"
    default = "ami-0f535a71b34f2d44a"
  }

variable "aws_region" {
     type = string
     default = "ap-south-1"
}

variable "vpc_id" {
    type = string
    default = null
}
