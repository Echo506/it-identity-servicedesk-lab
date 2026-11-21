USE EmpresaDB;
GO

GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::dbo TO rol_admin;
GRANT SELECT ON SCHEMA::dbo TO rol_analista;
GRANT SELECT ON dbo.clientes TO rol_lectura;
GRANT SELECT ON dbo.productos TO rol_lectura;
