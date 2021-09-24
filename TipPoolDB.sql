DROP DATABASE if exists tippooldb_mod1;
CREATE DATABASE tippooldb_mod1;
USE tippooldb_mod1;

CREATE TABLE Tippool (
	id				int				NOT NULL PRIMARY KEY auto_increment,
    -- date			datetime		NOT NULL,
    totalTips		decimal(7,2)	NOT NULL DEFAULT 0,
    totalHours		decimal(5,2)	NOT NULL DEFAULT 0
);

CREATE TABLE Servers (
	id				int				NOT NULL PRIMARY KEY auto_increment,
    firstName		varchar(20)		NOT NULL,
    lastName		varchar(30)		NOT NULL,
    sales			decimal(7,2)	NOT NULL default 0,
    tipOut			decimal(7,2)	NOT NULL default 0,
    tippool_ID		int				NOT NULL default 1,
    FOREIGN KEY (tippool_ID) REFERENCES Tippool(ID)
);

CREATE TABLE Serverassistants (
	id				int				NOT NULL PRIMARY KEY auto_increment,
    firstName		varchar(20)		NOT NULL,
    lastName		varchar(30)		NOT NULL,
    hoursWorked		decimal(4,2)	NOT NULL DEFAULT 0,
    tipsEarned		decimal(6,2)	NOT NULL DEFAULT 0,
    -- closer			boolean			NOT NULL DEFAULT false,
    -- hourly			boolean			NOT NULL DEFAULT false,
    tippool_ID		int				NOT NULL DEFAULT 1,
    FOREIGN KEY (tippool_ID) REFERENCES Tippool(ID)
);

INSERT INTO Tippool (id, totalTips, totalHours)
VALUES 
(1, 0.0, 0.0),
(2, 0.0, 0.0),
(3, 0.0, 0.0),
(4, 0.0, 0.0),
(5, 0.0, 0.0),
(6, 0.0, 0.0);

INSERT INTO Servers (firstName, lastName)
VALUES 
('Adrian', 'Rathsbery'),
('Greg', 'Rumple'),
('James Talyor', 'Smith'),
('Jake', 'Smith'),
('Jim', 'Belmont'),
('Chris', 'Estes'),
('Don', 'McNab'),
('Mike', 'Steins'),
('Adam', 'Brown'),
('Dan', 'Robert'),
('Chris', 'Gerring'),
('Cory', 'Bellman'),
('Joe', 'Steins'),
('Clay', 'Man'),
('Kirk', 'Zim'),
('Sarah', 'Schmuck'),
('Sean', 'Burns'),
('Alex', 'Socha'),
('Cameron', 'Welling'),
('Ben', 'Blatz'),
('Brett', 'Stuffins'),
('Dave', 'Romans'),
('Jacob', 'Pineault'),
('Conrad', 'Rob'),
('Dalton', 'Shady'),
('Jac', 'Krumdeick'),
('Brad', 'Backs'),
('Joey', 'News');

INSERT INTO Serverassistants (firstName, lastName, hoursWorked)
VALUES
('Kalli', 'Weirwillie', 8.25);

SELECT concat(firstName, " ", lastName) as 'Server Name' FROM Servers;