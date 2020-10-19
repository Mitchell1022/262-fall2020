-- Mitchell Niesar
-- 10/17/2020
-- Monopoly Sample SQL Database

DROP TABLE IF EXISTS OwnedProperties;
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Player;

--Creating Schema
--Creates Game Table
CREATE TABLE Game (
  ID integer PRIMARY KEY,
  time timestamp
);

--Creates Player Table
CREATE TABLE Player (
  ID integer PRIMARY KEY,
  emailAddress varchar(50) NOT NULL,
  name varchar(50)
);

-- Creates PlayerGame Details
CREATE TABLE PlayerGame (
  ID integer PRIMARY KEY,
  gameID integer REFERENCES Game(ID),
  playerID integer REFERENCES Player(ID),
  score integer,
  money integer,
  position integer
);

--Creates Owned Properties Table
CREATE TABLE OwnedProperties (
  gameID integer REFERENCES Game(ID),
  playerID integer REFERENCES Player(ID),
  playerName varchar(50) REFERENCES Player(name);
  name varchar(50),
  houses integer,
  hotels integer
);

-- Grant Access to Selecting Data
GRANT SELECT ON Game to PUBLIC;
GRANT SELECT ON Player to PUBLIC;
GRANT SELECT ON PlayerGame to PUBLIC;
GRANT SELECT ON Player to PUBLIC;
GRANT SELECT ON OwnedProperties to PUBLIC;

-- Adding Iterations
INSERT INTO Game VALUES (1, '2006-06-27 08:00:00');
INSERT INTO Game VALUES (2, '2006-06-28 13:20:00');
INSERT INTO Game VALUES (3, '2006-06-29 18:41:00');

INSERT INTO PlayerVALUES (1, 'me@calvin.edu', "Mitch");
INSERT INTO Player VALUES (2, 'king@gmail.edu', 'The King');
INSERT INTO Player VALUES (3, 'dog@gmail.edu', 'Dogbreath');

INSERT INTO PlayerGame VALUES (1, 1, 1, 0.00, 1000, "Jail");
INSERT INTO PlayerGame VALUES (2, 1, 2, 0.00, 1000, "GO");
INSERT INTO PlayerGame VALUES (3, 1, 3, 750, 1250, "Luxury Tax");
INSERT INTO PlayerGame VALUES (4, 1, 4, 1000, 2000, "Park Place");
INSERT INTO PlayerGame VALUES (5, 1, 5, 1500, 2500, "Reading Railroad");
INSERT INTO PlayerGame VALUES (6, 1, 6, 2000, 3000, "Vermont Avenue");
INSERT INTO PlayerGame VALUES (7, 1, 7, 4000, 4500, "Conneticut Avenue");
INSERT INTO PlayerGame VALUES (8, 1, 8, 5000, 5000, "GO");

INSERT INTO OwnedProperties VALUES (1, 1, "Park Place", "Mitch", 0, 1);
INSERT INTO OwnedProperties VALUES (1, 2, "Conneticut Avenue", "The King", 2, 0);
INSERT INTO OwnedProperties VALUES (1, 3, "Reading Railroad", "Dogbreath", 0, 0);


