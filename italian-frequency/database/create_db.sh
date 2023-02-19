#!/bin/bash
BASEDIR=$(dirname $0)
DATABASE=${DB_Name}
psql -U postgres -v "DB_Name=$DB_Name" -v "DB_Owner_Username=$DB_Owner_Username" -v "DB_User_Username=$DB_User_Username" -v "DB_Password=$DB_Password" -f "$BASEDIR/dropdb.sql" &&
createdb -U postgres $DATABASE &&
psql -U postgres -d $DATABASE -f "$BASEDIR/schema.sql" &&
psql -U postgres -d $DATABASE -v "DB_Name=$DB_Name" -v "DB_Owner_Username=$DB_Owner_Username" -v "DB_User_Username=$DB_User_Username" -v "DB_Password='$DB_Password'" -f "$BASEDIR/user.sql" &&
psql -U postgres -d $DATABASE -f "$BASEDIR/word_data.sql"