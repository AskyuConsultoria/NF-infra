mariadb -u root -p1234 -e "DROP DATABASE syntro"
mariadb -u root -p1234 < scripts/database_hom_syntro.sql 
mariadb -u root -p1234 syntro < scripts/database_hom_syntro_large.sql

