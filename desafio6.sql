-- Informacoes sobre o faturamento da empresa, baseado nos planos de assinatura:
-- exibir o menor valor de plano pago por uma pessoa usuaria (Alias faturamento_minimo);
-- exibir o maior valor de plano pago por uma pessoa usuaria (Alias faturamento_maximo);
-- exibir a media de valor de todos os planos pagos pelas pessoas usuarias (Alias faturamento_medio);
-- exibir o valor total obtido com todos os planos das pessoas usuarias (Alias faturamento_total);
SELECT
FORMAT(MIN(P.valor), 2) AS faturamento_minimo,
FORMAT(MAX(P.valor), 2) AS faturamento_maximo,
FORMAT(AVG(P.valor), 2) AS faturamento_medio,
FORMAT(SUM(P.valor), 2) AS faturamento_total
FROM
SpotifyClone.user AS U
INNER JOIN
SpotifyClone.plan AS P
ON
U.id_plano = P.id_plano;
