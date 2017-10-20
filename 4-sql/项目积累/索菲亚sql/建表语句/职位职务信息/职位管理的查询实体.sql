select aa.*,org.orgname from 
(select 
	po.positionid          ,
	po.posiname        ,
	po.issync         ,
	po.positype      ,
	pt.postypename     ,
	po.orgid          
	from org_sfy_position po left join org_sfy_postype pt on po.positype = pt.postypeid
) aa  left join org_organization org on aa.orgid = org.orgid