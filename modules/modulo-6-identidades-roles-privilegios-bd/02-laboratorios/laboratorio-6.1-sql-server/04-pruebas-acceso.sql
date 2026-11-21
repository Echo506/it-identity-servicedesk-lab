USE EmpresaDB;
GO

-- Consulta permitida para analista y consulta
SELECT * FROM clientes;

-- Consulta permitida para analista
SELECT * FROM ventas;

-- Insertar como operador
INSERT INTO ventas (id_cliente, id_producto, cantidad)
VALUES (1, 2, 3);

-- Revocar permiso de lectura
REVOKE SELECT ON dbo.ventas FROM rol_analista;
