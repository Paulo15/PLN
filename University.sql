create database UNIVERSITY;

use UNIVERSITY;

create table Faculty (
    FacultyID int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    Establishment_Year varchar(4),
    CONSTRAINT PK_Faculty PRIMARY KEY (FacultyID)
);

create table Department (
	DepartmentID int NOT NULL AUTO_INCREMENT,
    FacultyID int NOT NULL,
    Name varchar(255) NOT NULL,
    Establishment_Year varchar(4),
    CONSTRAINT PK_Department PRIMARY KEY (DepartmentID),
    CONSTRAINT FK_Department_Faculty FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

create table Course (
	CourseID int NOT NULL AUTO_INCREMENT,
    DepartmentID int NOT NULL,
    Name varchar(255) NOT NULL,
    CONSTRAINT PK_Course PRIMARY KEY (CourseID),
    CONSTRAINT FK_Course_Department FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

create table Student (
	StudentID int NOT NULL AUTO_INCREMENT,
    Registration int NOT NULL,
    Name varchar(255) NOT NULL,
    Address varchar(255) NOT NULL,
    Age int not null,
    Sex varchar(1),
    CONSTRAINT PK_Student PRIMARY KEY (StudentID)
);

create table Student_Course (
	StudentID int NOT NULL,
    CourseID int NOT NULL,
    CONSTRAINT PK_Student_Course PRIMARY KEY (StudentID, CourseID),
    CONSTRAINT FK_Student FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    CONSTRAINT FK_Course FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);



