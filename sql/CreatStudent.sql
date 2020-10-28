IF DB_ID('EducationalSystem')IS NOT NULL
    DROP DATABASE EducationalSystem;
CREATE DATABASE EducationalSystem
    ON
	    (NAME='DataFile_1'
		,FILENAME='D:\EducationalSystem\DataFile_1.mdf')
	LOG ON
	    (NAME='LogFile_1'
		,FILENAME='D:\EducationalSystem\LogFile_1.ldf');
USE EducationalSystem;
IF OBJECT_ID('tb_Student')IS NOT NULL
    DROP TABLE tb_Student;
GO
CREATE TABLE tb_Student
    (
	    NO
		    CHAR(10)
			NOT NULL
			CONSTRAINT pk_Student_No
			    PRIMARY KEY(No)
			CONSTRAINT ck_Student_No
			    CHECK(No LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
		,Name
		    CHAR(40)
			NOT NULL
		,Gender
		    BIT
			NOT NULL
		,Class
		    VARCHAR(20)
			NOT NULL
			CONSTRAINT df_Student_Class
			    DEFAULT('Œ¥∑÷≈‰')
		,BirthDate
		    DATE
			NOT NULL
			CONSTRAINT ck_Student_BirthDate
			    CHECK (BirthDate BETWEEN '1990-01-01'AND'2010-12-31')
		,Phone
		    CHAR(11)
			NOT NULL
			CONSTRAINT ck_Student_PhoneNumber
			    Check(Phone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
		,PersonalResume
		    XML
			NOT NULL
		,Password
		    VARCHAR(20)
			NOT NULL
	)