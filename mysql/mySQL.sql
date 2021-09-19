-- 数据库的增删改查

CREATE DATABASE day30;

DROP DATABASE day30;

CREATE DATABASE day30 DEFAULT CHARACTER SET utf8; -- 按默认字符创建
ALTER DATABASE day30 DEFAULT CHARACTER SET utf8; -- 修改默认字符集

SHOW DATABASES;
SHOW CREATE DATABASE day30;  -- 查看默认字符


USE day30;
-- 表的增删改查

CREATE TABLE student(  -- 创建学生表
	sid INT,
	sname VARCHAR(20)
	)

DROP TABLE student;  -- 表的删除

ALTER TABLE student RENAME TO students;  -- 表的重命名

DESC student;  -- 表的展示


-- 表的字段的增删改查

ALTER TABLE student ADD sgender VARCHAR(20);  --  增加字段

ALTER TABLE student DROP sgender;  --  字段的删除 

ALTER TABLE student MODIFY sgender VARCHAR(18);  -- 字段长度的修改
ALTER TABLE student CHANGE sgender sgenders VARCHAR(18);  -- 字段名称的修改


SELECT * FROM student;
-- 表中数据的增删改查

INSERT INTO student VALUES(1,'张三');  -- 按全部字段添加字段
INSERT INTO student(sid) VALUES(2);    -- 按部分字段添加字段

DELETE FROM student;       -- 删除表中全部数据，可以回滚
TRUNCATE TABLE student;     -- 删除表中全部数据，不可以回滚

UPDATE student SET sid='2';
UPDATE student SET sid='1' WHERE sname='张三';
UPDATE student SET sid='3',sgender='dayi' WHERE sname='张三';


-- 数据查询

-- 查询所有列
SELECT * FROM student;
-- 查询指定列
SELECT sid,sname FROM student;
-- 查询时增加常量列
SELECT sid,sname,'3' FROM student;
-- 查询时合并列
SELECT (sid+sid1) FROM student;
-- 查询时去除重复记录
SELECT DISTINCT sid1 FROM student;
-- 条件查询
SELECT * FROM student WHERE sname='张三';
SELECT * FROM student WHERE sid<>3;
SELECT * FROM student WHERE sid=2 AND sid1=4;
SELECT * FROM student WHERE sid1 BETWEEN 4 AND 5;
-- 聚合查询
SELECT * FROM student WHERE sid1 IS NULL;
SELECT * FROM student WHERE sname LIKE '张%';
SELECT SUM(sid) AS 'id的和' FROM student;
SELECT AVG(sid) AS 'id的平均值' FROM student;
SELECT MAX(sid) AS 'sid的最大值' FROM student;
SELECT MIN(sid) AS 'sid的最小值' FROM student;
SELECT COUNT(*) AS 'number' FROM student;
SELECT COUNT(*) AS 'id等于3' FROM student WHERE sid=3;
-- 分页查询
SELECT * FROM student LIMIT 0,1; 
-- 查询排序
SELECT * FROM student ORDER BY sid ASC;
SELECT * FROM student ORDER BY sid DESC;
-- 分组查询后筛选
SELECT sid1,COUNT(*) student GROUP BY sid1; -- 未知错误
SELECT sid1,COUNT(*) student WHERE GROUP BY sid1 HAVING COUNT>0;  -- 未知错误
-- 查询时指定别名



-- 数据约束
DROP TABLE student;

-- 设置默认值
CREATE TABLE student(
	sid INT,
	sname VARCHAR(20),
	sgender VARCHAR(20) DEFAULT '大一'
	);
-- 设置非空
CREATE TABLE student(
	sid INT,
	sname VARCHAR(20),
	sgender VARCHAR(20) NOT NULL
	)
-- 唯一
CREATE TABLE student(
	sid INT,
	sname VARCHAR(20),
	sgender VARCHAR(20) UNIQUE
	);
-- 主键
CREATE TABLE student(
	sid INT PRIMARY,
	sname VARCHAR(20),
	sgender VARCHAR(20) 
	);
-- 自增长
CREATE TABLE student(
	sid INT AUTO_INCREMENT;
	sname VARCHAR(20),
	sgender VARCHAR(20)
	);
-- 外键
CREATE TABLE teacher(
	sid INT,
	sname VARCHAR(20),
	teachId INT,
	CONSTRAINT teach_dept FOREIGN KEY(teachId) REFERENCES student(sid)-- 未知错误 
	);
	
-- 级联操作





