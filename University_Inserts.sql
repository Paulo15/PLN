use University;

insert into Faculty (Name, Establishment_Year) values ('Universidade Federal do ABC', '2006');

set @idFaculty = last_insert_id();

insert into Department (FacultyID, Name, Establishment_Year) values (@idFaculty, 'CMCC', '2006');
insert into Department (FacultyID, Name, Establishment_Year) values (@idFaculty, 'CECS', '2006');
insert into Department (FacultyID, Name, Establishment_Year) values (@idFaculty, 'CCNH', '2006');

set @idDepartment = (SELECT DepartmentID FROM Department WHERE Name like '%CMCC%' LIMIT 1);

insert into Course (DepartmentID, Name) values (@idDepartment, 'Ciência da Computação');
insert into Course (DepartmentID, Name) values (@idDepartment, 'Matemática');
insert into Course (DepartmentID, Name) values (@idDepartment, 'Neurociência');

set @idDepartment = (SELECT DepartmentID FROM Department WHERE Name like '%CECS%' LIMIT 1);

insert into Course (DepartmentID, Name) values (@idDepartment, 'IAR');
insert into Course (DepartmentID, Name) values (@idDepartment, 'Engenharia de Gestão');
insert into Course (DepartmentID, Name) values (@idDepartment, 'Engenharia Ambiental e Urbana');

set @idDepartment = (SELECT DepartmentID FROM Department WHERE Name like '%CCNH%' LIMIT 1);

insert into Course (DepartmentID, Name) values (@idDepartment, 'Biologia');
insert into Course (DepartmentID, Name) values (@idDepartment, 'Química');

insert into Student (Registration, Name, Address, Sex) values (123, 'Victor', 'Rua Boa Vista', 'M');
insert into Student (Registration, Name, Address, Sex) values (321, 'Paulo', 'Rua Bom Pastor', 'M');
insert into Student (Registration, Name, Address, Sex) values (132, 'Ruan', 'Rua Abolição', 'M');
insert into Student (Registration, Name, Address, Sex) values (213, 'Rodolfo', 'Av Goiás', 'M');

set @idStudent = (SELECT StudentID FROM Student ORDER BY RAND() LIMIT 1);
set @idCourse = (SELECT CourseID FROM Course ORDER BY RAND() LIMIT 1);

insert into student_course (StudentID, CourseID) values (@idStudent, @idCourse);

set @idStudent = (SELECT StudentID FROM Student ORDER BY RAND() LIMIT 1);
set @idCourse = (SELECT CourseID FROM Course ORDER BY RAND() LIMIT 1);

insert into student_course (StudentID, CourseID) values (@idStudent, @idCourse);

set @idStudent = (SELECT StudentID FROM Student ORDER BY RAND() LIMIT 1);
set @idCourse = (SELECT CourseID FROM Course ORDER BY RAND() LIMIT 1);

insert into student_course (StudentID, CourseID) values (@idStudent, @idCourse);

set @idStudent = (SELECT StudentID FROM Student ORDER BY RAND() LIMIT 1);
set @idCourse = (SELECT CourseID FROM Course ORDER BY RAND() LIMIT 1);

insert into student_course (StudentID, CourseID) values (@idStudent, @idCourse);





