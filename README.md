# Desenvolve Alura Boticário
## Projeto Banco de Dados

O projeto conta com um modelo logico e um modelo fisico para a criação do banco de dados e um modelo desse banco de dados criado em MYSQL de exemplo para esse projeto.<br>
A seguir vou explicar o que eu pensei para cada um das tabelas criadas.<br>

# Resumo
Nesse projeto pensei nesse banco de dados para gerenciar 4 lojas ao mesmo tempo contabilizando o total de vendas por funcionario e tambem pontos para os clientes a cada uma certa quantidade de valor gasto em produtos, abaixo vou explicar o que pensei em cada tabela.

## Produto
Nessa tabela não existe muito segredo ela é aonde contem as informações base dos produtos da loja com o seu ID proprio para cada um deles, o seu nome o tipo de produto o seu valor e uma coluna de atualização para saber sempre que alterarem um dos dados.

## Loja
Como são 4 lojas eu criei uma tabela com essas lojas existindo para cada um ter seu proprio ID, um endereço para cada um que será buscado da tabela de endereços e como padrão para min nesse projeto a coluna de atualização.

## Funcionarios
Essa tabela acredito que seja uma das mais importantes pois além de constar os dados pessoais de cada funcionario também tenho o registro de qual loja eles trabalham e quantas vendas cada um já fez.

## Endereço
Esta tabela fiz para dar uma sensação de realidade maior para o projeto pois apesar de ser um projeto de exemplo acredito importante esse tipo de tabela para procurar tendencias de compras por região e localidades.

## Estoque 
Para uma equipe de lojistica e fornecimento sem duvida a parte mais importante é o estoque e nessa tabela eu deixo tentar tudo o mais facil de indentificar possivel nessa tabela contem produto por produto que contem no estoque e a qual loja ele esta relacionado além disso a sua quantidade para sempre ter a noção de quais produtos precisam ser repostos.

## Clientes
A tabela de clientes eu tentei pegar o maximo de informações possiveis pois as analises que se podem conseguir por entender os seus clientes é de extrema importancia por isso eu tenho registrado em qual loja o cliente criou o seu cadastro o endereço, nome e sobrenome, email, data de nascimento e como ele se identifica para conseguir identificar tendencias de compras quando esses dados são cruzados com a tabela de vendas.

## Vendas
Nessa tabela eu tenho a tabela como um todo aonde eu consigo saber qual funcionario realizou a venda qual o valor, a quantidade de produtos e qual o cliente e a data da sua venda.

## Vendas Estoque
Essa tabela eu criei ao final pois ela me ajuda ter um controle melhor de quais produtos foram comprados e posso cruzar essas dados com mais precisão.

