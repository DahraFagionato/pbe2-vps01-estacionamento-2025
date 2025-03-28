# ESTACIONAMENTO ACME API
Situação de Aprendizagem - Back-End (Node.JS, JavaSript, VsCode, ORM Prisma, Insomnia)
## Contextualização
O ESTACIONAMENTO ACME tem atuado em nossa cidade com ótimo atendimento e segurança, é nosso cliente e necessita de um sistema Web para registro dos estacionamentos diários.<br>O P.O. após uma visita ao cliente, elaborou o DER e UML DC(Diagrama de Classes) a seguir e elencou os requisitos funcionais.<br>
![DER e DC](./docs/der-dc.png)
## Desafio
Desenvolver as funcionalidades conforme requisitos

### Requisitos funcionais
- [RF001] O sistema deve permitir o CRUD de veículos.
    - [RF001.1] Os campos cor e ano não são obrigatórios, podem ser nulos.
    - [RF001.2] A rota **readOne** do **veículo** deve mostrar os dados de um veículo específico e seus **estacionamentos**.
- [RF002] O sistema deve permitir o CRUD de estadias.
    - [RF002.1] O sistema deve associar a estadia a um veículo.
    - [RF002.2] Ao cadastrar uma nova estadia **create** no controller, a data e hora da **entrada** deve ser gerada pelo Banco de Dados @dedault(now()).
    - [RF002.3] Ao cadastrar uma nova estadia **create** no controller, a **saida**, pode ser nula **"?"** pois será preenchida na rota **update** quando o veículo saír do estacionamento.
    - [RF002.4] Ao cadastrar uma nova estadia **create** no controller, o **valorTotal**, deve ser nulo **"?"** pois será calculado na rota **update** quando o veículo saír do estacionamento.
    - [RF002.5] Se ao realizar **update** o campo **saída** for enviado o sistema deve calcular a **valorTotal** com a formula **"valorHora * (saida - entrada)"**.

### Casos de teste (Insomnia)
- [CT001] Deve ser cadastrado pelo menos 5 veículos.
    - [CT001.1] Pelo menos dois veículos devem ter ano e cor cadastrados.
- [CT002] Cadastre, altere e exclua um veículo.
- [CT003] Cadastre uma estadia para cada veículo.
    - [CT003.1] Pelo menos dois veículos devem ter duas ou mais Estadias cadastradas.
- [CT004] Cadastre, altere e exclua uma estadia.
- [CT005] Altere pelo menos duas estadias preenchendo a **saida** e verificando se calcula o **valorTotal**.

## Tecnologias
- Node.js
- Prisma
- XAMPP
- MySQL
- VSCode
- Insomnia

## Passo a Passo de como executar a API
- 1 Clone este repositório
- 2 Abra o XAMPP Control Panel e inicie o Apache e o MySQL
= 3 Abra com o repositorio com VsCode
- 4 Crie o arquivo .env na pasta API e adicione as seguintes variáveis de ambiente
DATABASE_URL="mysql://root@localhost:3306/estacionamento?schema=public&timezone=UTC"
- 5 Abra o terminal CTRL + ' cmd ou bash, navegue até a pasta API e execute os comandos

```
cd api
npm install
npx prisma migrate dev --name init
npx nodemon
# ou
npm start

```

- 6 Abra o Insomnia e importe o arquivo ./docs/insomnia.json para testar as rotas.
- 7 Caso queira visualizar o banco de dados, abra o XAMPP Control Panel e clique em Admin no módulo MySQL.
   -O arquivo ./docs/testes.sql é um script com dados de teste para inserir no banco de dados.
- 8 Para parar a execução do servidor, pressione CTRL + C no terminal.

