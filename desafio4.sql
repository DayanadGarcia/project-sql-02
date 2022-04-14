SELECT us.nome_user AS usuario, IF(MAX(YEAR(hist.data_reproducao) = 2021), 'Usuário ativo', 'Usuário inativo')
as condicao_usuario
FROM SpotifyClone.user AS us
INNER JOIN SpotifyClone.history	AS hist
ON us.id_user = hist.id_user
GROUP BY usuario;
