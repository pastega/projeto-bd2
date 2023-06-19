# Projeto de Banco de Dados 2

- Matheus de Bortoli Pastega
- Allan Simões Adegas
- Victor Santos Busolin

Projeto desenvolvido como parte da disciplina de Bancos de Dados 2 - UTFPR Campus Cornélio Procópio

## Requisitos para rodar o projeto

- Docker

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

- web - Aplicação Django
- db - Banco de dados MySQL

### 3. Carregar o conjunto de dados de demonstração

```sh
    docker-compose exec bash -c "mysql -u root -p < /mnt/sql/demo.sql"
```

A senha do usuário root é "password"

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

- IP: localhost
- Porta: 25565
- Usuário: root
- Senha: password

### Cenário de demonstração

#### Superusuário Django

Usuário: root\
Senha: 1234

#### Usuários do sistema

Usuário: Gerson\
Cargo: Gerente\
Senha: ztg434vb\
\
Usuário: Rosana\
Cargo: Nutricionista\
Senha: 8u7gqota\
\
Usuário: Roberto\
Cargo: Atendente\
Senha: 45px8pc5\
\
Usuário: Mariana\
Cargo: Atendente\
Senha: u2kdayqp

#### Estudantes cadastrados

Nome: Carla\
RA: 79752\
\
Nome: Júlia\
RA: 84328\
\
Nome: Pedro\
RA: 15954\
\
Nome: Márcio\
RA: 76245

#### Refeições

Refeições cadastradas para as semanas
19/06/2023 a 23/06/2023

- Obs: A página "Cardápio" mostra apenas as refeições cadastradas para semana atual.
  Ou seja, depende da data e hora do seu sistema
