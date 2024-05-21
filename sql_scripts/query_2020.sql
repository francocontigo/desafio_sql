SELECT v.id, c.nome_cliente
FROM Venda v
INNER JOIN Cliente c ON v.cliente_id = c.id
WHERE EXTRACT(YEAR FROM v.data_da_venda) = 2020;
