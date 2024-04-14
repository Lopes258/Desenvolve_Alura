# Desenvolve Alura Boticário
## Projeto Banco de Dados

O projeto conta com um modelo logico e um modelo fisico para a criação do banco de dados e um modelo desse banco de dados criado em MYSQL de exemplo para esse projeto.<br>
A seguir vou explicar o que eu pensei para cada uma das tabelas.<br>

# Resumo
Nesse projeto pensei nesse banco de dados para gerenciar 4 lojas ao mesmo tempo contabilizando o total de vendas por funcionário e pontos para os clientes a cada uma certa quantidade de valor gasto em produtos, abaixo vou explicar o que pensei em cada tabela.

## Produto
Nessa tabela não existe muito segredo ela é onde contém as informações base dos produtos da loja com o seu ID próprio para cada um deles, o seu nome o tipo de produto o seu valor e uma coluna de atualização para saber sempre que alterarem um dos dados. 

## Loja
Como são 4 lojas eu criei uma tabela com essas lojas existindo para cada um possa ter seu próprio ID, um endereço para cada um que será buscado da tabela de endereços e como padrão para min nesse projeto a coluna de atualização. 

## Funcionarios
Essa tabela acredito que seja uma das mais importantes pois além de constar os dados pessoais de cada funcionário também tenho o registro de qual loja eles trabalham e quantas vendas cada um já fez. 

## Endereço
Esta tabela fiz para dar uma sensação de realidade maior para o projeto pois apesar de ser um projeto de exemplo acredito importante esse tipo de tabela para procurar tendencias de compras por região e localidades. 

## Estoque 
Para uma equipe de logística e fornecimento sem dúvida a parte mais importante é o estoque e nessa tabela eu deixo tentar tudo o mais fácil de identificar possível nessa tabela contém produto por produto que contêm no estoque e a qual loja ele está relacionado além disso a sua quantidade para sempre ter a noção de quais produtos precisam ser repostos. 

## Clientes
A tabela de clientes eu tentei pegar o máximo de informações possíveis pois as análises que se podem conseguir por entender os seus clientes é de extrema importância por isso eu tenho registrado em qual loja o cliente criou o seu cadastro o endereço, nome e sobrenome, e-mail, data de nascimento e como ele se identifica para conseguir identificar tendencias de compras quando esses dados são cruzados com a tabela de vendas. 

## Vendas
Nessa tabela eu tenho a tabela como um todo onde eu consigo saber qual funcionário realizou a venda qual o valor, a quantidade de produtos e qual o cliente e a data da sua venda. 

## Vendas Estoque
Essa tabela eu criei ao final pois ela me ajuda ter um controle melhor de quais produtos foram comprados e posso cruzar esses dados com mais precisão. 
