/*
Nome: Rafael Matos
RA: 8016047 */

/*
Procedure Atualiza pontoPedido

*/

delimiter |
create procedure pro_pontoPedido(p_idProduto int)
begin
	
	update produto set ESTOQUEMINIMO = DEMANDA*(tpomediorepos/30)*(fatorseguranca/100) where idproduto = p_idProduto;
	update produto set pontopedido=((tpomediorepos/30)*demanda)+estoqueminimo where idproduto = p_idProduto;
end
|





/*Procedure Atualiza qtdAPedir*/
delimiter |
create procedure pro_qtdPedir(p_idProduto int)
begin
	
	update produto set ESTOQUEMAXIMO = ((1 + (tpomediorepos/30) * demanda) + estoqueminimo) where idproduto = p_idProduto;
	update produto set QTDEAPEDIR = (ESTOQUEMAXIMO -  ESTOQUEATUAL) + (( TPOMEDIOREPOS/30)*DEMANDA) where idproduto = p_idProduto;
end
|
