create database quanlysinhvien;
use quanlysinhvien;
create table class(
classid int not null auto_increment primary key,
classname varchar(30) not null,
stardate varchar(30) not null,
status bit default 1
);
insert into class(classname, stardate)
values ('A1', '20/12/2008');
insert into class (classname,stardate,status)
values ('A2','22/12/2008',1),
		('B3', 'Current Date', 0);
        create table student (
        studentid int not null auto_increment primary key,
        studentname varchar(30) not null,
        address varchar(30) not null,
        phone varchar(20) unique,
        status bit,
        classid int not null,
        foreign key (classid) references class(classid)
        );
insert into student (studentname, address, phone, status, classid)
values('THANG', 'HA NOI', '0394910426', 1, 1),
	('HUNG', 'THAI BINH', '0961908775',1,2),
    ('hUY','NAM DINH', '0989712869',0,3);
    CREATE TABLE SUBJECT(
    SUBID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SUBNAME VARCHAR(30) NOT NULL,
    CREDIT TINYINT,
    STATUS BIT DEFAULT 1
    );
    INSERT INTO SUBJECT(SUBNAME,CREDIT)
    VALUES('CF',5),
			('C',6),
            ('HDJ', 5),
            ('RDBMS',10);
            CREATE TABLE MARK (
            MARKID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
            SUBID INT NOT NULL,
            STUDENTID INT NOT NULL,
            MARK FLOAT CHECK(MARK BETWEEN 0 AND 10),
            EXAMTIMES BIT,
            FOREIGN KEY (SUBID) REFERENCES SUBJECT(SUBID),
            FOREIGN KEY (STUDENTID) REFERENCES STUDENT(STUDENTID)
            );
	INSERT INTO MARK (SUBID, STUDENTID, MARK, EXAMTIMES)
    VALUES (1,1,8,1),
			(1,2,10,1),
            (2,1,9,1);