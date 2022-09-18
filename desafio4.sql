-- Criar uma querie que exiba pessoas usuarias ativas no ano de 2021, com base na data mais atual:
-- nome da pessoa usuaria (Alias usuario);
-- mostrar se o usuario esta ativo ou inativo (Alias condica_usuario);
-- ordenar em ordem alfabetica.
SELECT us.nome_user AS usuario, IF(MAX(YEAR(hist.data_reproducao) = 2021), 'Usuário ativo', 'Usuário inativo')
as condicao_usuario
FROM SpotifyClone.user AS us
INNER JOIN SpotifyClone.history	AS hist
ON us.id_user = hist.id_user
GROUP BY usuario;
