## Função Quantidade de Consórcios em Aberto

Consulta Quantos Consórcios estão em aberto

- Parâmetros: nenhum
- Retorno: lista de nomes dos consórcios em aberto
- Utilização: usada para relatórios com relação a consórcios ativos.

```sql
CREATE OR REPLACE FUNCTION consorcio_em_aberto()
RETURNS TABLE(nome_consorcio VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT c.nome
    FROM consorcio c
    WHERE c.data_final > CURRENT_DATE;
END;
$$ LANGUAGE plpgsql;

```

## Função Produtos Mais Vendidos

Consulta os produtos mais comprados pelos clientes, assim retornando que tipo de produto é mais frenquente

- Parâmetros: nenhum
- Retorno: lista de nomes de produtos
- Utilização: usada para relação de produtos que são mais comprados

```sql


CREATE OR REPLACE FUNCTION produto_mais_vendido()
RETURNS TABLE(nome_produto VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT p.nome
    FROM produto p
    JOIN venda v ON p.id = v.produto_id
    GROUP BY p.id, p.nome
    ORDER BY COUNT(*) DESC;
END;
$$ LANGUAGE plpgsql;

```
