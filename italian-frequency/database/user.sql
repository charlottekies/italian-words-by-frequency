-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER :DB_Owner_Username WITH PASSWORD :DB_Password;

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO :DB_Owner_Username;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO :DB_Owner_Username;

CREATE USER :DB_User_Username WITH PASSWORD :DB_Password;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO :DB_User_Username;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO :DB_User_Username;