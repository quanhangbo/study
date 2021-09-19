USE test1;
DROP TABLE student;
DROP TABLE sc;
   

CREATE TABLE student(
	sno INT,
	sname VARCHAR(12),
	ssex VARCHAR(12),
	sage INT,
	sdept VARCHAR(12));
CREATE TABLE sc(
	sno INT,
	cno INT,
	grade INT);
	
INSERT INTO student VALUES(201215121,'李勇','男',20,'cs');
INSERT INTO student VALUES(201215122,'刘晨','女',19,'cs');
INSERT INTO student VALUES(201215123,'王敏','女',18,'ma');
INSERT INTO student VALUES(201215125,'张立','男',19,'is');
INSERT INTO sc VALUES(201215121,1,92);
INSERT INTO sc VALUES(201215121,2,85);
INSERT INTO sc VALUES(201215121,3,88);
INSERT INTO sc VALUES(201215122,2,90);
INSERT INTO sc VALUES(201215122,3,80);

SELECT * FROM student;
SELECT * FROM sc;


//自然连接
SELECT student.sno,sname,sage,ssex,sage,sdept,cno,grade 
	FROM student,sc WHERE student.sno=sc.sno;
//自身连接
//外连接
SELECT student.sno,sname,ssex,sage,sdept,cno,grade FROM student
	LEFT OUTER JOIN sc ON (student.sno=sc.sno);
//多表连接
SELECT student.sno,sname,cname,grade FROM
	studnet,sc,course WHERE student.sno=sc.sno AND sc.cno=course.cno;
//嵌套查询
SELECT sname FROM student WHERE sno IN(SELECT sno FROM sc WHERE cno=2);
SELECT sname FROM student WHERE  EXISTS
(SELECT * FROM sc WHERE sno=sc.sno AND cno=1);

SELECT * FROM student;
//创建视图
CREATE VIEW is_student  AS
SELECT sno,sname,sage FROM student WHERE sdept='is' WITH CHECK OPTION;
//删除试图
DROP VIEW is_student;
//查询试图
SELECT sno,sage FROM student  WHERE sdept ='is' AND sage<20;

