SELECT
art.nome_artista AS artista,
alb.nome_album AS album
FROM
SpotifyClone.artist AS art
JOIN
SpotifyClone.album AS alb
ON
art.nome_artista = 'Walter Phoenix'
AND
art.id_artista = alb.id_artista
ORDER BY
alb.nome_album;

