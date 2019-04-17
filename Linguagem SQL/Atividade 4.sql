/*Atividade 4
Nome: Rafael Ibiapina Matos
RA:8016047*/
CREATE USER 'rafael'@'localhost' IDENTIFIED BY '1234';
GRANT ALL ON sistema_comercial.* to 'rafael'@'localhost';
GRANT SELECT ON sistema_comercial.Titulo_n_pago to 'rafael'@'localhost';
GRANT SELECT ON sistema_comercial.Titulo_n_recebido to 'rafael'@'localhost';