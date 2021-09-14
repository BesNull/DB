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
Fak integer
);

Create table R5 (
FIO varchar(50),
GroupNum varchar(5)
);

-- KR Insert
INSERT INTO R1 VALUES ("Red Alex", "Math", 3, "2018-02-19");
INSERT INTO R1 VALUES ("Blue Alex", "Hist", 4, "2018-02-19");
INSERT INTO R1 VALUES ("Blue Alex", "Geom", 5, "2018-02-19");
INSERT INTO R1 VALUES ("Green", "Geom", 5, "2018-02-19");
INSERT INTO R1 VALUES ("Red1", "Geom", 5, "2018-02-19");
INSERT INTO R1 VALUES ("Blue Alex", "Math", 3, "2018-02-19");
INSERT INTO R1 VALUES ("Red2", "Math", 4, "2018-02-19");
INSERT INTO R1 VALUES ("Red2", "Geom", 3, "2018-02-19");
INSERT INTO R1 VALUES ("Red3", "Geom", 5, "2018-02-19");
INSERT INTO R1 VALUES ("Red3", "Math", 4, "2018-02-19");
INSERT INTO R1 VALUES ("Red3", "BD",null, "2018-02-19");
INSERT INTO R1 VALUES ("Red3", "Geom",null, "2018-02-19");
INSERT INTO R1 VALUES ("Red2", "BD", 4, "2018-02-19");
INSERT INTO R1 VALUES ("Green", "Math", 2, "2018-02-19");
INSERT INTO R1 VALUES ("Green", "BD", 2, "2018-02-19");
INSERT INTO R1 VALUES ("Red Alex", "BD", 3, "2018-02-19");
INSERT INTO R1 VALUES ("Red Alex", "Geom", 4, "2018-02-19");
INSERT INTO R1 VALUES ("Red5", "Geom", 4, "2018-02-19");
INSERT INTO R1 VALUES ("Red6", "Geom", 3, "2018-02-19");
INSERT INTO R1 VALUES ("Green1", "Math", 2, "2018-02-19");
INSERT INTO R1 VALUES ("Green1", "Geom", 3, "2018-02-19");




INSERT INTO R2 VALUES ("Math","V6441");
INSERT INTO R2 VALUES ("Hist", "V6441");
INSERT INTO R2 VALUES ("Geom", "V6441");
INSERT INTO R2 VALUES ("BD", "V6441");
INSERT INTO R2 VALUES ("Math","V5441");
INSERT INTO R2 VALUES ("Hist", "V5441");
INSERT INTO R2 VALUES ("Geom", "V5441");
INSERT INTO R2 VALUES ("BD", "V5441");
INSERT INTO R2 VALUES ("Math","V4441");
INSERT INTO R2 VALUES ("Hist", "V4441");
INSERT INTO R2 VALUES ("Geom", "V4441");
INSERT INTO R2 VALUES ("BD", "V4441");
INSERT INTO R2 VALUES ("Math","V3441");
INSERT INTO R2 VALUES ("Hist", "V3441");
INSERT INTO R2 VALUES ("Geom", "V3441");
INSERT INTO R2 VALUES ("BD", "V3441");
INSERT INTO R2 VALUES ("Math","V2441");
INSERT INTO R2 VALUES ("Hist", "V2441");
INSERT INTO R2 VALUES ("Geom", "V2441");
INSERT INTO R2 VALUES ("BD", "V2441");
INSERT INTO R2 VALUES ("Math","V1441");
INSERT INTO R2 VALUES ("Hist", "V1441");
INSERT INTO R2 VALUES ("Geom", "V1441");
INSERT INTO R2 VALUES ("BD", "V1441");

INSERT INTO R3 VALUES ("Math","Sad");
INSERT INTO R3 VALUES ("Hist", "Bad");
INSERT INTO R3 VALUES ("Geom", "Happy");
INSERT INTO R3 VALUES ("BD", "Sad");
--INSERT INTO R3 VALUES ("Prog", "Bad");
--INSERT INTO R3 VALUES ("Econom", "Tree");


INSERT INTO R4 VALUES ("V6441", 6);
INSERT INTO R4 VALUES ("V5441", 5);
INSERT INTO R4 VALUES ("V4441", 4);

INSERT INTO R5 VALUES ("Red Alex", "V6441");
INSERT INTO R5 VALUES ("Blue Alex", "V5441");
INSERT INTO R5 VALUES ("Green", "V4441");
INSERT INTO R5 VALUES ("Red1", "V6441");
INSERT INTO R5 VALUES ("Red2", "V3441");
INSERT INTO R5 VALUES ("Red3", "V2441");
INSERT INTO R5 VALUES ("Red5", "V1441");
INSERT INTO R5 VALUES ("Red6", "V1441");
INSERT INTO R5 VALUES ("Green1", "V4441");





--end kr sql







