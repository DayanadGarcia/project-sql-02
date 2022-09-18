-- Encontrar as duas musicas mais tocadas no momento e apresentar em duas colunas:
-- nome da cancao (Alias cancao);
-- quantidade de pessoas que ja escutaram a mesma (Alias reproducoes);
-- ordenar em ordem decrescente com base nas reproducoes ou em ordem alfabetica pelo nome da cancao.
SELECT sg.nome_song AS cancao, COUNT(hist.id_song) AS reproducoes
FROM SpotifyClone.songs AS sg
LEFT JOIN SpotifyClone.history AS hist
ON hist.id_song = sg.id_song
GROUP BY sg.nome_song
ORDER BY COUNT(hist.id_song) DESC, sg.nome_song
LIMIT 2;