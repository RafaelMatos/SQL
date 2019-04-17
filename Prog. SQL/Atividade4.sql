-- Nome: Rafael Matos
-- RA: 8016047

DELIMITER $$
CREATE TRIGGER venda_produto_i 
AFTER insert 
ON venda
for each row



begin

CALL pro_pontoPedido((select pvend.IDPRODUTO 
from produtovda pvend join venda v 
where pvend.idvenda = v.idvenda
));

CALL `comercial`.`pro_qtdPedir`((select pvend.IDPRODUTO 
from produtovda pvend join venda v 
where pvend.idvenda = v.idvenda
));

end  $$

DELIMITER $$
CREATE TRIGGER compra_produto_i 
AFTER insert 
ON compra
for each row



begin

CALL pro_pontoPedido((select pcomp.IDPRODUTO 
from produtocpa pcomp join compra c 
where pcomp.idcompra = c.idcompra
));

CALL `comercial`.`pro_qtdPedir`((select pcomp.IDPRODUTO 
from produtocpa pcomp join compra c 
where pcomp.idcompra = c.idcompra
));

end  $$

DELIMITER $$
CREATE TRIGGER produto_logproduto_u 
AFTER update 
ON produto
for each row



begin

insert into logproduto(pontopedido,dta_hor_log,usuario) values(produto.PONTOPEDIDO,CURTIME(),user());

end  $$


