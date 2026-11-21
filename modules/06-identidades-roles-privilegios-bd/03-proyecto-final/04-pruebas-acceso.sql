SELECT * FROM productos;

INSERT INTO ventas (id_cliente, id_producto, cantidad)
VALUES (1, 1, 2);

UPDATE ventas
SET cantidad = 5
WHERE id_venta = 1;

SELECT * FROM auditoria;

REVOKE INSERT ON TABLE ventas FROM operador;
