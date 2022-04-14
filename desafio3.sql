SELECT us.nome_user AS usuario, COUNT(hist.id_song) AS qtde_musicas_ouvidas, ROUND(SUM(song.duracao)/60, 2) AS total_minutos
FROM SpotifyClone.user AS us
INNER JOIN SpotifyClone.history AS hist
ON hist.id_user = us.id_user
INNER JOIN SpotifyClone.songs AS song
ON hist.id_song = song.id_song
GROUP BY us.nome_user ORDER BY us.nome_user ASC;


