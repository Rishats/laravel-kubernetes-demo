# Create user and database for Laravel APP.

```bash
kubectl run mysql-client --image=mysql:5.7 -i --rm --restart=Never --\
  mysql -h mysql-0.mysql <<EOF
CREATE DATABASE laravel;
CREATE USER 'laravel_user'@'%' IDENTIFIED WITH mysql_native_password BY 'pwd';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, INDEX, DROP, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON laravel.* TO 'laravel_user'@'%';
EOF
```

# Test
```bash
kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --\
  mysql -h mysql-read -e "USE laravel"
```