DROP DATABASE IF EXISTS dbCustomer;
CREATE DATABASE IF NOT EXISTS dbCustomer;

USE dbCustomer;

SET GLOBAL group_concat_max_len = 1000000;

/*(account type for each of the accounts in chart of accounts)*/
CREATE TABLE tCustomer (
_id INT NOT NULL AUTO_INCREMENT,
customername VARCHAR(255),	
customeraddress	VARCHAR(255),
customerphone VARCHAR(255),
customertype VARCHAR(255),
createdate timestamp default now(),
lastmodifieddate timestamp default now(),
createdby VARCHAR(255) default 'SYS',
lastmodifiedby VARCHAR(255) default 'SYS',
PRIMARY KEY (_id)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\tCustomer.csv'  
INTO TABLE tCustomer    
FIELDS TERMINATED BY ','  
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
(	
customername ,	
customeraddress	,
customerphone ,
customertype 
);


