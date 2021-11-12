alter session set "_ORACLE_SCRIPT"=true;
-- create user
CREATE USER widget_ltd
IDENTIFIED BY ldmspass123
DEFAULT TABLESPACE users
QUOTA UNLIMITED ON users
ACCOUNT UNLOCK;
-- grant priviledges
GRANT CREATE SESSION TO widget_ltd;
GRANT ALL PRIVILEGES TO widget_ltd;



