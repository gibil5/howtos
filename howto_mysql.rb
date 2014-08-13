
Creating database
------------------
mysql -u root
create database amarokdb;
grant usage on *.* to amarokuser@localhost identified by 'amarokpasswd';

test 
mysql -u amarokuser -p'amarokpasswd' amarokdb




Starting and stopping
---------------------
/etc/init.d/mysql start
/etc/init.d/mysql stop
/etc/init.d/mysql restart



Using
--------
mysql -u root -p

show databases;

use test2;

desc users;

select * from users;

select username from users;

SELECT * FROM users WHERE id = 1;

SELECT * FROM users WHERE username = 'gibil';

SELECT COUNT(*) FROM users;

