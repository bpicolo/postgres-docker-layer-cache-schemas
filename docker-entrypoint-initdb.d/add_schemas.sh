ls /schemas/*.sql | xargs -L1 -i% gosu postgres psql -d $POSTGRES_DB -a -f %
