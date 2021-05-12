DROP DATABASE if exists tippooldb_mod1;
CREATE DATABASE tippooldb_mod1;
USE tippooldb_mod1;

CREATE TABLE server (
	ID				int				NOT NULL PRIMARY KEY auto_increment,
    firstname		varchar(20)		NOT NULL,
    lastname		varchar(30)		NOT NULL,
    sales			decimal(7,2)	NOT NULL default 0,
    tipout			decimal(7,2)	NOT NULL default 0,
    tippool_ID		int				NOT NULL default 1,
    FOREIGN KEY (tippool_ID) REFERENCES tippool(ID)
);

CREATE TABLE serverassistant (
	ID				int				NOT NULL PRIMARY KEY auto_increment,
    firstname		varchar(20)		NOT NULL,
    lastname		varchar(30)		NOT NULL,
    hoursworked		decimal(4,2)	NOT NULL DEFAULT 0,
    tipsfromshift	decimal(6,2)	NOT NULL DEFAULT 0,
    closer			boolean			NOT NULL DEFAULT false,
    tippool_ID		int				NOT NULL DEFAULT 1,
    FOREIGN KEY (tippool_ID) REFERENCES tippool(ID)
);

CREATE TABLE tippool (
	ID				int				NOT NULL PRIMARY KEY auto_increment,
    -- date			datetime		NOT NULL,
    totaltips		decimal(7,2)	NOT NULL DEFAULT 0,
    totalhours		decimal(5,2)	NOT NULL DEFAULT 0
);