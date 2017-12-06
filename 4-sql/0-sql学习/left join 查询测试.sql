EXPLAIN select * from joinquery_table1 t1 
left join joinquery_table2 t2 on t1.t2_id = t2.id 
left join joinquery_table3 t3 on t2.t3_id = t3.id 
left join joinquery_table4 t4 on t3.t4_id = t4.id 
left join joinquery_table5 t5 on t1.t2_id = t5.id 

EXPLAIN select t1.column1 from joinquery_table1 t1 
left join joinquery_table2 t2 on t1.t2_id = t2.id 
left join joinquery_table3 t3 on t2.t3_id = t3.id 
left join joinquery_table4 t4 on t3.t4_id = t4.id 
left join joinquery_table5 t5 on t1.t2_id = t5.id 

select * from joinquery_table1;