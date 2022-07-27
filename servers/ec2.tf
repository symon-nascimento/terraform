
# Buscando dados sobre a ami na aws
data "aws_ami" "ubuntu_virginia" {
most_recent = true
# Filtranso o retorno dos dados
filter {
  name = "name"
  values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
}
owners = ["099720109477"]
}


resource "aws_instance" "server_virginia" {
  count =  var.servers
  ami           = data.aws_ami.ubuntu_virginia.id
  instance_type = "t2.micro"
  key_name = "terraform-teste"
  tags = {
    Name = var.name_instances[count.index]
  }
}

