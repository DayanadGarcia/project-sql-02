SELECT sg.nome_song AS cancao, COUNT(hist.id_song) AS reproducoes
FROM SpotifyClone.songs AS sg
LEFT JOIN SpotifyClone.history AS hist
ON hist.id_song = sg.id_song
GROUP BY sg.nome_song
ORDER BY COUNT(hist.id_song) DESC, sg.nome_song
LIMIT 2;