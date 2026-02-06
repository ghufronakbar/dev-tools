-- Paksa root pakai mysql_native_password + kosongkan password
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED WITH mysql_native_password BY '';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

-- (opsional) pastikan DB ada
CREATE DATABASE IF NOT EXISTS concert_hub CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

FLUSH PRIVILEGES;

-- Cek (opsional)
-- SELECT user, host, plugin FROM mysql.user WHERE user='root';
