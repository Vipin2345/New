resource "aws_instance" "name" {
    ami = var.instance_ami
    instance_type = "t2.micro"
    key_name = "web.pem"
    count = 2
    tags = {
      name = "terraform-${count.index}"
    }
}

resource "aws_security_group" "ssh_access" {
  name        = "ssh_access"
  description = "Allow SSH Access"
  vpc_id = var.vpc_id

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
