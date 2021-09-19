# 1.背景

###  1.基本样式![image-20210914141533031](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224013.png)

### 2.需求

上图可以满足根据输入的title搜索数据，但现在需要

1）输入title时，根据title搜索数据

2）用户未输入title，查询所有的数据

### 3.出现问题

当用户title输入为空时，sql出现错误

### 4.解决方案

引入if语句![image-20210914142025704](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224020.png)

# 2.if语句

### 1.用法

如上图

### 2.满足需求

当title不为空时，拼接sql语句，当author不为空时，拼接sql语句

### 3.存在问题

如果没有1=1，将会发生 select * from blog where and title=参数，sql语句出现错误

### 4.解决方案

引入where标签

# 3.where标签

### 1.用法

![image-20210914142736022](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224026.png)

### 2.满足需求 

title和author可能为空，可能某一个为空，或者都非空。

1）标签中有条件满足，sql 语句 添加where，后续的语句如果and或者or开头，自动删除

### 3.存在问题

### 4. 解决方案

# 4.when标签

### 1.用法

![image-20210914143336866](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224032.png)

### 2.满足需求

1）类似于switch，case，选择其中一个满足

### 3.存在问题

### 4.解决方案

# 5. set标签

### 1.用法

![image-20210914143946576](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224037.png)

### 2.满足需求

在更新时，sql语句后面可能会有逗号

1)设置set关键字

2）去除多余的逗号

### 3.存在问题

### 4. 解决方案

# 6. trim

### 1.用法

![image-20210914144734587](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224041.png)

### 2.满足需求

* prefix：后面有元素是增加的前缀
* prefixOverrides：前面忽略的字符
* suffixOverrides: 后面忽略的字符

### 3.存在问题

### 4.解决方案

# 7.使用优化

![image-20210914145104025](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224044.png)

# 8.foreach

### 1.用法

![image-20210914150727694](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224049.png)

![image-20210914150745905](https://raw.githubusercontent.com/quanhangbo/typora_photo/main/img/20210914224052.png)

* ```mysql
  select * from mybatis.blog (id=1 or id=2 or id=3)
  ```

* 将一个list放入map中，利用list中的元素拼接sql语句，传入参数是一个map
* collection：map中集合的键
* item：取出元素的名称
* open： 以什么开头
* close：以什么结尾
* separator：以什么分割

