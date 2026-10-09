MariaDB [(none)]> TEE mariadb_activity2.sql
MariaDB [(none)]> SELECT * FROM students
    -> SELECT * FROM students;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELECT * FROM students' at line 2
MariaDB [(none)]> 
MariaDB [(none)]> SELECT * FROM students SELECT * FROM students;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELECT * FROM students' at line 1
MariaDB [(none)]> SELECT * FROM students;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> USE school;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [school]> SELECT * FROM students;
+----+----------------+--------+------------+
| id | name           | course | year_level |
+----+----------------+--------+------------+
|  1 | Juan Dela Cruz | BSIT   |          2 |
|  2 | Maria Santas   | BSCS   |          2 |
|  4 | Armel Bumilac  | BSIT   |          3 |
+----+----------------+--------+------------+
3 rows in set (0.000 sec)

MariaDB [school]> SELECT * FROM courses;
+-----------+-------------+-----------------------------------+-------+
| course_id | course_name | description                       | units |
+-----------+-------------+-----------------------------------+-------+
|         1 | CIT17       | Web Information System            |     3 |
|         2 | CC17        | Mobile App Design and Development |     3 |
|         3 | PathFit 1   | Physical Education                |     2 |
+-----------+-------------+-----------------------------------+-------+
3 rows in set (0.000 sec)

MariaDB [school]> SELECT * FROM enrollments;
+---------------+------------+-----------+-----------------+
| enrollment_id | student_id | course_id | enrollment_date |
+---------------+------------+-----------+-----------------+
|             1 |          1 |         1 | 2024-10-07      |
|             2 |          2 |         2 | 2023-10-07      |
|             3 |          4 |         3 | 2026-08-24      |
+---------------+------------+-----------+-----------------+
3 rows in set (0.001 sec)

