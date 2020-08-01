
use TechDB


--Uma consulta mostrando todos os produtos cadastrados, com o nome da categoria e o nome do funcion�rio que o cadastrou; (5 pontos) 


select
	p.nome_produto,
	fun.nome_funcionario,
	cat.nome_categoria
from produto p
	inner join funcionario fun on (fun.id_funcionario = p.id_funcionario)
	inner join categoria_produto cat on (cat.id_categoria = p.id_categoria)



--Uma consulta mostrando todos os pedidos feitos (sem os itens do pedido), com o nome e telefone do cliente; (5 pontos) 


select
	pe.id_pedido,
	cli.nome_cliente,
	cli.telefone
from pedido pe
	inner join cliente cli on (cli.id_cliente = pe.id_cliente)



--Uma consulta mostrando todos os pedidos feitos, com seus itens, mostrando: n�mero do pedido, nome do cliente, data do pedido, nome do produto comprado 
--e a quantidade comprada de cada produto; (5 pontos) 


select
	cli.nome_cliente,
	dp.id_pedido,
	p.nome_produto,
	pe.data_pedido, 
	dp.qtd_produto

from pedido pe
	inner join detalhe_pedido dp on (pe.id_pedido = dp.id_pedido)
	inner join cliente cli on (cli.id_cliente = pe.id_cliente)
	inner join produto p on (p.id_produto = dp.id_produto)


--Uma consulta mostrando a quantidade de pedidos por cliente, com resultado ordenado por nome do cliente, de modo crescente. (5 pontos) 


select 
	cli.nome_cliente,
	count(*) as qdt_pedido
from pedido p
	inner join cliente cli on (p.id_cliente = cli.id_cliente)
	group by cli.id_cliente, cli.nome_cliente 
order by cli.nome_cliente asc
	


--2 SQLs de atualiza��o: 
--Um SQL que mude o sal�rio de todos os funcion�rios: eles passar�o a ganhar R$ 500,00 a mais; (5 pontos) 



update funcionario set salario = (salario+500)



--Um SQL que altere o email e o telefone de um cliente qualquer cadastrado. (5 pontos) 


update cliente  set email = 'zezimgmail.com' , telefone = '21968986539'where id_cliente = 9



--SQL de exclus�o, dos clientes que foram cadastrados sem o caractere �@�
 --no email ou que possuem uma senha com menos de 8 caracteres. (5 pontos) 


delete from cliente where email not like('%@%') or len(senha) <8


