# DevOps Code Challenge - Kanastra

## Visão Geral

Este projeto é um desafio para vaga de Devop TechLead que abrange o provisionamento de infraestrutura na nuvem usando Terraform e Ansible, configuração de pipelines de CI/CD com Jenkins, e a implantação de uma aplicação Node.js em um cluster Kubernetes (EKS).

### Estrutura do Projeto

1. Provisionamento da Infraestrutura

* Cluster Kubernetes (EKS)
* Rede e Subnets
* Segurança e IAM Roles

2. CI/CD com Jenkins

* Pipeline de Build com Docker
* Pipeline de Deploy com testes
* Integração com GitHub Flow

3. Aplicação Node.js

* Servidor Express simples
* Dockerfile para construção da imagem

### Pré-requisitos

* Terraform: Para o provisionamento da infraestrutura.
* Ansible: Para a configuração do kubeconfig e outras tarefas de configuração.
* Jenkins: Para orquestrar pipelines de CI/CD.
* Docker: Para containerizar a aplicação Node.js.
* Kubernetes (EKS): Para orquestração de containers.Acesso ao Jenkins e permissão no projeto para execução das pipelines;

### Implementação

1. Provisionar Infraestrutura:

* Navegue até o diretório do Terraform e execute:

`terraform init`
`terraform apply`

2. Configuração com Ansible:

* Navegue até o diretório do Ansible e execute:

`ansible-playbook setup.yml`

3. Configuração do Jenkins:

* Certifique-se de que o Jenkins tenha o plugin Kubernetes e Docker instalados.
* Configure o Jenkins com o Jenkinsfile fornecido e crie um job para executar o pipeline.

4. Construir e Implantar a Aplicação:

* O pipeline do Jenkins irá construir a imagem Docker, executar os testes e implantar a aplicação no cluster EKS.

## Colaborando

* **Jeferson W. Candido** - *Construção da solução* - [devops_tech_lead]
(<https://www.linkedin.com/in/jefersoncandido/>)

