resource "aws_instance" "name" {
    ami = var.instance_ami
    instance_type = "t2.micro"
    key_name = "web.pem"
    count = 2
    tags = {
      name = "terraform-${count.index}"
    }
}
