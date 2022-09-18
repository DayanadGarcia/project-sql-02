-- Exibir a quantidade de musicas presentes na lista de reproducao de um usuario ('Bill'):
-- quantidade (Alias quantidade_musicas_no_historico);
SELECT COUNT(hist.id_user) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS hist
JOIN
SpotifyClone.user AS U
ON
U.nome_user = 'Bill'
AND
hist.id_user = U.id_user;