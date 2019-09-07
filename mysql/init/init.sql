create database ms_db_main;
create database ms_db_log;

grant all privileges on 'ms_db_main'.'*' to 'ms_db'@'%' identified by 'W*goUr8e8Pv(u.';
-- grant all privileges on ms_db_log.* to 'ms_db'@'%' identified by 'W*goUr8e8Pv(u.';

flush privileges;

-- use ms_db_main;
-- source /root/main.sql;

-- use ms_db_log;
-- source /root/log.sql
