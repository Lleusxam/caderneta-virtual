SELECT DISTINCT u.nome AS cliente
FROM usuario u
JOIN venda v ON u.id = v.cliente_id
WHERE v.quantidade_de_parcelas > 1;