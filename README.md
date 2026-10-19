# postgres-project

## Backup

docker exec pg-practice pg_dump -U savelii -d shop > backup.sql

## Restore на чистую базу

CREATE DATABASE shop_chek;   -- внутри psql
cat backup.sql | docker exec -i pg-practice psql -U savelii -d shop_chek

## Проверка

docker exec -it pg-practice psql -U savelii -d shop -c "SELECT COUNT(*) FROM products;"
docker exec -it pg-practice psql -U savelii -d shop_chek -c "SELECT COUNT(*) FROM products;"

