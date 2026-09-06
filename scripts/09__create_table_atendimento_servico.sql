CREATE TABLE IF NOT EXISTS atendimento_servico (
    id_atendimento INTEGER NOT NULL,
    id_servico INTEGER NOT NULL,
    valor DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (id_atendimento, id_servico),

    CONSTRAINT fk_atendimento_servico_atendimento
        FOREIGN KEY (id_atendimento)
        REFERENCES atendimento(id_atendimento),

    CONSTRAINT fk_atendimento_servico_servico
        FOREIGN KEY (id_servico)
        REFERENCES servico(id_servico)
);