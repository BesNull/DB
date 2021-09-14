PRAGMA foreign_keys=on;
/*
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Gruppa;

CREATE TABLE Gruppa (
Number VARCHAR(8) PRIMARY KEY,
Cathedra INTEGER NOT NULL
);

CREATE TABLE Student (
FIO VARCHAR(100) NOT NULL,
ZachetkaNum INTEGER PRIMARY KEY,
GroupNumber VARCHAR(6) NOT NULL REFERENCES Gruppa(Number)
);

INSERT INTO Gruppa VALUES ("B6441", 44);
INSERT INTO Gruppa VALUES ("B7441", 44);
INSERT INTO Student VALUES ("Bill", 123, "B6441");
INSERT INTO Student VALUES ("Bill", 124, "B7441");
*/
DROP TABLE IF EXISTS R1;
DROP TABLE IF EXISTS R2;
DROP TABLE IF EXISTS R3;
DROP TABLE IF EXISTS R4;
DROP TABLE IF EXISTS R5;



--kr DB sql

Create table R1 (
FIO varchar(50),
DisciplineName varchar(20),
ExamRate integer,
CompletionDate Date
);

Create table R2 (
DisciplineName varchar(20),
GroupNum varchar(5)
);

Create Table R3 (
DisciplineName varchar(20),
TeachName varchar (50)
);

Create table R4 (
GroupNum varchar(5),
Fak integer (1)
);

Create table R5 (
FIO varchar(50),
GroupNum varchar(5)
);

-- KR Insert
INSERT INTO R1 VALUES ("Red Alex", "Math", 3, "2018-02-19");
INSERT INTO R1 VALUES ("Blue Alex", "Hist", 4, "2018-02-19");
INSERT INTO R1 VALUES ("Green", "Geom", 5, "2018-02-19");

INSERT INTO R2 VALUES ("Math","V6441");
INSERT INTO R2 VALUES ("Hist", "V6441");
INSERT INTO R2 VALUES ("Geom", "V6441");

INSERT INTO R3 VALUES ("Math","Sad");
INSERT INTO R3 VALUES ("Hist", "Bad");
INSERT INTO R3 VALUES ("Geom", "Happy");

INSERT INTO R4 VALUES ("V6441", 6);
INSERT INTO R4 VALUES ("V5441", 5);
INSERT INTO R4 VALUES ("V4441", 4);

INSERT INTO R5 VALUES ("Red Alex", "V6441");
INSERT INTO R5 VALUES ("Blue Alex", "V5441");
INSERT INTO R5 VALUES ("Green", "V4441");


--KR Zapros


--end kr sql







