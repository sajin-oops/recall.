mysql> show tables;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
| employees       |
+-----------------+
2 rows in set (0.01 sec)

mysql> create table practicing;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table practice(name varchar(100),
    -> age int,
    -> country varchar(30),
    -> occupation varchar(40),
    -> salary int,
    -> status varchar(100));
Query OK, 0 rows affected (0.10 sec)

mysql> desc practice;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| name       | varchar(100) | YES  |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
| country    | varchar(30)  | YES  |     | NULL    |       |
| occupation | varchar(40)  | YES  |     | NULL    |       |
| salary     | int          | YES  |     | NULL    |       |
| status     | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

mysql> select*from practise;
-- ERROR 1146 (42S02): Table 'sajin.practise' doesn't exist
mysql> select*from practice;
Empty set (0.01 sec)

mysql> insert into practice(name,age,country,occupation,salary,status)values("Sajin",21,"India","Data scientist",1000000,"Single");
Query OK, 1 row affected (0.01 sec)

mysql> select * from practice;
+-------+------+---------+----------------+---------+--------+
| name  | age  | country | occupation     | salary  | status |
+-------+------+---------+----------------+---------+--------+
| Sajin |   21 | India   | Data scientist | 1000000 | Single |
+-------+------+---------+----------------+---------+--------+
1 row in set (0.00 sec)

mysql> insert into practice values("Aaron",20,"India","Data analyst",10000000,"Single");
Query OK, 1 row affected (0.01 sec)

mysql> select * from practice;
+-------+------+---------+----------------+----------+--------+
| name  | age  | country | occupation     | salary   | status |
+-------+------+---------+----------------+----------+--------+
| Sajin |   21 | India   | Data scientist |  1000000 | Single |
| Aaron |   20 | India   | Data analyst   | 10000000 | Single |
+-------+------+---------+----------------+----------+--------+
2 rows in set (0.00 sec)

mysql> insert into practice values("Lijin",20,"India","Full stack developer",40000000,"Single");
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM practice;
+-------+------+---------+----------------------+----------+--------+
| name  | age  | country | occupation           | salary   | status |
+-------+------+---------+----------------------+----------+--------+
| Sajin |   21 | India   | Data scientist       |  1000000 | Single |
| Aaron |   20 | India   | Data analyst         | 10000000 | Single |
| Lijin |   20 | India   | Full stack developer | 40000000 | Single |
+-------+------+---------+----------------------+----------+--------+
3 rows in set (0.00 sec)

mysql> select count(name) from practice;
+-------------+
| count(name) |
+-------------+
|           3 |
+-------------+
1 row in set (0.00 sec)

mysql> select max(salary) from practice;
+-------------+
| max(salary) |
+-------------+
|    40000000 |
+-------------+
1 row in set (0.00 sec)

mysql> select min(salary) from practice;
+-------------+
| min(salary) |
+-------------+
|     1000000 |
+-------------+
1 row in set (0.00 sec)

mysql> select avg(salary) from practice;
+---------------+
| avg(salary)   |
+---------------+
| 17000000.0000 |
+---------------+
1 row in set (0.00 sec)

mysql> select sum(salary) from practice;
+-------------+
| sum(salary) |
+-------------+
|    51000000 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(name) from practice;
+-----------+
| sum(name) |
+-----------+
|         0 |
+-----------+
1 row in set, 3 warnings (0.01 sec)

mysql> select sum(age) from practice;
+----------+
| sum(age) |
+----------+
|       61 |
+----------+
1 row in set (0.00 sec)

mysql> select count(single) from practice;
ERROR 1054 (42S22): Unknown column 'single' in 'field list'
mysql> select count(single) from practice where status="single";
ERROR 1054 (42S22): Unknown column 'single' in 'field list'
mysql> select * from practice;
+-------+------+---------+----------------------+----------+--------+
| name  | age  | country | occupation           | salary   | status |
+-------+------+---------+----------------------+----------+--------+
| Sajin |   21 | India   | Data scientist       |  1000000 | Single |
| Aaron |   20 | India   | Data analyst         | 10000000 | Single |
| Lijin |   20 | India   | Full stack developer | 40000000 | Single |
+-------+------+---------+----------------------+----------+--------+
3 rows in set (0.00 sec)

mysql> select count from practice where status="single";
ERROR 1054 (42S22): Unknown column 'count' in 'field list'
mysql> select count(*) practice where status="single";
ERROR 1054 (42S22): Unknown column 'status' in 'where clause'
mysql> select count(*) as single_count practice where status="single";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'practice where status="single"' at line 1
mysql> select count(*) from practice where status="single";
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) AS single_count FROM practice WHERE status = 'Single';
+--------------+
| single_count |
+--------------+
|            3 |
+--------------+
1 row in set (0.00 sec)

mysql>