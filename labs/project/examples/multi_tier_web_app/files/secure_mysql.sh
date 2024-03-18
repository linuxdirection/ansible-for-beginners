#!/usr/bin/expect

# Environment variable for the new root password
set new_root_passwd $env(NEW_ROOT_PASSWORD)

# Automate the mysql_secure_installation steps
spawn mysql_secure_installation

expect "Press y|Y for Yes, any other key for No:"
send "n\r"

expect "New password:"
send "$new_root_passwd\r"

expect "Re-enter new password:"
send "$new_root_passwd\r"

expect "Remove anonymous users? (Press y|Y for Yes, any other key for No) :"
send "y\r"

expect "Disallow root login remotely? (Press y|Y for Yes, any other key for No) :"
send "y\r"

expect "Remove test database and access to it? (Press y|Y for Yes, any other key for No) :"
send "y\r"

expect "Reload privilege tables now? (Press y|Y for Yes, any other key for No) :"
send "y\r"

expect eof
