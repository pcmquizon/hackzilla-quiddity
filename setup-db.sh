mysql -u root --password=$1 < backend/quiddity.sql
mysql -u root --password=$1 quiddity < backend/queries.sql
mysql -u root --password=$1 quiddity < backend/orders.sql
