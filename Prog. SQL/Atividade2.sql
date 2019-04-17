/*
	Nome: Rafael Ibiapina Matos
	RA: 8016047
*/

DELIMITER $$
CREATE FUNCTION f_mov_titulo (p_mov varchar(1)) RETURNS varchar(10)
BEGIN  

  if p_mov = 'R' then return "Receber";
  elseif p_mov = 'P' then return "Pagar";
  end if;
END $$

SELECT *,f_mov_titulo(MOVIMENTO) AS DETALHE FROM titulo;


DELIMITER $$
CREATE FUNCTION f_conf_fornc (p_conf varchar(1)) RETURNS varchar(15)
BEGIN  

  Case 
		WHEN p_conf = 'O' THEN RETURN 'ÓTIMO';
        WHEN p_conf = 'B' THEN RETURN'BOM';
        WHEN p_conf = 'S' THEN RETURN'SATISFATÓRIO';
        WHEN p_conf = 'R' THEN RETURN'RUÍM';
        WHEN p_conf = 'P' THEN RETURN'PÉSSIMO';
END CASE;
 END $$

SELECT f_conf_fornc(CONFIABILIDADE) AS CONFIABILIDADE FROM produtoforn;