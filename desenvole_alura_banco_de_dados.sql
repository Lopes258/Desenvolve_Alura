CREATE TABLE produto (
    Produto_ID BIGINT(22) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Produto_nome VARCHAR(45) NOT NULL,
    Tipo VARCHAR(45) NOT NULL,
    Valor_unitario DECIMAL(5, 2),
    Atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE endereco (
    Endereco_ID BIGINT(22) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(255) NOT NULL,
    endereco2 VARCHAR(255),
    CEP VARCHAR(10),
    Atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE loja (
    loja_id BIGINT(22) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    endereco_id BIGINT(22) UNSIGNED,
    FOREIGN KEY (endereco_id) REFERENCES endereco(Endereco_ID),
    Atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE estoque (
    estoque_id BIGINT(22) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    produto_id BIGINT(22) UNSIGNED,
    loja_id BIGINT(22) UNSIGNED,
    FOREIGN KEY (produto_id) REFERENCES produto(Produto_ID),
    FOREIGN KEY (loja_id) REFERENCES loja(loja_id),
    quantidade INT,
    Atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE funcionarios (
    funcionario_id BIGINT(22) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    sobrenome VARCHAR(45),
    email VARCHAR(100),
    data_efetivacao DATE,
    loja_id BIGINT(22) UNSIGNED,
    FOREIGN KEY (loja_id) REFERENCES loja(loja_id),
    Atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE clientes (
    cliente_id BIGINT(22) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    email VARCHAR(255),
    data_nascimento DATE,
    telefone VARCHAR(20),
    sexo CHAR(1),
    loja_id BIGINT(22) UNSIGNED,
    endereco_id BIGINT(22) UNSIGNED,
    FOREIGN KEY (loja_id) REFERENCES loja(loja_id),
    FOREIGN KEY (endereco_id) REFERENCES endereco(Endereco_ID),
    Atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE vendas_estoque (
    venda_id BIGINT(22) UNSIGNED,
    estoque_id BIGINT(22) UNSIGNED,
    quantidade INT,
    FOREIGN KEY (venda_id) REFERENCES vendas(venda_id),
    FOREIGN KEY (estoque_id) REFERENCES estoque(estoque_id)
);

CREATE TABLE vendas (
    venda_id BIGINT(22) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    funcionario_id BIGINT(22) UNSIGNED,
    cliente_id BIGINT(22) UNSIGNED,
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(funcionario_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);


INSERT INTO produto (Produto_nome, Tipo, Valor_unitario)
VALUES 
    ('Malbec Desodorante Colônia', 'Fragrância', 129.90),
    ('Quasar Desodorante Colônia', 'Fragrância', 99.90),
    ('Lily Essence Eau de Parfum', 'Fragrância', 189.90),
    ('Arbo Desodorante Colônia', 'Fragrância', 79.90),
    ('Glamour Love Me Desodorante Colônia', 'Fragrância', 109.90),
    ('Lily Absolu Eau de Parfum', 'Fragrância', 249.90),
    ('Creme Acetinado Lily', 'Cuidados com o corpo', 89.90),
    ('Creme Hidratante Nativa Spa Karité', 'Cuidados com o corpo', 59.90),
    ('Desodorante Corporal Floratta Blue', 'Cuidados com o corpo', 69.90),
    ('Shampoo Detox Match', 'Cuidados com o cabelo', 32.90),
    ('Condicionador Match Fonte da Nutrição', 'Cuidados com o cabelo', 34.90),
    ('Máscara Capilar Match Patrulha do Frizz', 'Cuidados com o cabelo', 39.90),
    ('Base Líquida Make B. Hyaluronic', 'Maquiagem', 89.90),
    ('Batom Matte Stick Make B. Urban Ballet', 'Maquiagem', 59.90),
    ('Corretivo Líquido Make B. Hyaluronic', 'Maquiagem', 49.90);
    
INSERT INTO endereco (endereco, endereco2, CEP)
VALUES 
    ('Rua A', 'Apt 101', '12345-678'),
    ('Rua B', 'Apt 102', '12345-678'),
    ('Rua C', 'Apt 103', '12345-678'),
    ('Rua D', 'Apt 104', '12345-678'),
    ('Rua E', 'Apt 105', '12345-678'),
    ('Rua F', 'Apt 106', '12345-678'),
    ('Rua G', 'Apt 107', '12345-678'),
    ('Rua H', 'Apt 108', '12345-678'),
    ('Rua I', 'Apt 109', '12345-678'),
    ('Rua J', 'Apt 110', '12345-678'),
    ('Rua K', 'Apt 111', '12345-678'),
    ('Rua L', 'Apt 112', '12345-678'),
    ('Rua M', 'Apt 113', '12345-678'),
    ('Rua N', 'Apt 114', '12345-678'),
    ('Rua O', 'Apt 115', '12345-678'),
    ('Rua P', 'Apt 116', '12345-678'),
    ('Rua Q', 'Apt 117', '12345-678'),
    ('Rua R', 'Apt 118', '12345-678'),
    ('Rua S', 'Apt 119', '12345-678'),
    ('Rua T', 'Apt 120', '12345-678'),
    ('Rua U', 'Apt 121', '12345-678'),
    ('Rua V', 'Apt 122', '12345-678'),
    ('Rua W', 'Apt 123', '12345-678'),
    ('Rua X', 'Apt 124', '12345-678'),
    ('Rua Y', 'Apt 125', '12345-678'),
    ('Rua Z', 'Apt 126', '12345-678'),
    ('Avenida A', 'Apt 201', '12345-678'),
    ('Avenida B', 'Apt 202', '12345-678'),
    ('Avenida C', 'Apt 203', '12345-678'),
    ('Avenida D', 'Apt 204', '12345-678'),
    ('Avenida E', 'Apt 205', '12345-678'),
    ('Avenida F', 'Apt 206', '12345-678'),
    ('Avenida G', 'Apt 207', '12345-678'),
    ('Avenida H', 'Apt 208', '12345-678'),
    ('Avenida I', 'Apt 209', '12345-678'),
    ('Avenida J', 'Apt 210', '12345-678'),
    ('Avenida K', 'Apt 211', '12345-678'),
    ('Avenida L', 'Apt 212', '12345-678'),
    ('Avenida M', 'Apt 213', '12345-678'),
    ('Avenida N', 'Apt 214', '12345-678'),
    ('Avenida O', 'Apt 215', '12345-678'),
    ('Avenida P', 'Apt 216', '12345-678'),
    ('Avenida Q', 'Apt 217', '12345-678'),
    ('Avenida R', 'Apt 218', '12345-678'),
    ('Avenida S', 'Apt 219', '12345-678'),
    ('Avenida T', 'Apt 220', '12345-678');
    
INSERT INTO loja (endereco_id)
VALUES 
    (1), -- Loja 1: Endereço na Rua A, Apt 101
    (11), -- Loja 2: Endereço na Rua K, Apt 111
    (21), -- Loja 3: Endereço na Avenida V, Apt 122
    (31); -- Loja 4: Endereço na Rua Y, Apt 125
    

INSERT INTO estoque (produto_id, loja_id, quantidade)
SELECT Produto_ID, 1, FLOOR(RAND() * 50) + 1 FROM produto ORDER BY RAND() LIMIT 15;

INSERT INTO estoque (produto_id, loja_id, quantidade)
SELECT Produto_ID, 2, FLOOR(RAND() * 50) + 1 FROM produto ORDER BY RAND() LIMIT 15;

INSERT INTO estoque (produto_id, loja_id, quantidade)
SELECT Produto_ID, 3, FLOOR(RAND() * 50) + 1 FROM produto ORDER BY RAND() LIMIT 15;

INSERT INTO estoque (produto_id, loja_id, quantidade)
SELECT Produto_ID, 4, FLOOR(RAND() * 50) + 1 FROM produto ORDER BY RAND() LIMIT 15;

SELECT * FROM estoque;

INSERT INTO clientes (nome, sobrenome, email, data_nascimento, telefone, sexo, loja_id, endereco_id)
VALUES 
    ('João', 'Silva', 'joao.silva@example.com', '1980-05-15', '555-1234', 'M', 1, 1),
    ('Maria', 'Santos', 'maria.santos@example.com', '1992-09-23', '555-5678', 'F', 1, 2),
    ('Pedro', 'Almeida', 'pedro.almeida@example.com', '1985-11-10', '555-9876', 'M', 1, 3),
    ('Ana', 'Oliveira', 'ana.oliveira@example.com', '1978-03-30', '555-4321', 'F', 1, 4),
	('Lucas', 'Ribeiro', 'lucas.ribeiro@example.com', '1987-07-12', '555-1111', 'M', 2, 5),
    ('Fernanda', 'Costa', 'fernanda.costa@example.com', '1995-01-28', '555-2222', 'F', 2, 6),
    ('Rafael', 'Gomes', 'rafael.gomes@example.com', '1983-12-05', '555-3333', 'M', 2, 7),
    ('Carolina', 'Martins', 'carolina.martins@example.com', '1976-08-17', '555-4444', 'F', 2, 8),
	('Gabriel', 'Pereira', 'gabriel.pereira@example.com', '1990-02-20', '555-5555', 'M', 3, 9),
    ('Juliana', 'Ferreira', 'juliana.ferreira@example.com', '1988-06-08', '555-6666', 'F', 3, 10),
    ('André', 'Rodrigues', 'andre.rodrigues@example.com', '1981-04-14', '555-7777', 'M', 3, 11),
    ('Patrícia', 'Dias', 'patricia.dias@example.com', '1973-10-03', '555-8888', 'F', 3, 12),
	('Rodrigo', 'Carvalho', 'rodrigo.carvalho@example.com', '1989-11-25', '555-9999', 'M', 4, 13),
    ('Aline', 'Lima', 'aline.lima@example.com', '1997-07-31', '555-1010', 'F', 4, 14),
    ('Bruno', 'Sousa', 'bruno.sousa@example.com', '1984-05-18', '555-2020', 'M', 4, 15),
    ('Tatiane', 'Pereira', 'tatiane.pereira@example.com', '1975-03-12', '555-3030', 'F', 4, 16);
    
INSERT INTO funcionarios (nome, sobrenome, email, data_efetivacao, loja_id)
VALUES 
    ('Ana', 'Souza', 'ana.souza@example.com', '2022-01-15', 1),
    ('Pedro', 'Silva', 'pedro.silva@example.com', '2022-02-20', 1),
    ('Mariana', 'Oliveira', 'mariana.oliveira@example.com', '2022-03-10', 1),
    ('Carolina', 'Costa', 'carolina.costa@example.com', '2022-01-20', 2),
    ('Rafael', 'Martins', 'rafael.martins@example.com', '2022-02-25', 2),
    ('Bruno', 'Gomes', 'bruno.gomes@example.com', '2022-03-15', 2),
    ('Gabriel', 'Pereira', 'gabriel.pereira@example.com', '2022-01-25', 3),
    ('Aline', 'Rodrigues', 'aline.rodrigues@example.com', '2022-02-28', 3),
    ('Rodrigo', 'Carvalho', 'rodrigo.carvalho@example.com', '2022-01-30', 4),
    ('Tatiane', 'Lima', 'tatiane.lima@example.com', '2022-02-05', 4);
    
ALTER TABLE estoque ADD COLUMN valor_unitario DECIMAL(10, 2);
    
UPDATE estoque e
	INNER JOIN produto p ON e.produto_id = p.Produto_ID
	SET e.valor_unitario = p.Valor_unitario;
    
SELECT * FROM vendas_estoque;
    
INSERT INTO vendas (funcionario_id, cliente_id, valor_total)
SELECT 
    F.funcionario_id,
    C.cliente_id,
    ROUND(RAND() * 1000, 2) AS valor_total 
FROM 
    (SELECT funcionario_id FROM funcionarios ORDER BY RAND() LIMIT 200) AS F, 
    (SELECT cliente_id FROM clientes ORDER BY RAND() LIMIT 200) AS C; 

INSERT INTO vendas_estoque (venda_id, estoque_id, quantidade)
SELECT 
    v.venda_id,
    e.estoque_id,
    FLOOR(RAND() * 5) + 1 AS quantidade 
FROM 
    (SELECT venda_id FROM vendas ORDER BY RAND() LIMIT 200) AS v, 
    (SELECT estoque_id FROM estoque ORDER BY RAND() LIMIT 200) AS e;
    
ALTER TABLE funcionarios
ADD COLUMN quantidade_vendas INT;


UPDATE funcionarios AS f
SET f.quantidade_vendas = (
    SELECT COUNT(v.venda_id)
    FROM vendas AS v
    WHERE v.funcionario_id = f.funcionario_id
);

ALTER TABLE clientes
ADD COLUMN pontos INT DEFAULT 0;


UPDATE clientes AS c
SET c.pontos = (
    SELECT FLOOR(SUM(v.valor_total) / 300) * 10
    FROM vendas AS v
    WHERE v.cliente_id = c.cliente_id
);
