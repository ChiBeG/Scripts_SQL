/*
Alunos: 
1 - Retornar todos os lanches que o cliente Reinaldo pediu
2 - Obter o nome dos fornecedores que forneceram ingredientes para lanches com valor superior a 25.
3 - Obter a média de salário dos cozinheiros agrupados por especialidade.
4 - Listar os lanches com a média de quantidade pedida, ordenados pela média em ordem decrescente.
5 - Listar os ingredientes com sua disponibilidade e indicar "Baixa" se a disponibilidade for menor que 50.

Professor:
6 - Retornar o nome do fornecedor que já fornecei algum ingrediente do lanche “hot dog”
7 - Retornar o nome de cada cozinheiro, além do seu salário, seu telefone e a sua especialidade.
8 - Retornar o nome do cliente que realizou a maior quantidade de pedidos.
9 - Listar o id, a descrição e o nome dos lanches que foram vendidos no primeiro semestre de 2023.
10 - Listar o nome do gerente e o nome dos seus subordinados.
*/


-- 1 - Retornar todos os lanches que o cliente Reinaldo pediu
SELECT DISTINCT L.*
FROM LANCHE L
JOIN ITEM I ON L.idLanche = I.idLanche
JOIN PEDIDO P ON I.idPedido = P.idPedido
WHERE P.nomeCliente = 'Reinaldo';

-- 2 - Obter o nome dos fornecedores que forneceram ingredientes para lanches com valor superior a .
SELECT DISTINCT F.nome
FROM FORNECEDOR F
JOIN FORNECEDOR_INGREDIENTE FI ON F.idForn = FI.idForn
JOIN INGREDIENTE I ON FI.idIng = I.idIng
JOIN LANCHE_INGREDIENTE LI ON I.idIng = LI.idIng
JOIN LANCHE L ON LI.idLanche = L.idLanche
WHERE L.valor > 25;

-- 3 - Obter a média de salário dos cozinheiros agrupados por especialidade.
SELECT C.especialidade, AVG(F.salario) AS MediaSalario
FROM FUNCIONARIO F
JOIN COZINHEIRO C ON F.idFunc = C.idCoz
GROUP BY C.especialidade;

-- 4: Listar os lanches com a média de quantidade pedida, ordenados pela média em ordem decrescente.
SELECT L.idLanche, L.nome, AVG(I.quantidade) AS MediaQuantidade, SUM(I.quantidade) AS SomaQuantidade
FROM LANCHE L
LEFT JOIN ITEM I ON L.idLanche = I.idLanche
GROUP BY L.idLanche, L.nome
ORDER BY MediaQuantidade DESC;

-- 5: Listar os ingredientes com sua disponibilidade e indicar "Baixa" se a disponibilidade for menor que 50.
SELECT nome, qtdDisponivel,
       CASE WHEN qtdDisponivel < 50 THEN 'Baixa' ELSE 'Suficiente' END AS Disponibilidade
FROM INGREDIENTE;




-- 6 - Retornar o nome do fornecedor que já fornecei algum ingrediente do lanche “hot dog”
SELECT DISTINCT F.nome
FROM FORNECEDOR F
	JOIN FORNECEDOR_INGREDIENTE FI ON F.idForn = FI.idForn
	JOIN INGREDIENTE I ON FI.idIng = I.idIng
	JOIN LANCHE_INGREDIENTE LI ON I.idIng = LI.idIng
	JOIN LANCHE L ON LI.idLanche = L.idLanche
WHERE L.nome = 'hot dog';

-- 7 - Retornar o nome de cada cozinheiro, além do seu salário, seu telefone e a sua especialidade.
SELECT DISTINCT F.nome AS NomeCozinheiro,
    F.salario,TF.telefone,C.especialidade
FROM FUNCIONARIO F
LEFT JOIN TELEFONE_FUNC TF ON F.idFunc = TF.idFunc
JOIN COZINHEIRO C ON F.idFunc = C.idCoz;

-- 8 - Retornar o nome do cliente que realizou a maior quantidade de pedidos.


SELECT nomeCliente
FROM PEDIDO
GROUP BY nomeCliente
HAVING COUNT(*)  = 
(SELECT MAX(TotalPedidos) 
FROM (
	SELECT nomeCliente, COUNT(*) as TotalPedidos
	FROM PEDIDO	
	GROUP BY nomeCliente) AS SubQuery);




-- 9 - Listar o id, a descrição e o nome dos lanches que foram vendidos no primeiro semestre de 2023.
SELECT L.idLanche, L.descricao, L.nome
FROM LANCHE L
	JOIN ITEM I ON L.idLanche = I.idLanche
	JOIN PEDIDO P ON I.idPedido = P.idPedido
WHERE YEAR(P.dataPedido) = 2023 AND MONTH(P.dataPedido) BETWEEN 1 AND 6;

-- 10 - Listar o nome do gerente e o nome dos seus subordinados.
SELECT G.nome AS NomeGerente, S.nome AS NomeSubordinado
FROM FUNCIONARIO G
	JOIN FUNCIONARIO S ON G.idFunc = S.idGerente;

   
   
   
   
   
   