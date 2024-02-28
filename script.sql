

DO $$
BEGIN
    CREATE TABLE IF NOT EXISTS clientes(
        id_cliente SERIAL PRIMARY KEY,
        nome VARCHAR(30) UNIQUE,
        limite NUMERIC(19,2)
    );

    INSERT INTO clientes (nome, limite)
    VALUES
        ('o barato sai caro', 1000),
        ('zan corp ltda', 800),
        ('les cruders', 10000),
        ('padaria joia de cocaia', 100000),
        ('kid mais', 5000);
END; $$