查询语句

分页查询

oracle 分页查询

SELECT * FROM ( SELECT A.*, ROWNUM RN 
FROM (SELECT * FROM TABLE_NAME) A WHERE ROWNUM <= 40 ) WHERE RN >= 21

统计查询：

select brandid,sum(cnt) as counts from goods where userid = 1 group by brandid

子查询

select 


join查询

学生来源，学生类型，层次，当前审核状态。

select 
    r.reg_time as regTime,
    r.reg_type_code as typeCode,
    d1.data_name as stuSource,
    d2.data_name as styType,
    d3.data_name as level
from    
    reg_student_reg r
    left join common_dictdata d1 on r.student_source_id = d1.id
    left join common_dictdata d2 on r.student_type_id = d2.id
    left join common_dictdata d3 on r.level_id = d3.id

select 
    r.reg_time as regTime,
    r.reg_type_code as typeCode,
    d1.data_name as stuSource
from    
    reg_student_reg r
    left join common_dictdata d1 on r.student_source_id = d1.id



查询的时候指定返回类型

userid本来是int(11)类型的，查询返回，要求指定格式。

select cast(userid as char(15)) from base_goods;

/*select cast(userid as varchar(15)) from base_goods; 这种写法有错，不能给个变长类型来接长11的数据。*/

select cast(userid as decimal(10,2)) from base_goods;