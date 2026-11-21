GRANT CONNECT ON DATABASE technova TO administrador, analista, operador, consultor, auditor;

GRANT USAGE ON SCHEMA public TO administrador, analista, operador, consultor, auditor;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO administrador;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO analista;

GRANT SELECT, INSERT, UPDATE ON TABLE ventas TO operador;

GRANT SELECT ON TABLE productos TO consultor;

GRANT SELECT ON TABLE auditoria TO auditor;
