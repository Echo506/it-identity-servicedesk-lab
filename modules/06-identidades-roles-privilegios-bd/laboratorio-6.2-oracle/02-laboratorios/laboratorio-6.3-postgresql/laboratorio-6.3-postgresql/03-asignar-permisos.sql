GRANT CONNECT ON DATABASE inventario TO administrador, operador, consulta;

GRANT USAGE ON SCHEMA public TO administrador, operador, consulta;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO administrador;

GRANT SELECT, INSERT, UPDATE ON TABLE movimientos TO operador;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO consulta;
