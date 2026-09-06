CREATE TABLE IF NOT EXISTS atendimento_produto (
    id_atendimento INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    valor DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (id_atendimento, id_produto),

    CONSTRAINT fk_atendimento_produto_atendimento
        FOREIGN KEY (id_atendimento)
        REFERENCES atendimento(id_atendimento),

    CONSTRAINT fk_atendimento_produto_produto
        FOREIGN KEY (id_produto)
        REFERENCES produto(id_produto)
);