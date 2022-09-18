-- Relacao de albuns produzidos por um artista especifico ('Walter Phoenix'):
-- exibir nome do artista (Alias artista);
-- exibir nome do album (Alias album);
-- ordenados em ordem alfabetica pelo album.
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

