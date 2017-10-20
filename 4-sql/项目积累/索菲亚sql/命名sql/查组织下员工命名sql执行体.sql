SELECT AA.*,BB.posiname FROM(

	SELECT 
	E.empid        as     empid         ,
	E.empcode      as     empcode       ,
	E.operatorid   as     operatorid    ,
	E.userid       as     userid        ,
	E.empname      as     empname       ,
	E.realname     as     realname      ,
	E.gender       as     gender        ,
	E.birthdate    as     birthdate     ,
	E.position     as     position      ,
	E.empstatus    as     empstatus     ,
	E.cardtype     as     cardtype      ,
	E.cardno       as     cardno        ,
	E.indate       as     indate        ,
	E.outdate      as     outdate       ,
	E.otel         as     otel          ,
	E.oaddress     as     oaddress      ,
	E.ozipcode     as     ozipcode      ,
	E.oemail       as     oemail        ,
	E.faxno        as     faxno         ,
	E.mobileno     as     mobileno      ,
	E.qq           as     qq            ,
	E.htel         as     htel          ,
	E.haddress     as     haddress      ,
	E.hzipcode     as     hzipcode      ,
	E.pemail       as     pemail        ,
	E.party        as     party         ,
	E.degree       as     degree        ,
	E.sortno       as     sortno        ,
	E.major        as     major         ,
	E.specialty    as     specialty     ,
	E.workexp      as     workexp       ,
	E.regdate      as     regdate       ,
	E.createtime   as     createtime    ,
	E.lastmodytime as     lastmodytime  ,
	E.orgidlist    as     orgidlist     ,
	E.remark       as     remark        ,
	E.tenant_id    as     tenant_id     ,
	E.app_id       as     app_id        ,
	E.weibo        as     weibo         ,
	
	EP.orgid     as     orgid            ,  
	EP.posid     as     posid            ,  
	EP.isleader  as     isleader         ,  
	EP.issync    as     issync           ,  
	EP.ismain    as     ismain          ,
	EP.empnamesy     as     empnamesy         

	FROM ORG_EMPLOYEE E,ORG_SFY_EMPPOS EP
	WHERE E.EMPID = EP.EMPID  
	AND EP.ORGID ='1'
	AND E.EMPID NOT IN
    (SELECT EMPID FROM ORG_EMPPOSITION EP,ORG_POSITION P
	       WHERE EP.POSITIONID=P.POSITIONID AND P.ORGID='1')   ORDER BY E.SORTNO
    
    ) AA LEFT JOIN ORG_POSITION BB
	ON AA.POSID = BB.POSITIONID