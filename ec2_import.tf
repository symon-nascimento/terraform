resource "aws_instance" "server_virginia" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  tags = {
    "Name" = "test_import"
  }
}