CREATE ROLE administrador;
CREATE ROLE analista;
CREATE ROLE operador;
CREATE ROLE consultor;
CREATE ROLE auditor;

CREATE USER admin_tn WITH PASSWORD 'AdminSegura123!';
CREATE USER analista_tn WITH PASSWORD 'AnalistaSegura123!';
CREATE USER operador_tn WITH PASSWORD 'OperadorSegura123!';
CREATE USER consultor_tn WITH PASSWORD 'ConsultorSegura123!';
CREATE USER auditor_tn WITH PASSWORD 'AuditorSegura123!';

GRANT administrador TO admin_tn;
GRANT analista TO analista_tn;
GRANT operador TO operador_tn;
GRANT consultor TO consultor_tn;
GRANT auditor TO auditor_tn;
