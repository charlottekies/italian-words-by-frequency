-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = :'DB_Name';

DROP DATABASE IF EXISTS :DB_Name;

DROP USER :DB_Owner_Username;
DROP USER :DB_User_Username;