select * from (    
   select  BB.MESSAGEID as messageid,
      BB.CONTENT as content,
      BB.CREATETIME as createtime,
      WFWORKITEM.PARTINAME as partiname,
      WFWORKITEM.PARTICIPANT as participant,
      WFWORKITEM.PROCESSINSTID as processinstid,
      WFWORKITEM.ACTIVITYDEFID as activitydefid,
      WFWORKITEM.ACTIVITYINSTID as activityinstid,
      WFWORKITEM.WORKITEMID as workitemid from  (
         select WFOPTMSG.* from (
            select 
               processinstid, 
               activitydefid,
               max(activityinstid) as activityinstid 
               from 
               (  select  WFOPTMSG.MESSAGEID as messageid,
                          WFOPTMSG.CONTENT as content ,
                          WFOPTMSG.CREATETIME as createtime,
                          WFWORKITEM.PARTINAME as partiname,
                          WFWORKITEM.PARTICIPANT as participant,
                          WFWORKITEM.PROCESSINSTID as processinstid,
                          WFWORKITEM.ACTIVITYDEFID as activitydefid,
                          WFWORKITEM.ACTIVITYINSTID as activityinstid,
                          WFWORKITEM.WORKITEMID as workitemid from WFOPTMSG,WFWORKITEM
                          where WFOPTMSG.WORKITEMID = WFWORKITEM.WORKITEMID  
               )  aa GROUP BY activitydefid,processinstid
            )aa,WFOPTMSG 
   where AA.ACTIVITYINSTID = WFOPTMSG.ACTIVITYINSTID)bb ,WFWORKITEM 
where BB.WORKITEMID=WFWORKITEM.WORKITEMID ORDER BY ACTIVITYINSTID ) cc 