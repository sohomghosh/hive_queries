#Creating a table to be loaded with data from local file system
CREATE TABLE IF NOT EXISTS table1 (field1 bigint, field2 String)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

#Loading data into the table from local file system
LOAD DATA LOCAL INPATH '/tmp/ALL-data.csv'
OVERWRITE INTO TABLE table1;

#Creating a table
CREATE TABLE IF NOT EXISTS table2
(
  field1 bigint,  
  field2 int,
  field3 string
);

#Inserting data into the table just created from other tables
INSERT INTO table2 (field1,field2,field3) 
select t1.field1,t2.field2,t2.field3 from table2 t1, table2 t2 where <condition>;

#Writing data to a table in local file system
insert overwrite local directory '/tmp/query_1' select field1,field2,field3,field4 from table3 where filed2='KKR';

#Queries are same as sql queries
select * from table_name where <condition>;
