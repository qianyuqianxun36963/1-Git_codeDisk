
## sql 查重操作

现在有两个表，AB表和A表， AB表有一个外键 id_A 与 A表关联，然后我们要查出AB表中，与A表关联不止一次的记录。

SELECT AB.id_A FROM AB GROUP BY AB.id_A HAVING COUNT(AB.id_A) > 1
