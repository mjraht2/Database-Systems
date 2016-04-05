CREATE TABLE People (
  PID      	CHAR(10),
  Name		TEXT,
  Address	CHAR(50),
 primary key(PID)
);

INSERT INTO People (PID, NAME, Address)
  VALUES ('001', 'Sean Connery', '16 Ravencort Lane');
INSERT INTO People (PID, NAME, Address)
  VALUES ('002', 'Clive Owen', '6110 Willow Drive');
INSERT INTO People (PID, NAME, Address)
  VALUES ('003', 'Andrew Lincoln', '4589 Eagle Road');
INSERT INTO People (PID, NAME, Address)
  VALUES ('004', 'Gerard Butler', '5113 West Street');
INSERT INTO People (PID, NAME, Address)
  VALUES ('005', 'Chris Pratt', '8800 Elm Avenue');
INSERT INTO People (PID, NAME, Address)
  VALUES ('006', 'Quentin Tarantino', '183 Running Lane');
INSERT INTO People (PID, NAME, Address)
  VALUES ('007', 'Steven Spielberg', '9977 Basketball Road');
INSERT INTO People (PID, NAME, Address)
  VALUES ('008', 'Ben Affleck', '7089 Monroe Drive');
INSERT INTO People (PID, NAME, Address)
  VALUES ('009', 'Chris Nolan', '8323 Ashley Court');
INSERT INTO People (PID, NAME, Address)
  VALUES ('010', 'David Fincher', '5197 Belmont Avenue');

CREATE TABLE Actors (
  PID      	CHAR(10) REFERENCES People(PID),
  Name		TEXT,
  Address	CHAR(50),
  BirthDate	DATE,
  HairColor	CHAR(25),
  EyeColor	CHAR(25),
  Height	INT,
  Weight	INT,
  SpouseName	TEXT,
  FavColor	CHAR(25),
  SAAnniversary	DATE,
 primary key(PID)
);

INSERT INTO Actors (PID, Birthdate, HairColor, EyeColor, Height, Weight, SpouseName, FavColor, SAAnniversary)
  VALUES ('001', '10-06-1972', 'Black', 'Brown', '75', '215', 'None', 'Green', '1996-05-27');
INSERT INTO Actors (PID, Birthdate, HairColor, EyeColor, Height, Weight, SpouseName, FavColor, SAAnniversary)
  VALUES ('002', '11-03-1964', 'Black', 'Hazel', '74', '195', 'Sarah-Jane Fenton', 'Black', '1999-07-21');
INSERT INTO Actors (PID, Birthdate, HairColor, EyeColor, Height, Weight, SpouseName, FavColor, SAAnniversary)
  VALUES ('003', '10-14-1973', 'Brown', 'Blue', '70', '155', 'Gael Anderson', 'Blue', '2005-08-25');
INSERT INTO Actors (PID, Birthdate, HairColor, EyeColor, Height, Weight, SpouseName, FavColor, SAAnniversary)
  VALUES ('004', '11-13-1969', 'Black', 'Blue', '74', '200', 'None', 'Red', '1992-04-05');
INSERT INTO Actors (PID, Birthdate, HairColor, EyeColor, Height, Weight, SpouseName, FavColor, SAAnniversary)
  VALUES ('005', '06-21-1979', 'Brown', 'Hazel', '74', '200', 'Anna Faris', 'Yellow', '2010-02-16');

CREATE TABLE Movies (
  MID		CHAR(10),
  NAME		TEXT,	
  YearReleased	DATe,
  MPAA		INT,
  DomesticSales	DECIMAL(15,2),
  ForeignSales	DECIMAL(15,2),
  DVDSales	DECIMAL(15,2),
 primary key(MID)
);

INSERT INTO Movies (MID, NAME, YearReleased, MPAA, DomesticSales, ForeignSales, DVDSales)
  VALUES ('001', 'James Bond', '1983-12-12', '283792', '1322249.25', '8372492.67', '8478953.45');
INSERT INTO Movies (MID, NAME, YearReleased, MPAA, DomesticSales, ForeignSales, DVDSales)
  VALUES ('002', 'Indiana Jones', '1984-02-02', '836841', '91279381.12', '9374892.76', '8934723.66');
INSERT INTO Movies (MID, NAME, YearReleased, MPAA, DomesticSales, ForeignSales, DVDSales)
  VALUES ('003', 'Pulp Fiction', '1994-03-03', '938746', '837232.33', '93737363.54', '3849334.47');
INSERT INTO Movies (MID, NAME, YearReleased, MPAA, DomesticSales, ForeignSales, DVDSales)
  VALUES ('004', 'Batman vs Superman', '2015-05-05', '722634', '3928742.66', '9837423.84', '987636.61');
INSERT INTO Movies (MID, NAME, YearReleased, MPAA, DomesticSales, ForeignSales, DVDSales)
  VALUES ('005', 'Gone Girl', '2014-03-22', '444635', '93472934.12', '8327492.65', '6484949.83');

CREATE TABLE Directors (
  PID		CHAR(10) REFERENCES People(PID),
  NAME		TEXT,
  Address	CHAR(50),
  SpouseName	TEXT,
  FilmSchool	TEXT,
  DGAnniversary	DATe,
  FavLens	CHAR(50),
 primary key(PID)
);

INSERT INTO Directors (PID, SpouseName, FilmSchool, DGAnniversary, FavLens)
  VALUES ('006', 'None', 'NYU', '1998-10-13', 'Wide Angle');
INSERT INTO Directors (PID, SpouseName, FilmSchool, DGAnniversary, FavLens)
  VALUES ('007', 'Kate Capshaw', 'USC', '1998-10-13', 'Standard');
INSERT INTO Directors (PID, SpouseName, FilmSchool, DGAnniversary, FavLens)
  VALUES ('008', 'Jennifer Garner', 'Ithica', '1998-10-13', 'Full');
INSERT INTO Directors (PID, SpouseName, FilmSchool, DGAnniversary, FavLens)
  VALUES ('009', 'Emma Thomas', 'NYU', '1998-10-13', 'Medium');
INSERT INTO Directors (PID, SpouseName, FilmSchool, DGAnniversary, FavLens)
  VALUES ('010', 'Cean Chaffin', 'USC', '1998-10-13', 'Wide Angle');

CREATE TABLE CastandCrew (
  PID		CHAR(10) REFERENCES People(PID),
  MID		CHAR(10),
  Title		TEXT,
 primary key(PID, MID, Title)
);

INSERT INTO CastandCrew (PID, MID, Title)
  VALUES ('001', '001', 'James Bond');
INSERT INTO CastandCrew (PID, MID, Title)
  VALUES ('009', '001', 'Director');
INSERT INTO CastandCrew (PID, MID, Title)
  VALUES ('005', '002', 'Indiana Jones');
INSERT INTO CastandCrew (PID, MID, Title)
  VALUES ('001', '004', 'Batman');
INSERT INTO CastandCrew (PID, MID, Title)
  VALUES ('002', '004', 'Director');



select p.NAME
FROM People p INNER JOIN CastandCrew c ON p.PID = c.PID
WHERE Title = 'Director'
and c.MID IN (SELECT c.MID
	   FROM CastandCrew c INNER JOIN People p on c.PID = p.PID
	   WHERE p.NAME = 'Sean Connery');