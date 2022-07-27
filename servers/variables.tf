# Declarando a variável que conterá uma lista de string
variable "name_instances" {
  type    = list(string)
  default = ["igor", "armando", "leonardo", "symon"]
  description = "Nome dos desenvolvedores STEMativa"
}

variable "servers" {
}
