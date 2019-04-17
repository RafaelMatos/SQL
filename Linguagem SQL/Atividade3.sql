/*
Nome: Rafael Ibiapina Matos
RA:8016047
*/

/*1. Crie uma visão com os títulos a pagar que ainda
não foram pagos.*/
create view Titulo_n_pago 
as select IDTITULO,HISTORICO,DATAVENCIMENTO,valor,MOVIMENTO 
from titulo  
where idtitulo NOT IN (select idtitulo from pagar) and MOVIMENTO='C' 
group by idtitulo;

/*2. Crie uma visão com os títulos a receber que
ainda não foram recebidos.*/
create view Titulo_n_recebido 
as select IDTITULO,HISTORICO,DATAVENCIMENTO,valor,MOVIMENTO 
from titulo  
where idtitulo NOT IN (select idtitulo from receber) and MOVIMENTO='V' 
group by idtitulo;

/*Exercicio 3*/
DELIMITER //
	CREATE  PROCEDURE SP_AtualizaEstoque (id_prod int,qnt_comprada int,movimento char(1),OUT msgErro varchar(100))
BEGIN
	
    IF movimento = "E" or "S" THEN
		IF MOVIMENTO = "E" THEN
			UPDATE PRODUTO SET ESTOQUEATUAL= ESTOQUEATUAL + qnt_comprada where idproduto = id_prod;
		else 
			UPDATE PRODUTO SET ESTOQUEATUAL= ESTOQUEATUAL - qnt_comprada where idproduto = id_prod;
		end if;
	else
		set msgErro ="Movimento errado";
	END IF;    
END //
DELIMITER ;

/*Exercicio 4*/
DELIMITER //
CREATE TRIGGER `TRG_SaidaProduto` AFTER INSERT ON `venda`
FOR EACH ROW
BEGIN
      CALL SP_AtualizaEstoque (new.id_produto, new.qtde, new.movimento);
END //
DELIMITER ;

/*Exercicio 5*/
DELIMITER //
CREATE TRIGGER `TRG_EntradaProduto` AFTER INSERT ON `compra`
FOR EACH ROW
BEGIN
      CALL SP_AtualizaEstoque (new.id_produto, new.qtde, new.movimento);
END //
DELIMITER ;



