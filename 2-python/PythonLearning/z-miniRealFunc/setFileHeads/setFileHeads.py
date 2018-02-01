#encode = utf-8

import re

filepath = "data.html"

file = open(filepath)
out  = open("my"+filepath,'w')
slist = file.readlines();
for s in slist:
	if(re.search(r'#h[0-9]{1,2}',s)):
		headtag  = re.search(r'#h[0-9]{1,2}', s).group()
		level = headtag[2:]
		headtext = re.sub(r'#h[0-9]{1,2}', "", s)[:-1]
		newhead  = "<h"+level+">"+headtext+"</h"+level+">"
		out.write(newhead)
	else:
	    out.write(s)
file.close()
out.close()
