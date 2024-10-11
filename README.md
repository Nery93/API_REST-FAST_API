# **Crypto Finance Application**
![Python](https://img.shields.io/badge/Python-3.11-blue.svg)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-blue.svg)
![FastAPI](https://img.shields.io/badge/FastAPI-0.85.1-green.svg)
![Docker](https://img.shields.io/badge/Docker-20.10-blue.svg)
![AIOHTTP](https://img.shields.io/badge/AIOHTTP-3.8.1-yellow.svg)


Descrição do Projeto
Este é um aplicativo Crypto Finance desenvolvido com FastAPI, que permite a gestão de usuários e seus ativos favoritos de criptomoedas. O sistema foi projetado para facilitar o gerenciamento de portfólios, otimizando a adição e remoção de ativos, além de permitir a visualização dos preços históricos.

O aplicativo oferece funcionalidades como cadastro e exclusão de usuários, gerenciamento de ativos favoritos e acompanhamento dos preços máximos e mínimos de cada ativo.

Funcionalidades
Gerenciamento de usuários: Permite cadastrar e excluir usuários do sistema.
Ativos favoritos: Possibilita adicionar e remover criptomoedas da lista de favoritos.
Acompanhamento de preços: Recupera e exibe os preços máximos e mínimos do dia anterior para cada ativo favorito do usuário.
Banco de dados com PostgreSQL: Utiliza o PostgreSQL como sistema de gerenciamento de banco de dados.
Desempenho assíncrono: Implementa SQLAlchemy assíncrono e AIOHTTP para melhorar o desempenho na manipulação de requisições.
Tecnologias Utilizadas
Python >= 3.6
FastAPI
PostgreSQL
Async SQLAlchemy
AIOHTTP
Docker
Docker Compose
Como Executar o Projeto
Dependências
Docker
Docker Compose
Pipenv
Passos para Rodar o Projeto
Adicione o caminho do projeto à variável PYTHONPATH no arquivo .env.

Inicie o banco de dados PostgreSQL e o pgAdmin com Docker:

bash
Copiar código
docker-compose up -d
Ative o ambiente virtual:

bash
Copiar código
pipenv shell
Instale as dependências do Python:

bash
Copiar código
pipenv install
Popule o banco de dados:

bash
Copiar código
python populate.py
Inicie a aplicação:

bash
Copiar código
uvicorn main:app --port 8080
Comparação de Desempenho
Existem duas versões do endpoint /assets/day_summary, permitindo comparar o desempenho entre as visualizações síncronas e assíncronas.
