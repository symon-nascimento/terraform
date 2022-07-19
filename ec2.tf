
data "aws_ami" "ubuntu_virginia" {
provider = aws.east-1
most_recent = true
filter {
  name = "name"
  values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
}
owners = ["099720109477"]
}


data "aws_ami" "ubuntu_ohio" {
provider = aws.east-2
most_recent = true
filter {
  name = "name"
  values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
}
owners = ["099720109477"]
}

resource "aws_instance" "server_virginia" {
  provider = aws.east-1
  ami           = data.aws_ami.ubuntu_virginia.id
  instance_type = "t2.micro"
  tags = {
    Name = "dev-symon"
  }
}

resource "aws_instance" "server_ohio" {
  provider = aws.east-2
  ami           = data.aws_ami.ubuntu_ohio.id
  instance_type = "t2.micro"
  tags = {
    Name = "dev-symon"
  }
}

