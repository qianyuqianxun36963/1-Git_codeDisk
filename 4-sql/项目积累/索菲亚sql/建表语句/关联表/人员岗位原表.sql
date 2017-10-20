DROP TABLE org_empposition;
CREATE TABLE org_empposition (
	POSITIONID decimal NOT NULL, 
	EMPID decimal NOT NULL, 
	ISMAIN varchar(1), 
	TENANT_ID varchar(64) NOT NULL, 
	APP_ID varchar(64), 
	PRIMARY KEY (POSITIONID, EMPID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
