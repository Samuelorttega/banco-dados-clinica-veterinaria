-- ==========================================
-- MANIPULAÇÃO DE DADOS (DML)
-- Clínica Veterinária
-- ==========================================

-- ==========================================
-- 1. INSERT - CLIENTE
-- ==========================================

INSERT INTO cliente (nome, cpf)
VALUES
('Carlos Silva', '111.111.111-11'),
('Maria Santos', '222.222.222-22'),
('João Oliveira', '333.333.333-33');


-- ==========================================
-- 2. INSERT - ANIMAL
-- ==========================================

INSERT INTO animal (
    nome,
    especie_classe,
    sexo,
    data_nascimento,
    id_cliente
)
VALUES
('Rex', 'Cachorro', 'Macho', '2020-05-10', 1),
('Mimi', 'Gato', 'Fêmea', '2022-08-15', 2),
('Thor', 'Cachorro', 'Macho', '2019-03-20', 1);


-- ==========================================
-- 3. INSERT - VETERINARIO
-- ==========================================

INSERT INTO veterinario (
    cpf,
    nome,
    especialidade
)
VALUES
('444.444.444-44', 'Ana Costa', 'Clínica Geral'),
('555.555.555-55', 'Pedro Almeida', 'Cirurgia'),
('666.666.666-66', 'Juliana Souza', 'Dermatologia');


-- ==========================================
-- 4. INSERT - ATENDENTE
-- ==========================================

INSERT INTO atendente (id_cliente)
VALUES
(1),
(2);


-- ==========================================
-- 5. INSERT - PRODUTO
-- ==========================================

INSERT INTO produto (
    tipo,
    marca,
    descricao,
    valor_compra
)
VALUES
('Ração', 'Premier', 'Ração para cães adultos', 120.00),
('Medicamento', 'MSD', 'Antiparasitário veterinário', 45.90),
('Shampoo', 'Pet Clean', 'Shampoo para cães', 32.50);


-- ==========================================
-- 6. INSERT - SERVICO
-- ==========================================

INSERT INTO servico (
    descricao,
    valor
)
VALUES
('Consulta veterinária', 80.00),
('Vacinação', 60.00),
('Banho e tosa', 70.00);


-- ==========================================
-- 7. INSERT - ATENDIMENTO
-- ==========================================

INSERT INTO atendimento (
    data,
    descricao,
    id_cliente,
    id_animal,
    id_veterinario,
    id_atendente
)
VALUES
('2026-09-01', 'Consulta de rotina', 1, 1, 1, 1),
('2026-09-02', 'Vacinação', 2, 2, 2, 2),
('2026-09-03', 'Avaliação dermatológica', 1, 3, 3, 1);


-- ==========================================
-- 8. INSERT - ATENDIMENTO_PRODUTO
-- ==========================================

INSERT INTO atendimento_produto (
    id_atendimento,
    id_produto,
    quantidade,
    valor
)
VALUES
(1, 1, 2, 240.00),
(1, 2, 1, 45.90),
(2, 3, 1, 32.50);


-- ==========================================
-- 9. INSERT - ATENDIMENTO_SERVICO
-- ==========================================

INSERT INTO atendimento_servico (
    id_atendimento,
    id_servico,
    valor
)
VALUES
(1, 1, 80.00),
(1, 2, 60.00),
(2, 2, 60.00),
(3, 3, 70.00);


-- ==========================================
-- 10. UPDATE
-- ==========================================

-- Alterando o nome de um cliente
UPDATE cliente
SET nome = 'Carlos Oliveira'
WHERE id_cliente = 1;

-- Alterando a especialidade de um veterinário
UPDATE veterinario
SET especialidade = 'Clínica Geral e Dermatologia'
WHERE id_veterinario = 1;

-- Alterando o valor de um serviço
UPDATE servico
SET valor = 85.00
WHERE id_servico = 1;


-- ==========================================
-- 11. DELETE
-- ==========================================

-- Inserindo um produto que não possui
-- relacionamento com nenhum atendimento
INSERT INTO produto (
    tipo,
    marca,
    descricao,
    valor_compra
)
VALUES
('Acessório', 'Pet Shop', 'Coleira para cães', 25.00);

-- Excluindo o produto que não possui relacionamento
-- com atendimento_produto
DELETE FROM produto
WHERE descricao = 'Coleira para cães';
