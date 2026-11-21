SELECT * FROM productos;

INSERT INTO movimientos (id_producto, tipo_movimiento, cantidad)
VALUES (1, 'entrada', 10);

UPDATE movimientos
SET cantidad = 15
WHERE id_movimiento = 1;

REVOKE INSERT ON TABLE movimientos FROM operador;
