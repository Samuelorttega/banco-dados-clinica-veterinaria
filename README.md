Clínica Veterinária

Apresentação do Projeto

Tema

Clínica Veterinária

Objetivo Geral

O objetivo deste projeto é desenvolver um banco de dados relacional para gerenciar as informações e os processos de uma clínica veterinária.

O sistema permitirá o cadastro de clientes (tutores), animais, veterinários, atendimentos e produtos, além do controle das vendas realizadas pela clínica.

Público-Alvo

O banco de dados é destinado a clínicas veterinárias e seus funcionários, como atendentes, veterinários e responsáveis pela administração, que precisam organizar e consultar informações sobre clientes, animais, atendimentos e vendas.

erDiagram  
    CLIENTE {  
        int id_cliente PK  
        varchar nome  
        varchar cpf  
    }  
  
    ANIMAL {  
        int id_animal PK  
        varchar nome  
        varchar especie_classe  
        varchar sexo  
        date data_nascimento  
        int id_cliente FK  
    }  
  
    VETERINARIO {  
        int id_veterinario PK  
        varchar cpf  
        varchar nome  
        varchar especialidade  
    }  
  
    ATENDIMENTO {  
        int id_atendimento PK  
        date data  
        varchar descricao  
        int id_cliente FK  
        int id_animal FK  
        int id_veterinario FK  
        int id_atendente FK  
    }  
  
    ATENDENTE {  
        int id_atendente PK  
        int id_cliente FK  
    }  
  
    PRODUTO {  
        int id_produto PK  
        varchar tipo  
        varchar marca  
        varchar descricao  
        decimal valor_compra  
    }  
  
    SERVICO {  
        int id_servico PK  
        varchar descricao  
        decimal valor  
    }  
  
    ATENDIMENTO_PRODUTO {  
        int id_atendimento FK  
        int id_produto FK  
        int quantidade  
        decimal valor  
    }  
  
    ATENDIMENTO_SERVICO {  
        int id_atendimento FK  
        int id_servico FK  
        decimal valor  
    }  
  
    CLIENTE ||--o{ ANIMAL : possui  
    CLIENTE ||--o| ATENDENTE : pode_ser  
    CLIENTE ||--o{ ATENDIMENTO : solicita  
    ANIMAL ||--o{ ATENDIMENTO : recebe  
    VETERINARIO ||--o{ ATENDIMENTO : realiza  
    ATENDENTE ||--o{ ATENDIMENTO : registra  
    ATENDIMENTO ||--o{ ATENDIMENTO_PRODUTO : utiliza  
    PRODUTO ||--o{ ATENDIMENTO_PRODUTO : utilizado_em  
    ATENDIMENTO ||--o{ ATENDIMENTO_SERVICO : utiliza  
    SERVICO ||--o{ ATENDIMENTO_SERVICO : utilizado_em