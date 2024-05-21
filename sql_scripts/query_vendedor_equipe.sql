SELECT v.nome_vendedor, e.nome_equipe
FROM Vendedor v
INNER JOIN Equipe e ON v.equipe_id = e.id;
