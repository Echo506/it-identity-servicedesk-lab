CREATE ROLE administrador;
CREATE ROLE operador;
CREATE ROLE consulta;

CREATE USER admin_pg WITH PASSWORD 'AdminSegura123!';
CREATE USER operador_pg WITH PASSWORD 'OperadorSegura123!';
CREATE USER consulta_pg WITH PASSWORD 'ConsultaSegura123!';

GRANT administrador TO admin_pg;
GRANT operador TO operador_pg;
GRANT consulta TO consulta_pg;
