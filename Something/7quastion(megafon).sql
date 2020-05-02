CREATE DATABASE seven_quastion;
use seven_quastion;

CREATE TABLE table1(
  clnt_id INT NOT NULL,
  name VARCHAR (20) NOT NULL
);

CREATE TABLE table2(
  clnt_clnt_id  INT NOT NULL,
  brnc_brnc_id INT NOT NULL
);

INSERT INTO table1 (clnt_id, name)
VALUES (1, 'BOB');

INSERT INTO table1 (clnt_id, name)
VALUES (2, 'JANE');

INSERT INTO table2 (clnt_clnt_id, brnc_brnc_id)
VALUES (1, 3);

INSERT INTO table2 (clnt_clnt_id, brnc_brnc_id)
VALUES (1, 4);

INSERT INTO table2 (clnt_clnt_id, brnc_brnc_id)
VALUES (2, 3);

use seven_quastion;

select * from table1;
select * from table2;

select * from table1 t1 inner join table2 t2 on
t1.clnt_id = t2.clnt_clnt_id;

-- check JOIN 
select clnt_id, brnc_brnc_id from table1 t1 inner join table2 t2 on
t1.clnt_id = t2.clnt_clnt_id;

-- check query 
select clnt_id, brnc_brnc_id, count(*) from table1 t1 inner join table2 t2 on
t1.clnt_id = t2.clnt_clnt_id
group by brnc_brnc_id;

-- correct query (counting the number of clients in each region)
select brnc_brnc_id, count(*) from table1 t1 inner join table2 t2 on
t1.clnt_id = t2.clnt_clnt_id
group by brnc_brnc_id;