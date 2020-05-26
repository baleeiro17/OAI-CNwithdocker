# mysql setup 
cp /oai-cn/etc/acl.conf /usr/local/etc/oai/freeDiameter/

# configure FQDN
echo "Hostname (FQDN): $(hostname -f)"
echo "Hostname (host): $(hostname -s)"

# generate certificates.
./oai-cn/scripts/check_hss_s6a_certificate /usr/local/etc/oai/freeDiameter $(hostname)

# import database.
mysql --host "mysqldb" -u "root" -p"linux" "oai_db" < /oai-cn/src/oai_hss/db/oai_db.sql && echo "Database Updated" || echo "Database Non Updated"
mysql --host "mysqldb" -u "root" -p"linux" "oai_db" < init.sql && echo "Database Updated" || echo "Database Non Updated"

# running hss