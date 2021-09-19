# 1.创建数据库
create database study;
# 2. 删除数据库alter
drop  database study;
# 3. 选择数据库 
use study;
# 4.查看所有数据库
show databases
# 5.创建数据库
CREATE TABLE IF NOT EXISTS `runoob_tbl`(
   `runoob_id` INT UNSIGNED AUTO_INCREMENT,
   `runoob_title` VARCHAR(100) NOT NULL,
   `runoob_author` VARCHAR(40) NOT NULL,
   `submission_date` DATE,
   PRIMARY KEY ( `runoob_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

# 6.删除表
DROP TABLE `runoob_tbl` ;
# 7. 插入数据
insert into runoob_tbl(runoob_title, runoob_author, submission_date) values('学习','作者1',now())
# 8.查找数据
select * from runoob_tbl;
# 9.where查询
SELECT * from runoob_tbl WHERE runoob_author='作者1';
# 10. update更新
UPDATE runoob_tbl SET runoob_title='学习中' WHERE runoob_id=1;
# 11.删除数据
DELETE FROM runoob_tbl WHERE runoob_id=1;
# 12.like语句
SELECT * from runoob_tbl  WHERE runoob_author LIKE '%1';
# 13.union 
SELECT country FROM Websites
UNION
SELECT country FROM apps
ORDER BY country; 
# 14. 升序排列
SELECT * from runoob_tbl ORDER BY submission_date ASC;
# 15.降序排列
SELECT * from runoob_tbl ORDER BY submission_date DESC;
# 16.开始事务，回滚，提交
begin; rollback;commit;
# 17. 删除修改字段
ALTER TABLE testalter_tbl  DROP 字段;
# 18. 添加字段
ALTER TABLE testalter_tbl ADD i INT;
# 19. 修改字段
 ALTER TABLE testalter_tbl MODIFY c CHAR(10);
 # 20.