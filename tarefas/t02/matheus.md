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

## Função
