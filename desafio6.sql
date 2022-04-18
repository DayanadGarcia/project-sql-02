SELECT FORMAT(MIN(DISTINCT P.valor), 2) AS faturamento_minimo, FORMAT(ROUND(MAX(DISTINCT P.valor)), 2) AS faturamento_maximo,
(SELECT
FORMAT(ROUND(AVG(P.valor)), 2)
FROM SpotifyClone.user AS U
INNER JOIN SpotifyClone.plan AS P
ON U.id_plano = P.id_plano) AS faturamento_medio,
(SELECT
FORMAT(ROUND(SUM(P.valor)), 2)
FROM SpotifyClone.user AS U
INNER JOIN SpotifyClone.plan AS P
ON U.id_plano = P.id_plano) AS faturamento_total
FROM SpotifyClone.user AS U
INNER JOIN SpotifyClone.plan AS P
ON U.id_plano = P.id_plano;
