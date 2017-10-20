select aa.*,org.orgname from 
(select 
	po.*   ,
	pt.postypename ,
	pt.postypekind
	from org_position po left join org_sfy_postype pt on po.positype = pt.postypeid
) aa  left join org_organization org on aa.orgid = org.orgid