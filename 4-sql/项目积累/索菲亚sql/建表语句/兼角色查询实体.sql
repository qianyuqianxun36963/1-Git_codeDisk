select pauth.*, rol.role_name, org.orgname 
from cap_partyauth pauth, cap_role rol, org_organization org
where pauth.orgid=org.orgid 
and pauth.role_id = rol.role_id
and pauth.party_type = 'emp'
and pauth.role_type = 'role'