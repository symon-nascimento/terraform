
# TERRAFORM: Indicando onde deverá ser armazenado o state do Terraform. Neste caso, em um bucket S3.
terraform {
  backend "s3" {
    bucket = "curso-terraform-symon" # Nome do bucket
    key    = "terraform-state.tfstate" # Nome do arquivo a ser inserido no bucket
    region = "us-east-1" # Região onde o bucket foi configurado
  }
  # Utilizando a nova sintaxe
  required_providers {
    aws = { # Dando um nome ao provider
    source = "hashicorp/aws" # Indicando que o provider/plugin será utilizado do registry oficial
    version = "~>3.0" # Versão do provider/plugin
    }
  }
}

# PROVIDER: Trabalhando com duas regiões - us-east-1 e us-east-2
provider "aws" { # Habilitando o provider aws. Assim o Terraform saberá com quem deve conectar-se
  alias = "east-1" # O alias ("apelido"), auxilia a utilizar uma região declarada dentro do bloco provider em outros contextos, como indicar uma segunda região para "instanciar" uma VM.
  region  = "us-east-1" # Região onde será implementado a infraestrutura. 
  # Com a nova versão, não se utiliza o version neste bloco, mas sim em terraform
  #version = "~> 3.0"
}

provider "aws" {
  alias = "east-2"
  region = "us-east-2"
}






