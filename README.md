# PDV
Sistema PDV - Teste

Observações Gerais:

    a) O código-fonte desse repositório está dentro da pasta app, separado o back-end e o front-end.
    b) O repositório está com arquivos e configurações prontas para inicializar os containers no Docker e rodar a aplicação, basta seguir os passos abaixo.
    c) Caso necessário, o pgdump do Banco de Dados está no arquivo zipado "db-postgre-pdv.tar"

Passos para rodar o sistema.

1. Download do Docker Desktop, caso ainda não possua: https://www.docker.com/products/docker-desktop/.
2. Deixe o Docker Desktop inicializado em sua máquina.
3. Criar uma pasta em seu computador, para realizar o clone do repositório.
4. Clone o Repositório "git clone https://github.com/fabianochaves/RepositorioTestePDV.git".
5. Após clonar, uma pasta chamada RepositorioTestePDV foi criada, com todos os arquivos do repositório.
6. Abra o CMD e navegue até a raiz da pasta RepositorioTestePDV (cd RepositorioTestePDV)
7. Ainda no CMD, rode o comando docker-compose up -d (Esse processo demora um pouco)
8. Após concluído o comando no item 7, verifique no Docker Desktop, se está ativo o container "repositoriotestepdv" (back-end, front-end, postgres e pgadmin)
    OBS: Inicializado os containers com sucesso, a aplicação já está com o servidor todo configurado para rodar o Sistema PDV, não precisa configurar mais nada.
9. Abra no Navegador http://localhost:8000 e abrirá a tela de login.
10. Navegue pelo sistema, utilizando o usuário: teste e senha: teste.
11. Para acessar o banco de dados, acesse http://localhost:8080, usuario: fabianochavesg@gmail.com e senha: 123. 

Acessos:

1. Front-End: http://localhost:8000 -> usuário: teste e senha: teste
2. Back-End: http://localhost:8001 -> Sem acesso via Browser.
3. PGAdmin: http://localhost:8080 -> usuario: fabianochavesg@gmail.com e senha: 123
4. Postgre: Porta: 5432, usuário: pdv, senha: 123


