-- Criar uma querie que exiba 3 colunas na sequencia:
-- quantidade total de cancoes (Alias cancoes);
-- quantidade total de artistas (Alias artistas);
-- quantidade de albuns (Alias albuns).
SELECT
(SELECT COUNT(*) FROM SpotifyClone.songs) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.artist) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.album)  AS albuns;
