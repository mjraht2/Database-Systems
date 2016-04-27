CREATE TABLE Character (
  ID      char(4) not null,
  FirstName TEXT,
  LastName TEXT,
  HomePlanet TEXT,
 primary key(ID)
);

INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('001', 'Aoife', 'Flanagan', 'Felucia');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('002', 'Mary', 'Vodola', 'Naboo');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('003', 'Danielle', 'Shine', 'Hoth');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('004', 'Ben', 'Galassi', 'Serenno');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('005', 'Patrick', 'Haggerty', 'Tatooine');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('006', 'Frankie', 'Biancardi', 'Dagobah');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('007', 'Harrison', 'Buzzi', 'Endor');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('008', 'Austin', 'Adamcheck', 'Geonosis');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('009', 'Patrick', 'Milano', 'Mustafar');
INSERT INTO Character (ID, FirstName, LastName, HomePlanet)
  VALUES ('010', 'Matthew', 'Rahtelli', 'Utapau');

CREATE TABLE Species (
  ID      char(4) not null REFERENCeS Character(ID),
  Name    TEXT,
 primary key(ID)
);

INSERT INTO Species (ID, Name)
  VALUES ('001', 'Twilek');
INSERT INTO Species (ID, Name)
  VALUES ('002', 'Gungan');
INSERT INTO Species (ID, Name)
  VALUES ('003', 'Human');
INSERT INTO Species (ID, Name)
  VALUES ('004', 'Human');
INSERT INTO Species (ID, Name)
  VALUES ('005', 'Jawa');
INSERT INTO Species (ID, Name)
  VALUES ('006', 'Yoda');
INSERT INTO Species (ID, Name)
  VALUES ('007', 'Ewok');
INSERT INTO Species (ID, Name)
  VALUES ('008', 'Geonosian');
INSERT INTO Species (ID, Name)
  VALUES ('009', 'Mustafarian');
INSERT INTO Species (ID, Name)
  VALUES ('010', 'Pauan');
  
CREATE TABLE Gamertag (
  ID      char(4) not null REFERENCeS Character(ID),
  Name    TEXT,
 primary key(ID)
);

INSERT INTO Gamertag (ID, Name)
  VALUES ('001', 'Dancergirl18');
INSERT INTO Gamertag (ID, Name)
  VALUES ('002', 'Ihatefashion13');
INSERT INTO Gamertag (ID, Name)
  VALUES ('003', 'SoftballShine');
INSERT INTO Gamertag (ID, Name)
  VALUES ('004', 'Theitalian015');
INSERT INTO Gamertag (ID, Name)
  VALUES ('005', 'Thegame017');
INSERT INTO Gamertag (ID, Name)
  VALUES ('006', 'XYZJesus');
INSERT INTO Gamertag (ID, Name)
  VALUES ('007', 'Hbuzzi48');
INSERT INTO Gamertag (ID, Name)
  VALUES ('008', 'Mexicanlover5');
INSERT INTO Gamertag (ID, Name)
  VALUES ('009', 'Pmilzforlife');
INSERT INTO Gamertag (ID, Name)
  VALUES ('010', 'Mattiesquared02');
  
CREATE TABLE Type (
  ID      char(4) not null REFERENCeS Character(ID),
  Name    TEXT,
 primary key(ID)
);

INSERT INTO Type (ID, Name)
  VALUES ('001', 'Jedi');
INSERT INTO Type (ID, Name)
  VALUES ('002', 'Jedi');
INSERT INTO Type (ID, Name)
  VALUES ('003', 'Scavenger');
INSERT INTO Type (ID, Name)
  VALUES ('004', 'Mercenary');
INSERT INTO Type (ID, Name)
  VALUES ('005', 'Scavenger');
INSERT INTO Type (ID, Name)
  VALUES ('006', 'Jedi');
INSERT INTO Type (ID, Name)
  VALUES ('007', 'Mercenary');
INSERT INTO Type (ID, Name)
  VALUES ('008', 'Scavenger');
INSERT INTO Type (ID, Name)
  VALUES ('009', 'Mercenary');
INSERT INTO Type (ID, Name)
  VALUES ('010', 'Jedi');

CREATE TABLE Equipment (
  ID      char(4) not null REFERENCeS Character(ID),
  AID     char(8) not NULL REFERENCES Armor(AID),
  WID     char(8) not NULL REFERENCES Weapons(WID),
 primary key(ID, AID, WID)
);

INSERT INTO Equipment(ID, AID, WID)
  VALUES ('001', '200', '105');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('001', '200', '107');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('001', '200', '108');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('002', '200', '106');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('002', '200', '104');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('002', '200', '109');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('002', '200', '102');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('003', '201', '106');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('003', '208', '109');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('004', '202', '103');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('004', '203', '109');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('004', '209', '101');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('005', '206', '103');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('005', '204', '104');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('006', '200', '106');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('006', '200', '102');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('006', '200', '105');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('006', '200', '108');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('007', '202', '103');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('007', '208', '109');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('007', '204', '104');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('008', '207', '101');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('008', '206', '102');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('009', '209', '101');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('009', '203', '109');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('009', '201', '106');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('009', '202', '103');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('010', '204', '104');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('010', '208', '109');
INSERT INTO Equipment(ID, AID, WID)
  VALUES ('010', '201', '106');
  


CREATE TABLE Weapons (
  WID      char(4) not null,
  NAME     TEXT,
  Description TEXT,
  Rating   INTEGER NOT NULL,
  Cost     CHAR(8) NOT NULL,
 primary key(WID)
);

INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('100', 'Sword', 'A bladed melee weapon', '4', '200');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('101', 'Vibro axe', 'A vibrating lethal ax', '7', '400');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('102', 'Blaster Pistol', 'Fires cohesive bursts of light-energy', '5', '300');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('103', 'Blaster Rifle', 'More powerful blaster pistol', '8', '450');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('104', 'Bowcaster', 'A laser crossbow', '9', '500');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('105', 'Lightsaber', 'A laser sword used by Jedi', '10', '600');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('106', 'Dagger', 'A small bladed melee weapon', '1', '50');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('107', 'Seismic Charge', 'Releases a devestaing sound', '4', '200');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('108', 'Thermal Detonator', 'Deadly explosive device', '6', '350');
INSERT INTO Weapons(WID, Name, Description, Rating, Cost)
  VALUES ('109', 'Electrostaff', 'Electrified pole-like melee weapon', '7', '400');


CREATE TABLE LightWeapons (
  WID     char(8) not NULL REFERENCES Weapons(WID),
 primary key(WID)
);

INSERT INTO LightWeapons(WID)
  VALUES ('100');
INSERT INTO LightWeapons(WID)
  VALUES ('102');
INSERT INTO LightWeapons(WID)
  VALUES ('106');
INSERT INTO LightWeapons(WID)
  VALUES ('107');
INSERT INTO LightWeapons(WID)
  VALUES ('108');

CREATE TABLE MediumWeapons (
  WID     char(8) not NULL REFERENCES Weapons(WID),
 primary key(WID)
);

INSERT INTO MediumWeapons(WID)
  VALUES ('101');
INSERT INTO MediumWeapons(WID)
  VALUES ('103');
INSERT INTO MediumWeapons(WID)
  VALUES ('105');
  
CREATE TABLE HeavyWeapons (
  WID     char(8) not NULL REFERENCES Weapons(WID),
 primary key(WID)
);

INSERT INTO HeavyWeapons(WID)
  VALUES ('104');
INSERT INTO HeavyWeapons(WID)
  VALUES ('109');  

CREATE TABLE Armor (
  AID      char(4) not null,
  NAME     TEXT,
  Description TEXT,
  Rating   INT NOT NULL,
  Cost     CHAR(8) NOT NULL,
 primary key(AID)
);

INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('200', 'Robe', 'Generic garments', '1', '100');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('201', 'Light Combat Suit', 'Lighter version of combat suit', '2', '200');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('202', 'Fiber Armor', 'Ancient body armor woven together', '3', '300');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('203', 'Jensaarai Armor', 'Specialized Jensaari armor', '4', '400');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('204', 'Sith Battle Suit', 'Remarkably flexible medium combat suit', '5', '500');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('205', 'Reinforced Battle Armor', 'Moded standard battle armor', '6', '600');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('206', 'Republic Mod Armor', 'Modular armor issued to the Republic', '7', '700');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('207', 'Powered Light Battle Armor', 'Power assisted armor', '8', '800');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('208', 'Durasteel Heavy Armor', 'Reduces wait but restricts movement', '9', '900');
INSERT INTO Armor(AID, Name, Description, Rating, Cost)
  VALUES ('209', 'Mandalorian Battle Suit', 'Personal battlesuit of Mandalore', '10', '1000');

CREATE TABLE LightArmor (
  AID     char(8) not NULL REFERENCES Armor(AID),
 primary key(AID)
);

INSERT INTO LightArmor(AID)
  VALUES ('200');
INSERT INTO LightArmor(AID)
  VALUES ('201');
INSERT INTO LightArmor(AID)
  VALUES ('202');
INSERT INTO LightArmor(AID)
  VALUES ('203');

CREATE TABLE MediumArmor (
  AID     char(8) not NULL REFERENCES Armor(AID),
 primary key(AID)
);

INSERT INTO MediumArmor(AID)
  VALUES ('204');
INSERT INTO MediumArmor(AID)
  VALUES ('205');
INSERT INTO MediumArmor(AID)
  VALUES ('206');
INSERT INTO MediumArmor(AID)
  VALUES ('207');
  
CREATE TABLE HeavyArmor (
  AID     char(8) not NULL REFERENCES Armor(AID),
 primary key(AID)
);

INSERT INTO HeavyArmor(AID)
  VALUES ('208');
INSERT INTO HeavyArmor(AID)
  VALUES ('209');
  
CREATE TABLE Attributes (
  ATID      char(4) not null,
  NAME     TEXT,
  Description TEXT,
  Rank   Char(8) NOT NULL,
 primary key(ATID)
);

INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('300', 'Strength', 'How physically powerful you are');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('301', 'Dexterity', 'Controls movement speed');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('302', 'Endurance', 'How sturdy you are');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('303', 'Intelligence', 'How smart you are');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('304', 'Alertness', 'Openness to surroundings');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('305', 'Charisma', 'Controls social skills');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('306', 'Energy Resistance', 'Protects you from energy');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('307', 'Health', 'How many hitpoints you have');
INSERT INTO Attributes(ATID, Name, Description)
  VALUES ('308', 'Chance', 'Percentage of good things happening');

CREATE TABLE Quality (
  ID      char(4) not null REFERENCEs Character(ID),
  ATID    CHAR(4) NOT NULL REFERENCES Attributes(ATID),
 primary KEY(ID, ATID)
);

INSERT INTO Quality(ID, ATID)
  VALUES ('001', '300');
INSERT INTO Quality(ID, ATID)
  VALUES ('001', '305');
INSERT INTO Quality(ID, ATID)
  VALUES ('001', '304');
INSERT INTO Quality(ID, ATID)
  VALUES ('001', '308');
INSERT INTO Quality(ID, ATID)
  VALUES ('002', '306');
INSERT INTO Quality(ID, ATID)
  VALUES ('002', '303');
INSERT INTO Quality(ID, ATID)
  VALUES ('002', '301');
INSERT INTO Quality(ID, ATID)
  VALUES ('003', '305');
INSERT INTO Quality(ID, ATID)
  VALUES ('003', '308');
INSERT INTO Quality(ID, ATID)
  VALUES ('004', '301');
INSERT INTO Quality(ID, ATID)
  VALUES ('004', '302');
INSERT INTO Quality(ID, ATID)
  VALUES ('004', '300');
INSERT INTO Quality(ID, ATID)
  VALUES ('004', '303');
INSERT INTO Quality(ID, ATID)
  VALUES ('005', '307');
INSERT INTO Quality(ID, ATID)
  VALUES ('005', '302');
INSERT INTO Quality(ID, ATID)
  VALUES ('005', '308');
INSERT INTO Quality(ID, ATID)
  VALUES ('006', '300');
INSERT INTO Quality(ID, ATID)
  VALUES ('006', '301');
INSERT INTO Quality(ID, ATID)
  VALUES ('006', '305');
INSERT INTO Quality(ID, ATID)
  VALUES ('006', '307');
INSERT INTO Quality(ID, ATID)
  VALUES ('007', '308');
INSERT INTO Quality(ID, ATID)
  VALUES ('007', '305');
INSERT INTO Quality(ID, ATID)
  VALUES ('008', '302');
INSERT INTO Quality(ID, ATID)
  VALUES ('008', '300');
INSERT INTO Quality(ID, ATID)
  VALUES ('008', '308');
INSERT INTO Quality(ID, ATID)
  VALUES ('009', '304');
INSERT INTO Quality(ID, ATID)
  VALUES ('009', '301');
INSERT INTO Quality(ID, ATID)
  VALUES ('009', '303');
INSERT INTO Quality(ID, ATID)
  VALUES ('009', '306');


CREATE TABLE Items (
  INID        char(4) not null,
  NAME        TEXT,
  Description TEXT,
  Cost        INTEGER NOT NULL,
 primary key(INID)
);

INSERT INTO Items(INID, NAME, Description, COST)
  VALUES ('500', 'Stimpack', 'Boosts health', '50');
INSERT INTO Items(INID, NAME, Description, COST)
  VALUES ('501', 'Energy Shield', 'Protects from energy attacks for a short time', '75');
INSERT INTO Items(INID, NAME, Description, COST)
  VALUES ('502', 'Lockpick', 'Used to pick chests or locked doors', '5');
INSERT INTO Items(INID, NAME, Description, COST)
  VALUES ('503', 'GemPack', 'Chance getting a rare gem', '250');
INSERT INTO Items(INID, NAME, Description, COST)
  VALUES ('504', 'Mine', 'Place down for protection against enemies', '200');
INSERT INTO Items(INID, NAME, Description, COST)
  VALUES ('505', 'Antidote Kit', 'Removes any poison from your body', '100');
INSERT INTO Items(INID, NAME, Description, COST)
  VALUES ('506', 'Computer Spike', 'Enables to easily hack into a computer', '125');


CREATE TABLE Inventory (
  ID      char(4) not null REFERENCEs Character(ID),
  INID    CHAR(4) NOT NULL REFERENCES Items(INID),
 primary KEY(ID, INID)
);

INSERT INTO Inventory(ID, INID)
  VALUES ('001', '503');
INSERT INTO Inventory(ID, INID)
  VALUES ('001', '506');
INSERT INTO Inventory(ID, INID)
  VALUES ('001', '504');
INSERT INTO Inventory(ID, INID)
  VALUES ('002', '502');
INSERT INTO Inventory(ID, INID)
  VALUES ('002', '506');
INSERT INTO Inventory(ID, INID)
  VALUES ('003', '501');
INSERT INTO Inventory(ID, INID)
  VALUES ('003', '504');
INSERT INTO Inventory(ID, INID)
  VALUES ('003', '505');
INSERT INTO Inventory(ID, INID)
  VALUES ('004', '500');
INSERT INTO Inventory(ID, INID)
  VALUES ('004', '503');
INSERT INTO Inventory(ID, INID)
  VALUES ('005', '506');
INSERT INTO Inventory(ID, INID)
  VALUES ('005', '503');
INSERT INTO Inventory(ID, INID)
  VALUES ('005', '504');
INSERT INTO Inventory(ID, INID)
  VALUES ('005', '501');
INSERT INTO Inventory(ID, INID)
  VALUES ('006', '505');
INSERT INTO Inventory(ID, INID)
  VALUES ('006', '506');
INSERT INTO Inventory(ID, INID)
  VALUES ('006', '502');
INSERT INTO Inventory(ID, INID)
  VALUES ('007', '501');
INSERT INTO Inventory(ID, INID)
  VALUES ('007', '502');
INSERT INTO Inventory(ID, INID)
  VALUES ('007', '503');
INSERT INTO Inventory(ID, INID)
  VALUES ('007', '506');
INSERT INTO Inventory(ID, INID)
  VALUES ('008', '502');
INSERT INTO Inventory(ID, INID)
  VALUES ('008', '504');
INSERT INTO Inventory(ID, INID)
  VALUES ('009', '500');
INSERT INTO Inventory(ID, INID)
  VALUES ('009', '501');
INSERT INTO Inventory(ID, INID)
  VALUES ('009', '504');
INSERT INTO Inventory(ID, INID)
  VALUES ('010', '506');
INSERT INTO Inventory(ID, INID)
  VALUES ('010', '503');
  
--view all weapons and armor--
DROP VIEW IF EXISTS AllEquipment
CREATE VIEW AllEquipment AS
SELECT w.name AS name, a.name AS Aname
FROM Weapons w, Armor a, Equipment e
WHERE w.wid = e.wid
AND   a.aid = e.aid

Select *
From AllEquipment;

--view all species and types--
DROP VIEW IF EXISTS SpeciesTypes
CREATE VIEW SpeciesTypes AS
Select s.name AS Sname, t.name AS tname
FROM Species s, Type t, character c
WHERE s.id = c.id
AND t.id = c.id

SELECT *
FROM SpeciesTypes;

--weapon with the highest rating--
SELECT w.name AS wname, w.rating as wrating
FROM weapons w
ORDER BY Rating DESC
limit 1;

--item that costs the most money--
SELECT i.name AS iname, i.cost as icost
FROM items i
ORDER BY cost DESC
limit 1;

--procedure that returns the character's type--
CREATE or REPLACE FUNCTION CharacterType(TEXT, REFCURSOR) RETURNS REFCURSOR AS $$
DECLARE
  Player TEXT		:=$1;
  ResultSet REFCURSOR   :=$2;
  
BEGIN
  OPEN ResultSet FOR
  SELECT c.firstname, c.lastname, t.name
  FROM type t, character c
  WHERE t.id = c.id
  AND name = Player;
RETURN ResultSet;
END;
$$
LANGUAGE plpgsql;

--test stored procedure--
SELECT CharacterType('Scavenger', 'results');
FETCH ALL FROM results;

--store procedure that returns the character's species--
CREATE or REPLACE FUNCTION SpeciesType(TEXT, REFCURSOR) RETURNS REFCURSOR AS $$
DECLARE
  Race TEXT		:=$1;
  ResultSet REFCURSOR   :=$2;
  
BEGIN
  OPEN ResultSet FOR
  SELECT c.firstname, c.lastname, s.name
  FROM Species s, character c
  WHERE s.id = c.id
  AND name = Race;
RETURN ResultSet;
END;
$$
LANGUAGE plpgsql;

--test stored procedure--
SELECT SpeciesType('Human', 'results');
FETCH ALL FROM results;

--creates admin--
CREATE ROLE admin;

GRANT SELECT, DELETE, UPDATE, INSERT
ON ALL TABLES IN SCHEMA public
TO admin;

--creates user--
CREATE ROLE OTHER;

GRANT SELECT
ON ALL TABLES IN SCHEMA public
TO OTHER;