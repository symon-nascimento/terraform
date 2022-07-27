# INICIANDO O PROJETO E SEUS MÓDULOS
- terraform init (iniciando os módulos e lendo os arquivos .tf)
- terraform init -upgrade (iniciando os módulos, aualizando-os e lendo os arquivos .tf)

# ATUALIZANDO O ARQUIVO STATE
- terraform refresh (busca alterações realizadas na AWS via console)
- terraform state pull ("baixa" o state exibindo-o no console - terraform pull >> nome_arquivo)
- terraform state push (enviando o state alterado)

# ORGANIZANDO O CÓDIGO
- terraform fmt




# APRENDIZADOS
26/07/2022
[X] - Comando state
[X] - Listagem do conteudo do arquivo state
[X] - Importância de não manipular o arquivo state manualmente
[X] - Move os recursos de um local para o outro (mv)
[X] - Importando infraestrutura legada
[X] - Tipos de importação