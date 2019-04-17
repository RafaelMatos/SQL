/*
Nome: Rafael Ibiapina Matos
RA: 8016047
*/
/*Alimentação*/
	/*Vestuario*/
	/*Eletrodoméstico*/
	/*Informatica*/
	/*Livros*/

/*Área*/
	insert into area(idarea,descricao) values (1,'Alimentação');
	insert into area(idarea,descricao) values (2,'Vestuario');
	insert into area(idarea,descricao) values (3,'Eletrodoméstico');
	insert into area(idarea,descricao) values (4,'Informatica');
	insert into area(idarea,descricao) values (5,'Livro e papelaria');	

/*Tipo por área*/
	/*Alimentação*/
	insert into tipo(descricao,idarea) values('Enlatado',1);
	insert into tipo(descricao,idarea) values('Pacote',1);
	/*Vestuario*/
	insert into tipo(descricao,idarea) values('Feminino',2);
	insert into tipo(descricao,idarea) values('Masculino',2);
	/*Eletrodomésticos*/
	insert into tipo(descricao,idarea) values('Refrigerador',3);
	insert into tipo(descricao,idarea) values('Forno',3);
	/*Informatica*/
	insert into tipo(descricao,idarea) values(' ',4);
	insert into tipo(descricao,idarea) values('Armazenamento',4);
	/*Livros*/
	insert into tipo(descricao,idarea) values('Livros',5);
	insert into tipo(descricao,idarea) values('Papelaria',5);
	
/*Grupo por tipo*/
	/*Enlatado*/
	insert into grupo(descricao,idtipo) values('Molho/Creme',1);
	insert into grupo(descricao,idtipo) values('Vegetal',1);
	/*Pacote*/
	insert into grupo(descricao,idtipo) values('Grãos',2);
	insert into grupo(descricao,idtipo) values('Pó/Farelo',2);
	/*Feminino*/
	insert into grupo(descricao,idtipo) values('Blusa',3);
	insert into grupo(descricao,idtipo) values('Vestido',3);
	/*Masculino*/
	insert into grupo(descricao,idtipo) values('Camisa',4);
	insert into grupo(descricao,idtipo) values('Calça',4);
	/*Refrigerador*/
	insert into grupo(descricao,idtipo) values('Geladeira',5);
	insert into grupo(descricao,idtipo) values('Freezer',5);
	/*Forno*/
	insert into grupo(descricao,idtipo) values('Fogão',6);
	insert into grupo(descricao,idtipo) values('Micro-ondas',6);
	/* */
	insert into grupo(descricao,idtipo) values('Desktop',7);
	insert into grupo(descricao,idtipo) values('Notebook',7);
	/*Armazenamento*/
	insert into grupo(descricao,idtipo) values('HD',8);
	insert into grupo(descricao,idtipo) values('Pen-drive',8);
	/*Livros*/
	insert into grupo(descricao,idtipo) values('Academico',9);
	insert into grupo(descricao,idtipo) values('Literatura',9);
	/*Papelaria*/
	insert into grupo(descricao,idtipo) values('Cadernos',10);
	insert into grupo(descricao,idtipo) values('Agendas e Calendários',10);
	
/*	ESTOQUEATUAL = ESTOQUEATUAL+((ESTOQUEMAXIMO-ESTOQUEATUAL)+((TPOMEDIOREPOS/30)*DEMANDA*FATORCONVERSAO)
	ESTOQUEMINIMO = null
	ESTOQUEMAXIMO = null
	PONTOPEDIDO = null
	DEMANDA = QNT MOVIMENTADA EM ESTOQUE EM UM PERIODO(GERALMENTE MENSAL)
	FATORSEGURANCA = EMPRESA DÁ, PROPORCIONAL AO ATENDIMENTO DESEJADO PARA ITEM, 15-45%
	((Estoque Atual * Custo Médio Atual) +
(Quantidade Recebida * Preço Unitário Recebido)) / (Estoque
Atual + Quantidade Recebida)
	CUSTOMEDIO =  ((ESTOQUEATUAL*CUSTOMEDIO)+((ESTOQUEMAXIMO-ESTOQUEATUAL)+((TPOMEDIOREPOS/30)*DEMANDA*PRECOVENDA))/(ESTOQUEATUAL+(ESTOQUEMAXIMO-ESTOQUEATUAL)+((TPOMEDIOREPOS/30)*DEMANDA)
	FATORCONVERSAO = QUANTAS CAIXAS TEM EM UM PALLET( OU ALGO PARECIDO)
	TPOMEDIOREPOS = NUMERO DE DIAS QUE FORNECEDOR DEMORA
	UNIDESTOQUE = UNIDADE DE MEDIDA Q O PRODUTO É ARMAZENADO
	UNIDRECEB = UNIDADE DE MEDIDA Q O PRODUTO É RECEBIDO PELOS FORNECEDORES
	
	(ESTOQUEMAXIMO-ESTOQUEATUAL)+((TPOMEDIOREPOS/30)*DEMANDA = (Estoque Máximo – Estoque Atual) +
((Tempo de Reposição / 30) * Demanda)
(ESTOQUEMAXIMO-ESTOQUEATUAL)+((TPOMEDIOREPOS/30)*DEMANDA
	
*/
	
/*Produto por grupo*/
	/*Molho/Creme*/
			/*unidade*/
				insert into unidade(sigla,descricao) values('LT','LATA'); /*ID 1*/
				insert into unidade(sigla,descricao) values('CX','CAIXA-24LT');/* ID 2*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Creme de Leite Nestlé',
        4.50,
        /*est.atual*/600,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 100,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/1);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Molho de Tomate',
        3.5,
        /*est.atual*/500,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 90,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/1);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Leite Condensado Nestlé',
        4.50,
        /*est.atual*/650,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 110,
        /*fator.segur*/35,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/1);
	
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Sobremesa Nestlé Chocolate',
        6.50,
        /*est.atual*/650,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 60,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/40,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/1);
	
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Sobremesa Leite Condensado',
        6.00,
        /*est.atual*/625,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 65,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/40,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/1);
	
	/*Vegetal*/
		
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Milho em Lata',
        2.50,
        /*est.atual*/700,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 120,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/2);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Ameixa em conserva',
        3.50,
        /*est.atual*/400,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 80,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/2);
	
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Ervilha em lata',
        2.50,
        /*est.atual*/350,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 75,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/2);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Abacaxi em conserva',
        3.50,
        /*est.atual*/430,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 80,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/2);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Verduras em lata',
        3.50,
        /*est.atual*/400,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 85,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 24,
        /*TPOMEDIOREPOS*/35,
        /*UNIDESTOQUE*/1,
        /*UNIDRECEB*/2,
        /*IDGRUPO*/2);
		
	/*Grãos*/
		/*unidade*/
		insert into unidade(sigla,descricao) values('PC-5','Pacote 5kg');/*ID 3*/
		insert into unidade(sigla,descricao) values('PC-1','Pacote 1kg');/*ID 4*/
		insert into unidade(sigla,descricao) values('PL-5','Pallet para 500kg');/*ID 5*/
	
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Arroz 5kg',
        10.50,
        /*est.atual*/300,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 50,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 100,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/3,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/3);
			
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Arroz 1kg',
		6.50,
        /*est.atual*/350,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 45,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/3);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Feijão 1kg',
        4.50,
        /*est.atual*/220,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 45,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/35,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/3);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Soja 1kg',
        5.50,
        /*est.atual*/110,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 30,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/65,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/3);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Arroz Parboilizado 5kg',
        11.50,
        /*est.atual*/120,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 45,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 100,
        /*TPOMEDIOREPOS*/40,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/3);
		
	/*Pó/Farelo*/
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Sal fino 1kg',
        2.30,
        /*est.atual*/287,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 25,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/4);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Farinha 1kg',
        3.00,
        /*est.atual*/220,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 50,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/4);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Farinha de milho 1kg',
        4.50,
        /*est.atual*/213,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 45,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/4);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Sal grosso 1kg',
        2.70,
        /*est.atual*/253,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 30,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/30,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/4);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Açucar 1kg',
        3.40,
        /*est.atual*/110,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 75,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 500,
        /*TPOMEDIOREPOS*/35,
        /*UNIDESTOQUE*/4,
        /*UNIDRECEB*/5,
        /*IDGRUPO*/4);
	/*Blusa*/
			/*unidade*/
			insert into unidade(sigla,descricao) values('PÇ','PEÇA'); /*ID 6*/
			insert into unidade(sigla,descricao) values('CX-V','CAIXA-25PÇ');/* ID 7*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camiseta regata basica',
        45.00,
        /*est.atual*/32,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/5);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camiseta Manga Curta',
        50.00,
        /*est.atual*/27,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/5);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Blusa Manga Longa',
        65.00,
        /*est.atual*/28,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/5);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Blusa Social',
        70.00,
        /*est.atual*/23,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/5);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camisa pijama',
        45.00,
        /*est.atual*/22,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/5);
		
	/*Vestido*/	
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Vestido Basico',
        60.00,
        /*est.atual*/17,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/6);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Vestido longo',
        90.00,
        /*est.atual*/19,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/6);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Vestido Tomara-que-caia',
        75.00,
        /*est.atual*/20,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/6);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Vestido Cobre-tudo',
        95.00,
        /*est.atual*/22,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 7,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/6);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camisola vestido',
        65.00,
        /*est.atual*/17,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/6);
		
	/*Camisa*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camisa Basica',
        45.00,
        /*est.atual*/13,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/7);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camisa Regata Basica',
        40.00,
        /*est.atual*/21,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/7);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camisa de Botão Estampada',
        50.00,
        /*est.atual*/14,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/7);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camisa Social',
        65.00,
        /*est.atual*/12,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/7);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Camise de Botão Basica',
        50.00,
        /*est.atual*/17,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/15,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/7);
		
	/*Calça*/

		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Claça Jeans',
        85.00,
        /*est.atual*/18,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/8);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Calça Jeans Rasgada',
        80.00,
        /*est.atual*/22,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/7);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Bermuda Estampada Algodão',
        75.00,
        /*est.atual*/12,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/8);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Bermuda Lisa Algodão',
        70.00,
        /*est.atual*/16,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/8);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Bermuda Poliester',
        60.00,
        /*est.atual*/11,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 25,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/6,
        /*UNIDRECEB*/7,
        /*IDGRUPO*/8);
			
	/*Geladeira*/
				/*unidade*/
				insert into unidade(sigla,descricao) values('AP','Aparelho unico');/*8*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Eletrolux Duplex 2 PortaS',
        2109.00,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/9);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('1 Porta Eletrolux',
        949.0,
        /*est.atual*/2,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/9);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Brastemp Inverse Frost',
        2799.00,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/9);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('eletrolux Frost Free',
        1899.00,
        /*est.atual*/4,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 3,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/9);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Brastemp Frost Free Inverse',
        3749.00,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/9);
		
	/*Freezer*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Vertical Consul 142L',
        1107.00,
        /*est.atual*/2,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 3,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/10);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Consul CVU18 Vertical 121L',
        1114.9,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/10);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Horizontal Eletrolux 477L',
        2299.90,
        /*est.atual*/2,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 3,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/10);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Vertical Eletrolux 145L',
        1247.00,
        /*est.atual*/4,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 3,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/10);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Horizontal Consul CHA22 213L',
        1367.00,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/10);
		
	/*Fogão*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Consul CF350 4 Bocas',
        569.90,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/11);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Brastemo BFO4N 4 Bocas',
        779.9,
        /*est.atual*/2,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/11);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Eletrolux 50SS 4 Bocas',
        683.90,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/11);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Brastemp BFS6N 6 Bocas',
        1079.90,
        /*est.atual*/5,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 3,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/11);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Eletrolux 76SRX 5 Bocas',
        1699.90,
        /*est.atual*/4,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 2,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/11);
	
	/*Micro-ondas*/
	
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Consul Cm020 20L',
        379.90,
        /*est.atual*/12,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/12);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Eletrolux MTD30 20L',
        399.9,
        /*est.atual*/8,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 6,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/12);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Philco PME22 20L',
        299.90,
        /*est.atual*/7,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/12);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Eletrolux Mep37 27L',
        355.90,
        /*est.atual*/9,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 7,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/12);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('LG MH7053R Grill 30L',
        539.90,
        /*est.atual*/6,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/12);
		
		/*Desktop*/
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES (' DualCore 4gb 500gb',
        995.90,
        /*est.atual*/12,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/7,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/13);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('3green Core I3 4gb HD 1TB',
        1599.9,
        /*est.atual*/6,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 4,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/13);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('  3green Dualcore 4gb HD 1TB',
        799.90,
        /*est.atual*/10,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 7,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/13);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('  Positivo  Celeron J1800',
        1042.00,
        /*est.atual*/7,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/13);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('G-Fire DualCore 2GB HD500GB',
        989.00,
        /*est.atual*/6,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/35,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/13);
		
		/*Notebook*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Samsung  CoreI3 4GB HD1TB',
        2114.10,
        /*est.atual*/8,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/10,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/14);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Samsung Dualcore 2GB HD16GB',
        1304.10,
        /*est.atual*/6,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 8,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/14);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Samsung  Dua 4GB HD 500GB',
		2549.0,
        /*est.atual*/4,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/14);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Positiv Dualcore 4GB HD500GB',
        1176.66,
        /*est.atual*/3,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/14);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Dell i14  Core I3 4GB HD 1TB',
        1610.00,
        /*est.atual*/7,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 6,
        /*fator.segur*/35,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 1,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/8,
        /*IDGRUPO*/14);		
		
		/*HD*/
			/*unidade*/
			insert into unidade(sigla,descricao) values('CX-50','Caixa com 50 itens');/*ID 9*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Samsung M3 Portable 1TB',
        289.00,
        /*est.atual*/23,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/15,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/15);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Samsung HX 500GB',
        249.00,
        /*est.atual*/26,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/15);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Portátil Seagate Expans 1TB',
		293.0,
        /*est.atual*/32,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/15);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Portatil 750GB Touro Mobile',
        288.99,
        /*est.atual*/32,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/15);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('1TB Sata 3 64mb Seagate',
        319.00,
        /*est.atual*/34,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/15);	
		
		/*Pen-drive*/
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('16 GB Sandisk Cruzer Blade',
        17.05,
        /*est.atual*/22,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/20,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/16);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('32GB Sandisk Cruzer Blade',
        35.47,
        /*est.atual*/21,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/16);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Multilaser Twist 32GB',
		45.90,
        /*est.atual*/18,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 25,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/16);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Multilaser Twist 2 16GB',
        20.90,
        /*est.atual*/15,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 25,
        /*fator.segur*/40,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/16);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('8GB Multilaser Titan',
        16.90,
        /*est.atual*/27,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 20,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/ 50,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/9,
        /*IDGRUPO*/16);	

		/*Academicos*/
			/*unidade*/ 
			insert into unidade(sigla,descricao) values('CX-20','Caixa com 20 itens');/*ID 10*/
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Sistemas de Banco de Dados',
        227.20,
        /*est.atual*/13,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/5,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/17);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Sistema de Banco de Dados',
        270.30,
        /*est.atual*/16,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/17);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Php 5 Conceitos,Programação',
		177.60,
        /*est.atual*/14,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 5,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/17);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Java Web Services',
        47.90,
        /*est.atual*/12,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/17);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Java- A Referência Completa',
        160.00,
        /*est.atual*/15,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/17);
		
		/*Literatura*/
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Box Sherlock Holmes',
        76.70,
        /*est.atual*/11,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/10,
        /*fator.segur*/35,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/18);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Guerra Civil - Edição especial',
        48.00,
        /*est.atual*/7,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/40,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/18);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Star Wars-Darth Plagueis',
		35.90,
        /*est.atual*/13,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/18);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('O pequeno principe',
        27.90,
        /*est.atual*/12,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/18);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('O Diário de Anne Frank',
        31.30,
        /*est.atual*/16,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/18);
		
		/*Cadernos*/
				insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Kraft Cicero Sem Pauta 21x28',
        49.90,
        /*est.atual*/17,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/15,
        /*fator.segur*/35,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/19);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Confetti Hipster Com Divisor',
        44.90,
        /*est.atual*/11,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/19);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Oxford Organiniserboo',
		54.90,
        /*est.atual*/17,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/15,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/19);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('1X1 Oxford Europeanbook 1',
        18.90,
        /*est.atual*/15,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/19);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Jandaia 1X1 Capa Dura 96',
        21.90,
        /*est.atual*/7,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/19);
		
		/*Agendas e Calendários*/
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Redoma Safira - 2016',
        11.90,
        /*est.atual*/11,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/15,
        /*fator.segur*/35,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/20);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Permanente Matra',
        31.90,
        /*est.atual*/12,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 15,
        /*fator.segur*/35,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/19);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Te Neues Pocket ',
		25.90,
        /*est.atual*/14,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/20,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/20);
        
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Mafalda-2016',
        54.90,
        /*est.atual*/15,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/25,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/25,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
        /*IDGRUPO*/20);
		
		insert into produto(NOME, PRECOVENDA, ESTOQUEATUAL, ESTOQUEMINIMO, ESTOQUEMAXIMO,
		PONTOPEDIDO, DEMANDA, FATORSEGURANCA, CUSTOMEDIO, FATORCONVERSAO, TPOMEDIOREPOS,
		UNIDESTOQUE, UNIDRECEB, IDGRUPO) 
		VALUES ('Te Neues London 30x30',
        42.90,
        /*est.atual*/8,
        /*est.min*/null,
        /*est.max*/ null,
        /*pnt.pedido*/null,
        /*demanda*/ 10,
        /*fator.segur*/30,
        /*cust.medio*/null,
        /*FATORCONVERSAO*/20,
        /*TPOMEDIOREPOS*/20,
        /*UNIDESTOQUE*/8,
        /*UNIDRECEB*/10,
		/*IDGRUPO*/20);
		
/*Fim Produto*/

/*Compra*/
				/*Estado*/
					INSERT INTO ESTADO(SIGLA,NOME) VALUES('PI','Piauí');
					INSERT INTO ESTADO(SIGLA,NOME) VALUES('RJ','Rio de Janeiro');
					INSERT INTO ESTADO(SIGLA,NOME) VALUES('CE','Ceará');
					INSERT INTO ESTADO(SIGLA,NOME) VALUES('SP','São Paulo');
						/*CIDADE*/
						INSERT INTO CIDADE(NOME,SIGLA) VALUES('Teresina','PI');
						INSERT INTO CIDADE(NOME,SIGLA) VALUES('Parnaiba','PI');
						INSERT INTO CIDADE(NOME,SIGLA) VALUES('Rio de Janeiro','RJ');
						INSERT INTO CIDADE(NOME,SIGLA) VALUES('Fortaleza','CE');
						INSERT INTO CIDADE(NOME,SIGLA) VALUES('São Paulo','SP');
							/*BAIRRO*/
							INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('ININGA','LESTE',1);
							INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('CENTRO','CENTRO',1);
							INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('CEARÁ','NORTE',2);
							INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('IPANEMA','LESTE',3);
							INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('CENTRO','CENTRO',4);
							INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('CAMPO GRANDE','SUL',5);
				/*Fornecedor*/
					INSERT INTO FORNECEDOR(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO) 
					VALUES('FORNECEDOR EXPRESS','RUA ALGUSTA, N1745','2012-02-22','64039234',86,'34323454',1);
					INSERT INTO FORNECEDOR(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO) 
					VALUES('FORNECEDOR FAST','RUA LIMOEIRA, N 3465','2014-09-24','63032534',86,'32324763',2);
					INSERT INTO FORNECEDOR(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO) 
					VALUES('FORNECEDOR RJ EXPRESS','RUA DA IPANEMA, N 3785','2011-03-28','43052134',21,'43344632',3);
					INSERT INTO FORNECEDOR(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO) 
					VALUES('FORNECEDOR SP FAST','RUA JAICOS, N 1285','2013-12-14','33532589',11,'21527783',6);
					INSERT INTO FORNECEDOR(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO) 
					VALUES('FORNECEDOR CE EXPRESS','RUA DA PRAIA DO FORTE, N 7485','2012-03-04','43032794',85,'32427733',5);
		
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2012-02-24',1);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2014-10-12',2);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2011-04-05',3);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2013-12-19',4);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2016-02-22',5);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2016-05-02',1);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2016-01-12',2);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2016-04-05',3);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2016-03-13',4);
		INSERT INTO COMPRA(DATACOMPRA,IDFORNECEDOR) VALUES('2016-02-02',5);
/*Fim Compra*/

/*Venda*/
			/*Funcionario*/
					/*cargo*/
					INSERT INTO CARGO(DESCRICAO,SALARIO) VALUES('Tecnico de vendas',1200);
					INSERT INTO CARGO(DESCRICAO,SALARIO) VALUES('Supervisor de vendas',2400);
					INSERT INTO CARGO(DESCRICAO,SALARIO) VALUES('Gerente',4000);
					/*SETOR*/
					INSERT INTO SETOR(DESCRICAO) VALUES('Alimentos');
					INSERT INTO SETOR(DESCRICAO) VALUES('Equipamentos');
					INSERT INTO SETOR(DESCRICAO) VALUES('Vestuario');
					INSERT INTO SETOR(DESCRICAO) VALUES('Papelaria');
					/*Bairro*/
					INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('Morada do Sol','LESTE',1); /*7*/
					INSERT INTO BAIRRO(NOME,REGIÃO,IDCIDADE) VALUES('Fatima','LESTE',1);/*8*/
				
				INSERT INTO FUNCIONARIO(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,IDCARGO)
				VALUES('JOÃO CARVALHO','Rua 7 de Setembro,N3254','2013-03-15','63988628',86,32315362,2,1,1);
				INSERT INTO FUNCIONARIO(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,IDCARGO)
				VALUES('JULIA SOUSA PEREIRA','R VISCONDE DA PARNAIBA,N1934','2011-02-22','64756423',86,34358384,1,2,3);
				INSERT INTO FUNCIONARIO(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,IDCARGO)
				VALUES('FERNANDO COSTA SILVA','R H. CASTELO BRANCO,N3964','2013-04-17','64538854',86,32348536,1,3,2);
				INSERT INTO FUNCIONARIO(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,IDCARGO)
				VALUES('jESSICA MESQUITA','RUA 23,CASA 9','2015-05-28','63856954',86,33326583,7,4,1);
		
		
				
			/*Cliente*/
				INSERT INTO CLIENTE(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,SITUACAO)
				VALUES('PEDRO SOUSA','AV B. CONSTANT,N3454','2013-02-20','65488348',86,32325372,2,1,'F');
				INSERT INTO CLIENTE(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,SITUACAO)
				VALUES('ROBERTA LIMA','RUA TOMAZ DE AREA LEÃO,N1735','2011-02-25','64721423',86,34359984,1,2,'T');
				INSERT INTO CLIENTE(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,SITUACAO)
				VALUES('JULIANA RODRIGUES','AV. ININGA,N3964','2013-04-20','64868854',86,32338547,8,3,'T');
				INSERT INTO CLIENTE(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,SITUACAO)
				VALUES('VICENTE BARROS','RUA 11,CASA 1','2016-06-01','63893695',86,32324383,7,4,'F');				
				INSERT INTO CLIENTE(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,SITUACAO)
				VALUES('JOÃO CARLOS','RUA 13,CASA 12','2012-03-15','63876914',86,32214783,7,2,'F');
				INSERT INTO CLIENTE(NOME,ENDERECO,DATACADASTRO,CEP,DDD,FONE,IDBAIRRO,IDSETOR,SITUACAO)
				VALUES('JPAULA FEITOSA','AV. 24 DE JANEIRO,N3964','2013-04-20','64924854',86,33339247,2,3,'T');

				
		
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2013-02-20',1,1);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2011-02-25',2,2);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2013-04-20',3,3);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2016-06-01',4,4);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2016-04-23',3,1);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2016-02-01',4,2);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2016-01-26',1,3);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2016-04-14',2,1);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2016-02-19',4,4);
		INSERT INTO VENDA(DATAVENDA,IDFUNCIONARIO,IDCLIENTE) VALUES('2016-02-19',4,2);
/*FIM VENDA*/
			/*TITULO*/
			
			
			
					
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 1 - 2012-02-24 -','2012-03-24',500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 2 - 2014-10-12 -','2014-11-12',1500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 3 - 2011-04-05 -','2011-05-05',2500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 4 - 2013-12-19 -','2014-01-19',3500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 5 - 2016-02-22 -','2016-03-22',4500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 1 - 2016-05-02 -','2016-06-02',2000.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 2 - 2016-01-12 -','2016-02-12',3500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 3 - 2016-04-05 -','2016-05-05',1500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 4 - 2016-03-13 -','2016-04-13',500.0,'C');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('FORNECEDOR 5 - 2016-02-02 -','2016-03-02',1350.0,'C');
			
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 1 - 2013-02-20 -','2013-04-20',500.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 2 - 2011-02-25 -','2011-03-25',150.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 3 - 2013-04-20 -','2013-05-20',250.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 4 - 2016-06-01 -','2015-07-01',1500.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 1 - 2016-04-23 -','2016-05-23',450.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 2 - 2016-02-01 -','2016-03-01',200.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 3 - 2016-01-26 -','2016-02-26',350.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 1 - 2016-04-14 -','2016-05-14',1500.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 4 - 2016-02-19 -','2016-03-19',50.0,'V');
			INSERT INTO TITULO(HISTORICO,DATAVENCIMENTO,VALOR,MOVIMENTO)
			VALUES('CLIENTE 2 - 2016-02-19 -','2016-03-19',1350.0,'V');

/*TITULO A PAGAR*/
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(1,'2012-03-01',500.0,1);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(2,'2011-11-01',1500.0,2);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(3,'2011-05-01',2500.0,3);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(4,'2014-01-01',3500.0,4);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(5,'2016-03-01',4500.0,5);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(6,'2016-06-01',2000.0,6);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(7,'2016-02-01',3500.0,7);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(8,'2016-05-01',1500.0,8);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(9,'2016-04-01',500.0,9);
		INSERT INTO PAGAR(IDTITULO,DATAPAGAMENTO,VALORPAGO,IDCOMPRA) VALUES(10,'2016-03-01',1350.0,10);	
/*Fim T.Pagar*/
		
/*TITULO A RECEBER*/

		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(11,'2013-02-25',500.0,1);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(12,'2011-02-25',150.0,2);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(13,'2013-04-28',250.0,3);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(14,'2015-06-25',1500.0,4);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(15,'2016-04-23',450.0,5);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(16,'2016-02-15',200.0,6);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(17,'2016-02-03',350.0,7);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(18,'2016-04-30',1500.0,8);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(19,'2016-02-19',50.0,9);
		INSERT INTO RECEBER(IDTITULO,DATARECEBIMENTO,VALORPAGO,IDVENDA) VALUES(20,'2016-02-25',1350.0,10);
/*Fim T.Receber*/


/*Produtoforn*/
			/*INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES() */
		/*Molho/Creme*/
		
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,1,4.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,2,3.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,3,4.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,4,6.5,NULL,NULL,NULL);
					
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,5,6,NULL,NULL,NULL);
			
		
		/*Vegetal*/
			
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,6,2.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,7,3.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,8,2.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,9,3.5,NULL,NULL,NULL);
						
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,10,3.5,NULL,NULL,NULL);
			
			
		/*GrÃ£os*/
			
		
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,11,10.5,NULL,NULL,NULL);
				
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,12,6.5,NULL,NULL,NULL);
						
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,13,4.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,14,5.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,15,11.5,NULL,NULL,NULL);
				
		/*PÃ³/Farelo*/
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,16,2.3,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,17,3.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,18,4.5,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,19,2.7,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (1,20,3.4,NULL,NULL,NULL);
	/*FIM ALIMENTO*/	
            
	/*VESTUARIO*/
		/*Blusa*/
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,21,45.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)			
			VALUES (2,22,50,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,23,65.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,24,70.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,25,45.0,NULL,NULL,NULL);
			
		/*Vestido*/	
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,26,60.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,27,90.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,28,75.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,29,95.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,30,70.0,NULL,NULL,NULL);
			
		/*Camisa*/
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,31,45.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,32,40.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,33,50.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,34,65.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,35,50.0,NULL,NULL,NULL);
			
		/*Calça*/

			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,36,85.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,37,80.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,38,75.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,39,70.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (2,40,60.0,NULL,NULL,NULL);
	/*Fim vestuario*/
	
	/*Eletrodomesticos*/
		/*Geladeira*/
					
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,41,2109.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,42,949.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,43,2799.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,44,1899.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,45,3749.0,NULL,NULL,NULL);
			
		/*Freezer*/
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,46,1107.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,47,1114.9,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,48,2299.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,49,1247.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,50,1367.0,NULL,NULL,NULL);
			
		/*Fogão*/
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,51,569.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,52,779.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,53,683.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,54,1079.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,55,1699.90,NULL,NULL,NULL);
			
		/*Micro-ondas*/
		
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,56,379.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,57,399.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,58,299.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,59,355.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (3,60,539.9,NULL,NULL,NULL);
	/*Fim Eletrodomesticos*/

	/*Informatica*/
		/*Desktop*/
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,61,995.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,62,1599.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,63,799.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,64,1042.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,65,989.0,NULL,NULL,NULL);
			
		/*Notebook*/
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,66,2114.10,NULL,NULL,NULL);

			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,67,1304.10,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,68,2549.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,69,1176.66,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,70,1610.0,NULL,NULL,NULL);
			
		/*HD*/
				
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,71,289.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,72,249.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,73,293.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,74,288.99,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,75,319.0,NULL,NULL,NULL);
			
		/*Pen-drive*/
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,76,17.05,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,77,35.47,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,78,45.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,79,20.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (4,80,16.90,NULL,NULL,NULL);
			
	/*Fim informatica*/
	
	/*Livros e Papelaria*/
		/*Academicos*/
				
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,81,227.20,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,82,270.30,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,83,177.60,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,84,47.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,85,160.0,NULL,NULL,NULL);
			
		/*Literatura*/
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,86,76.70,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,87,48.0,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,88,35.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,89,27.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,90,31.30,NULL,NULL,NULL);
			
		/*Cadernos*/
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,91,49.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,92,44.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,93,54.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,94,18.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,95,21.90,NULL,NULL,NULL);
			
		/*Agendas e Calendários*/
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,96,11.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,97,31.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,98,25.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,99,54.90,NULL,NULL,NULL);
			
			INSERT INTO PRODUTOFORN(IDFORNECEDOR,IDPRODUTO,PRECOCOMPRA,TAXAREPOSICAO,CONFIABILIDADE,DESCONTO)
			VALUES (5,100,42.90,NULL,NULL,NULL);
	/*Fim Livros e Papelaria*/		
/*Fim Produtoforn*/
/*Faça uma consulta que retorne o valor do
estoque por área.*/
SELECT  A.IDAREA,A.DESCRICAO,SUM(PRECOVENDA*ESTOQUEATUAL) AS VALOR_TOTAL FROM PRODUTO P JOIN GRUPO G JOIN TIPO T JOIN AREA A
WHERE P.IDGRUPO= G.IDGRUPO AND G.IDTIPO=T.IDTIPO AND T.IDAREA=A.IDAREA GROUP BY A.IDAREA;

/*Faça uma consulta que retorne o valor do
estoque por Fornecedor.*/
SELECT  PF.IDFORNECEDOR AS IDFORN,F.IDFORNECEDOR AS IDPROFORN,F.NOME,SUM(P.PRECOVENDA*P.ESTOQUEATUAL) AS VALOR_TOTAL FROM PRODUTO P JOIN produtoforn PF JOIN fornecedor F
WHERE P.IDPRODUTO=PF.IDPRODUTO AND F.IDFORNECEDOR=PF.IDFORNECEDOR GROUP BY F.IDFORNECEDOR;