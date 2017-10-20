DROP TABLE org_emporg;

CREATE TABLE org_emporg (ORGID decimal NOT NULL, EMPID decimal NOT NULL, ISMAIN varchar(1), TENANT_ID varchar(64) NOT NULL, APP_ID varchar(64), posid decimal, isleader varchar(8), issync varchar(8), isvalid varchar(8), empnamesy varchar(32), PRIMARY KEY (ORGID, EMPID)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
