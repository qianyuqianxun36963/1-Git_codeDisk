select 
t1.sumCount as "累计收件",
t2.finishCount as "累计办件",
t3.oldCount as "上月收件",
t4.oldFinishCount as "上月办件",
t5.monthCount as"本月收件",
t6.monthFinishCount as"本月办件",
t7.yesterdayCount as"昨日收件",
t8.todayCount as"今日收件"


from 
(select  count(*) as sumCount  from WFPROCESSINST)  t1 ,

(select  count(*) as finishCount  from WFPROCESSINST t  where t.CURRENTSTATE='7')  t2,

(select  count(*) as oldCount  from WFPROCESSINST t  where t.CREATETIME>=to_date('2015-07-01 00:00:00','yyyy-mm-dd hh24:mi:ss') 
        and t.CREATETIME<=to_date('2015-08-01 00:00:00','yyyy-mm-dd hh24:mi:ss') )  t3,

(select  count(*) as oldFinishCount  from WFPROCESSINST t  where t.CREATETIME>=to_date('2015-07-01 00:00:00','yyyy-mm-dd hh24:mi:ss') 
        and t.CREATETIME<=to_date('2015-08-01 00:00:00','yyyy-mm-dd hh24:mi:ss') and t.CURRENTSTATE='7' )  t4,

(select  count(*) as monthCount from WFPROCESSINST t where t.CREATETIME>=to_date('2015-08-01 00:00:00','yyyy-mm-dd hh24:mi:ss')
		and t.CREATETIME<=to_date('2015-09-01 00:00:00','yyyy-mm-dd hh24:mi:ss'))  t5,

(select  count(*) as monthFinishCount from WFPROCESSINST t where t.CREATETIME>=to_date('2015-08-01 00:00:00','yyyy-mm-dd hh24:mi:ss')
		and t.CREATETIME<=to_date('2015-09-01 00:00:00','yyyy-mm-dd hh24:mi:ss') and t.CURRENTSTATE='8' )  t6,

(select  count(*) as yesterdayCount from WFPROCESSINST t where t.CREATETIME>=to_date('2015-08-27 00:00:00','yyyy-mm-dd hh24:mi:ss')
		and t.CREATETIME<=to_date('2015-08-28 00:00:00','yyyy-mm-dd hh24:mi:ss'))  t7,

(select count(*) as todayCount from WFPROCESSINST t where t.CREATETIME>=to_date('2015-08-26 00:00:00','yyyy-mm-dd hh24:mi:ss')
		and t.CREATETIME<=to_date('2015-08-27 00:00:00','yyyy-mm-dd hh24:mi:ss'))  t8
