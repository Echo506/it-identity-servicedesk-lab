USE EmpresaDB;
GO

CREATE LOGIN admin_db WITH PASSWORD = 'AdminSegura123!';
CREATE LOGIN analista WITH PASSWORD = 'AnalistaSegura123!';
CREATE LOGIN consulta WITH PASSWORD = 'ConsultaSegura123!';

CREATE USER admin_db FOR LOGIN admin_db;
CREATE USER analista FOR LOGIN analista;
CREATE USER consulta FOR LOGIN consulta;

CREATE ROLE rol_admin;
CREATE ROLE rol_analista;
CREATE ROLE rol_lectura;

ALTER ROLE rol_admin ADD MEMBER admin_db;
ALTER ROLE rol_analista ADD MEMBER analista;
ALTER ROLE rol_lectura ADD MEMBER consulta;
