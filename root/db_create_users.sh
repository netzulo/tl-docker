#!/bin/bash
###
# Testlink at docker for fast development
###
# Create grants for user for LOCAL connections
echo "Creating LOCAL MariaDB user/pass: 'testlink/testlink'"
mysql -u root -e "CREATE USER 'testlink'@'localhost' IDENTIFIED BY 'testlink';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'testlink'@'localhost' WITH GRANT OPTION;"
# Create grants for user for REMOTE connections
echo "Creating REMOTE MariaDB user/pass: 'testlink/testlink'"
mysql -u root -e "CREATE USER 'testlink'@'%' IDENTIFIED BY 'testlink';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'testlink'@'%' WITH GRANT OPTION;"
# Refresh Privileges
echo "Refresh MariaDB privileges"
mysql -u root -e "FLUSH PRIVILEGES;"


if [ "$?" == "0" ]
then
    echo "Ready to connect"
else
    echo "Something it's failing at try to create MariaDB users"
fi
