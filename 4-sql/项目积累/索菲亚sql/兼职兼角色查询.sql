select emporg.orgid , emporg.posid ,partrole.role_id 
from org_emporg emporg , cap_partyauth partrole 
where emporg.empid = '1241' 
and partrole.party_id = '1241'