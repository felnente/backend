# API - Teste Leadster

API para cadastro de contatos.

Projeto frontend para consumir a API: https://github.com/felnente/front-test-dev

## Dependências

- [Docker](http://docs.docker.com/engine/installation/)
- [Docker-compose](https://docs.docker.com/compose/)

## Iniciando o Projeto

- Clone o projeto do repositório
 
`https://github.com/felnente/test-dev.git`

- Acesse o diretório do projeto e rode o comando para cria os containers:
(Junto com a criação do container o bundle install para instalar as dependência e o rails s para subir o 
servidor são executados automaticamente)

`docker-compose up -d`

- Acesse o container da aplicação:

`docker-compose exec api bash`

- Criar o banco de dados:

`rails db:create`

- Criar as tabelas do banco

`rails db:migrate`

- API esta pronta para ser consumida no endereço:

`http://localhost:3000/`

- Acesso ao bando de dados pode ser feito pelo adminer:

Pelo Browser acesse o link [adminer](http://adminer.leadster.localhost:8081/)
- Sistema: PostgreSQL
- Servidor: db
- Usuário: postgres
- Senha: password
- Base de dados: api_development
