select emporg.*, pos.posiname, org.orgname 
from org_emporg emporg, org_sfy_position pos, org_organization org 
where emporg.orgid=org.orgid 
and emporg.posid = pos.positionid 
and emporg.ismain = 'n'