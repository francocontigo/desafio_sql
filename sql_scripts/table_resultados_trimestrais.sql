CREATE TABLE Resultado_Vendas_Trimestrais (
    ano INTEGER,
    trimestre INTEGER,
    total_vendas DECIMAL(10, 2),
    PRIMARY KEY (ano, trimestre)
);

INSERT INTO Resultado_Vendas_Trimestrais (ano, trimestre, total_vendas)
SELECT
    EXTRACT(YEAR FROM data_da_venda) AS ano,
    QUARTER(data_da_venda) AS trimestre,
    SUM(valor) AS total_vendas
FROM
    Venda
GROUP BY
    EXTRACT(YEAR FROM data_da_venda),
    QUARTER(data_da_venda)
ORDER BY
    EXTRACT(YEAR FROM data_da_venda),
    QUARTER(data_da_venda);
