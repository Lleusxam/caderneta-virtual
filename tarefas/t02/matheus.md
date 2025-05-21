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

## Procedimento :

Cadastra um novo consórcio no sistema.

- Parâmetros: nome (CHAR), data de início (DATE), data final (DATE).
- Retorno: Nenhum
- Utilização: Registrar um consórcio no banco de dados

```sql
CREATE OR REPLACE PROCEDURE registrar_consorcio(
    IN p_cliente_id INTEGER,
    IN nome_consorcio CHAR
    IN p_data_inicio Date
    IN p_data_fim DATE,
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO consorcio (cliente_id, data_inicio, data_fim)
    VALUES (p_cliente_id, p_data_inicio, p_data_fim);

    RAISE NOTICE 'Consórcio registrado com sucesso.';
END;
$$;

```

## Procedimento Excluir Consórcio

Exclui um consórcio do sistema.

Parâmetros: id (int) – identificador do consórcio a ser excluído.
Retorno: Nenhum
Utilização: Remove permanentemente um consórcio registrado no banco de dados.

```SQL
CREATE OR REPLACE PROCEDURE excluir_consorcio(
    IN p_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM consorcio
    WHERE id = p_id;

    RAISE NOTICE 'Consórcio com ID % excluído com sucesso.', p_id;
END;
$$;
```
