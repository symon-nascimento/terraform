module "servers" {
  source = "./servers"
  servers = 4
  providers = {
    aws = "aws.east-1"
   }
}
