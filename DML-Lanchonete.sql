-- Inserir dados na tabela FUNCIONARIO
INSERT INTO FUNCIONARIO (idFunc, salario, nome, idGerente) VALUES
(1, 5000.00, 'Ana', 1),
(2, 6000.00, 'Bob', 1),
(3, 7000.00, 'Carlos', 1),
(4, 5500.00, 'Daniela', 1),
(5, 6500.00, 'Eduardo', 3),
(6, 7500.00, 'Fernanda', 3),
(7, 6000.00, 'Gabriel', 2),
(8, 7000.00, 'Helena', 2);

-- Inserir dados na tabela TELEFONE_FUNC
INSERT INTO TELEFONE_FUNC (idFunc, telefone) VALUES
(1, '12345678'),
(2, '23456789'),
(3, '34567890'),
(4, '45678901'),
(5, '56789012'),
(6, '67890123'),
(7, '78901234'),
(8, '89012345');

-- Inserir dados na tabela VENDEDOR
INSERT INTO VENDEDOR (idVend) VALUES
(1),
(2),
(3),
(4);

-- Inserir dados na tabela COZINHEIRO
INSERT INTO COZINHEIRO (idCoz, especialidade) VALUES

(5, 'Mediterrânea'),
(6, 'Indiana'),
(7, 'Francesa'),
(8, 'Brasileira');

-- Inserir dados na tabela PEDIDO
INSERT INTO PEDIDO (idPedido, nomeCliente, dataPedido, idVend) VALUES
(1, 'Reinaldo', '2023-01-15 12:00:00', 1),
(2, 'Pedro', '2023-02-20 13:30:00', 2),
(3, 'Reinaldo', '2023-03-25 15:00:00', 3),
(4, 'Reinaldo', '2023-04-10 16:30:00', 4),
(5, 'Erick', '2023-05-12 18:00:00', 1),
(6, 'Gabriel', '2023-06-22 19:30:00', 2),
(7, 'João', '2023-01-08 21:00:00', 3),
(8, 'Pedro', '2023-02-14 22:30:00', 3);

-- Inserir dados na tabela LANCHE
INSERT INTO LANCHE (idLanche, nome, valor, descricao, categoria) VALUES
(1, 'Pizza Margherita', 25.99, 'Molho de tomate, mussarela e manjericão', 'Pizza'),
(2, 'Yakissoba de Frango', 18.99, 'Macarrão frito com frango e legumes', 'Prato Principal'),
(3, 'Tacos de Carne', 15.99, 'Tortilhas de milho com carne temperada', 'Mexicano'),
(4, 'Lasanha Vegetariana', 22.99, 'Camadas de massa, molho branco e vegetais', 'Massa'),
(5, 'Salada Mediterrânea', 12.99, 'Salada fresca com azeitonas, feta e molho balsâmico', 'Salada'),
(6, 'Curry de Frango', 27.99, 'Curry cremoso com frango e especiarias indianas', 'Indiana'),
(7, 'Croissant de Presunto e Queijo', 8.99, 'Croissant recheado com presunto e queijo', 'Sanduíche'),
(8, 'Feijoada Completa', 32.99, 'Feijão preto com carne de porco e linguiça', 'Brasileira'),
(21, 'Hot Dog', 8.99, 'Pão, salsicha, ketchup, mostarda e cebola', 'Sanduíche');

-- Inserir dados na tabela ITEM
INSERT INTO ITEM (idItem, quantidade, idCoz, idLanche, idPedido) VALUES
(1, 2, 5, 1, 1),
(2, 1, 6, 2, 2),
(3, 3, 7, 3, 3),
(4, 2, 8, 4, 4),
(5, 1, 5, 5, 5),
(6, 2, 6, 6, 6),
(7, 1, 7, 7, 7),
(8, 3, 8, 8, 8);

-- Inserir dados na tabela INGREDIENTE
INSERT INTO INGREDIENTE (idIng, nome, descricao, categoria, qtdDisponivel) VALUES
(8, 'Molho de Tomate', 'Molho de tomate fresco', 'Molho', 100),
(9, 'Macarrão', 'Macarrão de trigo', 'Massa', 50),
(10, 'Carne Moída', 'Carne bovina moída', 'Carne', 30),
(11, 'Queijo Mussarela', 'Queijo mussarela fresco', 'Queijo', 40),
(12, 'Legumes Variados', 'Legumes diversos para Yakissoba', 'Vegetal', 25),
(13, 'Tortilhas de Milho', 'Tortilhas de milho para tacos', 'Tortilha', 20),
(14, 'Molho Branco', 'Molho branco para lasanha', 'Molho', 15),
(15, 'Vegetais Diversos', 'Vegetais variados para salada', 'Vegetal', 35),
(16, 'Frango Desossado', 'Peito de frango desossado', 'Carne', 20),
(17, 'Especiarias Indianas', 'Mix de especiarias indianas para curry', 'Tempero', 10),
(18, 'Presunto', 'Presunto cozido', 'Carne', 25),
(19, 'Queijo', 'Queijo para sanduíche', 'Queijo', 30),
(20, 'Feijão Preto', 'Feijão preto cozido', 'Feijão', 40);

-- Inserir dados na tabela LANCHE_INGREDIENTE
INSERT INTO LANCHE_INGREDIENTE (idIng, idLanche, quantidade) VALUES
(8, 1, 1),
(9, 1, 2),
(10, 2, 1),
(11, 2, 1),
(12, 2, 1),
(13, 3, 3),
(14, 4, 2),
(15, 4, 1),
(16, 5, 1),
(17, 6, 2),
(18, 7, 1),
(19, 7, 1),
(20, 8, 3),
(18, 21, 1),  
(19, 21, 1),  
(8, 21, 1),   
(10, 21, 1),  
(15, 21, 1);  

-- Inserir dados na tabela FORNECEDOR
INSERT INTO FORNECEDOR (idForn, nome) VALUES
(1, 'Fornecedor A'),
(2, 'Fornecedor B'),
(3, 'Fornecedor C'),
(4, 'Fornecedor D'),
(5, 'Fornecedor E'),
(6, 'Fornecedor F'),
(7, 'Fornecedor G'),
(8, 'Fornecedor H');

-- Inserir dados na tabela TELEFONE_FORN
INSERT INTO TELEFONE_FORN (idForn, telefone) VALUES
(1, '11111111'),
(2, '22222222'),
(3, '33333333'),
(4, '44444444'),
(5, '55555555'),
(6, '66666666'),
(7, '77777777'),
(8, '88888888');

-- Inserir dados na tabela FORNECEDOR_INGREDIENTE
INSERT INTO FORNECEDOR_INGREDIENTE (idForn, idIng, quantidade, valor) VALUES
(1, 8, 500, 5.00),
(2, 9, 200, 10.00),
(3, 10, 100, 2.00),
(4, 11, 150, 3.00),
(5, 12, 50, 1.50),
(6, 13, 30, 2.50),
(7, 14, 80, 1.00),
(8, 15, 120, 4.00);

