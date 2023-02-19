-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER frequency_owner WITH PASSWORD 'cheezburger';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO frequency_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO frequency_owner;

CREATE USER frequency_appuser WITH PASSWORD 'cheezburger';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO frequency_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO frequency_appuser;