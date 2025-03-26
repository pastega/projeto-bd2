# Sistema para o Gerenciamento de um Restaurante Universitário

Este projeto foi desenvolvido como parte da disciplinas de Análise e Projeto Orientado a Objetos e Bancos de Dados 2 na UTFPR - Campus Cornélio Procópio. Ele tem como objetivo gerenciar as operações de um restaurante universitário, incluindo o controle de cardápios, estoque, e registro de refeições dos estudantes.

## Funcionalidades

- **Gerenciamento de Cardápios**: Cadastro e visualização de cardápios para almoço e jantar.
- **Controle de Estoque**: Adição e listagem de itens no estoque.
- **Registro de Refeições**: Registro de estudantes nas refeições vigentes.
- **Autenticação**: Sistema de login e logout para controle de acesso.

## Tecnologias Utilizadas

- **Backend**: Django 4.1.3
- **Frontend**: Bootstrap 5
- **Banco de Dados**: SQLite
- **Outras Bibliotecas**:
  - `django-crispy-forms` para estilização de formulários.
  - `crispy-bootstrap5` para integração com Bootstrap 5.

## Requisitos

- Python 3.8 ou superior
- Virtualenv (opcional, mas recomendado)

## Instalação

1. Clone o repositório:

```sh
git clone https://github.com/seu-usuario/projeto-ru.git
cd projeto-ru
```

2. Crie e ative um ambiente virtual:

```sh
python -m venv venv
source venv/bin/activate  # No Windows: venv\Scripts\activate
```

3. Instale as dependências:

```sh
pip install -r requirements.txt
```

4. Realize as migrações do banco de dados:

```sh
python manage.py migrate
```

5. Inicie o servidor de desenvolvimento:

```sh
python manage.py runserver
```

Acesse o sistema no navegador em: [http://localhost:8000](http://localhost:8000)

## Estrutura do Projeto

- **meals**: Aplicação principal que contém os modelos, views, templates e URLs.
- **ru**: Configurações do projeto Django.
- **templates**: Arquivos HTML compartilhados entre as aplicações.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este projeto é de uso acadêmico e não possui uma licença específica.

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

As migrations do banco de dados devem ser aplicadas automaticamente

### 3. Carregar o conjunto de dados de demonstração e as configurações do SGBD

```sh
    docker-compose exec db bash -c "mysql -u root -p projeto_ru_django < <(cat /mnt/sql/*.sql)"
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
