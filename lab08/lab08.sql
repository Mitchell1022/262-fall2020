-- Exercise 8.1
-- A
--SELECT *
--FROM Game
--ORDER BY time DESC;

-- B
--SELECT *
--From Game
--WHERE time BETWEEN '2020-10-16' AND '2020-10-23';

-- C
--SELECT name
--FROM Player
--WHERE name IS NOT NULL;

-- D
--SELECT Player.ID
  --FROM Player, Game, PlayerGame
  --WHERE score > 2000
    --AND playerID = Player.ID
    --AND gamerID = Game.ID;

-- E
--SELECT *
--FROM Player
--WHERE emailAddress LIKE '%@gmail%';

-- Excersise 8.2
-- A
SELECT score
FROM Player, PlayerGame
WHERE Player.ID = playerID
  AND Player.name = 'The King'
ORDER BY score DESC;

-- B
SELECT name
FROM Player, Game, PlayerGame
WHERE time = '2006-06-28 13:20:00'
  AND playerID = Player.ID
  AND gameID = Game.ID
ORDER BY score DESC
LIMIT 1;

-- C
-- It makes sure that both P1 & P2 are not the same player and in fact are different. Makes sure it doesn't match the same person twice

-- D
-- It is used so that you can compare things within the same table such as ID's.
-- You could use this to check that all ID's are in fact unique and that there are no duplicates




