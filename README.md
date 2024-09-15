## Projeto AWS com Terraform e Ansible

Este projeto demonstra como usar Terraform e Ansible para criar e configurar duas instâncias EC2 na AWS. Uma instância é configurada como servidor Apache e a outra como servidor Nginx.


## Descrição
Este projeto é um exemplo prático de como usar ferramentas de infraestrutura como código (IaC) e automação para criar e gerenciar ambientes em nuvem.

*Provisionar instâncias* EC2 com Terraform.
*Configurar servidores* Apache e Nginx com Ansible.
*Gerenciar a infraestrutura* de forma automatizada e reprodutível.

## Estrutura do Projeto

O projeto é organizado em dois diretórios principais:

**terraform/:** Contém a configuração do Terraform para provisionar os recursos na AWS.

**main.tf:** Define os recursos EC2, segurança e redes.

**outputs.tf:** Define as saídas dos IPs públicos das instâncias.

**ansible/:** Contém a configuração do Ansible para configurar as instâncias EC2.

**inventory:** Arquivo de inventário do Ansible com os IPs das instâncias.

**playbook.yml:** Playbook do Ansible para instalar e configurar Apache e Nginx.


## Passos para Executar
Pré-requisitos:

**Conta AWS com credenciais de acesso.**
Instalação do Terraform: https://www.terraform.io/downloads.html

**Instalação do Ansible:** https://docs.ansible.com/ansible/latest/installation_guide.html

**Configure as variáveis de ambiente do Terraform**: (AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY).

## Clone o Repositório

git clone https://github.com/your-username/aws-terraform-ansible.git
cd aws-terraform-ansible

## Infraestrutura Provisória com Terraform
Navegue até o diretório terraform/ e execute:

terraform init

terraform apply
**Anote os IPs das instâncias provisionadas após a execução.**


## Configurar Instâncias com Ansible
Navegue até o diretório ansible/ e edite o arquivo inventory com os IPs das instâncias.

Em seguida, execute:
ansible-playbook -i inventory playbook.yml

## Importância do Terraform e Ansible

Terraform: Ferramenta de infraestrutura como código (IaC) que permite criar e gerenciar recursos de infraestrutura de forma declarativa e reprodutível.

Ansible: Ferramenta de automação que automatiza tarefas de configuração, gerenciamento e implantação em sistemas.


## Recursos Adicionais
**Documentação do Terraform:** https://www.terraform.io/docs/

**Documentação Ansible:** https://docs.ansible.com/ansible/latest/

**Documentação AWS EC2:** https://docs.aws.amazon.com/ec2/latest/userguide/

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.67.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.67.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.apache_server](https://registry.terraform.io/providers/hashicorp/aws/5.67.0/docs/resources/instance) | resource |
| [aws_instance.nginx_server](https://registry.terraform.io/providers/hashicorp/aws/5.67.0/docs/resources/instance) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apache_server_ip"></a> [apache\_server\_ip](#output\_apache\_server\_ip) | IP Público do servidor Apache |
| <a name="output_nginx_server_ip"></a> [nginx\_server\_ip](#output\_nginx\_server\_ip) | IP Público do servidor Nginx |
<!-- END_TF_DOCS -->
