resource "aws_instance" "name" {
    ami = var.instance_ami
    instance_type = "t2.micro"
    count = 2
    name = "terraform-${count.index}"
    tags = {
      name = "terraform-${count.index}"
    }
}
