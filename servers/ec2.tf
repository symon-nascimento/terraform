
# Buscando dados sobre a ami na aws
data "aws_ami" "ubuntu_virginia" {
provider = aws.east-1
most_recent = true
# Filtranso o retorno dos dados
filter {
  name = "name"
  values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
}
owners = ["099720109477"]
}


# data "aws_ami" "ubuntu_ohio" {
# provider = aws.east-2
# most_recent = true
# filter {
#   name = "name"
#   values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
# }
# owners = ["099720109477"]
# }

# "Subindo" os recursos"
resource "aws_instance" "server_virginia" {
  count =  var.servers
  provider = aws.east-1
  ami           = data.aws_ami.ubuntu_virginia.id
  instance_type = "t2.micro"
  tags = {
    Name = var.name_instances[count.index]
  }
}

# resource "aws_instance" "server_ohio" {
#   count = var.servers
#   provider = aws.east-2
#   ami           = data.aws_ami.ubuntu_ohio.id
#   instance_type = "t2.micro"
#   tags = {
#     Name = var.name_instances[count.index]
#   }
# }
