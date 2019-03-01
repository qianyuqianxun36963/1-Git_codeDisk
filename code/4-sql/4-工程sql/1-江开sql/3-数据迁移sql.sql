//清空表
truncate table  common_dicttype ;

select * from common_dictdata order by data_sort asc;

//统一化字典表注解
update common_dictdata set data_desc = concat('户口性质-',data_name) where type = 'ACCOUNTSNATURE';

//消除null值
update common_dictdata set data_value='' where data_value is null;

//提取字典数据表中的字典类型数据
select     replace(uuid(),'-','') id, t.*
from(
SELECT
    DISTINCT(type)  type_code,
    substring_index(data_desc,'-',1) type_name,
    '0-1' as create_by,
    '2017-12-16 09:13:20' create_time,
    '0-1' as update_by,
    '2017-12-16 09:13:20' update_time
FROM
    common_dictdata
)t;

//导出老表中字典数据
select t.id,
       rownum "data_code",
       t.info "data_name",
       null "data_value",
       'NATIONAL_TYPE' "type",
       '字典名' + t.info "data_desc",
       t.dictsort "data_sort",
       t.isenable "data_status",
       '0-1' "create_by",
       '2017-12-16 09:13:20' "create_time",
       '0-1' update_by,
       '2017-12-16 09:13:20' "update_time"
  from JSOU.DICTINFO t
 where t.typecode = 017
