# Projeto de Banco de Dados 2

* Matheus de Bortoli Pastega
* Allan Simões Adegas
* Vitor Busolin

Projeto desenvolvido como parte da disciplina de Bancos de Dados 2 - UTFPR Campus Cornélio Procópio

## Requisitos para rodar o projeto
* Docker

## Executando o projeto

### 1. Clonar o repositório

Este repositório contém uma referência para outro repositório, para cloná-lo deve-se utilizar

```sh
    git clone --recurse-submodules http://github.com/pastega/projeto-bd2
```

### 2. Subir os containers

Execute o docker-compose em modo "detached"
```sh
    docker-compose up -d
```
Aguarde alguns segundos, pois o serviço web espera que o serviço bd esteja aceitando conexões antes de subir

O docker deve montar as imagens e subir dois containers:
* web - Aplicação Django
* db - Banco de dados MySQL

### 3. Criar um superusuário Django

Para usar o Django, você precisará criar um superusuário. Para tal execute:

```sh
    docker-compose exec web python manage.py createsuperuser
```

Siga as instruções do Django...

### 4. Carregar o conjunto de dados de demonstração

```sh
    docker-compose exec bd mysql -u root -p < demo.sql
```

### 5. Acessar a aplicação no navegador

Acesse o endereço http://localhost:8000 no seu navegador

## Apêndices
### Encerrar o docker-compose
```sh
    docker-compose down
```
### Conectando com o MySQL WorkBench
O serviço bd expõe o MySQL na porta 25565 para evitar eventuais conflitos com outro MySQL rodando na máquina. 
Assim, caso queria conectar com o MySQL WorkBench utilize:

* IP: localhost
* Porta: 25565
* Usuário: root
* Senha: password
