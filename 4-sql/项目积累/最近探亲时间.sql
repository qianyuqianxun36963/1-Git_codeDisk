select  tqj.*,ryxx.xm  from  TS_PTGY_RYJBXX ryxx, 
(select max(tqnf),tqjempid  from TF_YZSFWPT_TQJ where wcqk='�����' group by (tqjempid) ) tqj
where  ryxx.yktkh = tqj.tqjempid

select  tqj.*,ryxx.xm,ryxx.dwmc  from  TS_PTGY_RYJBXX ryxx, 
(select max(tqnf),tqjempid  from TF_YZSFWPT_TQJ where wcqk='�����' group by (tqjempid) ) tqj
where  ryxx.yktkh = tqj.tqjempid
