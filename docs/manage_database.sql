-- To start Postgres command-line interface
-- psql postgres

-- Postgres help
\?

-- List databases
\l[+] [PATTERN]

-- List roles
\dg[S+] [PATTERN]
\du[S+] [PATTERN]

-- List tables
\dt[S+] [PATTERN]

-- To create
CREATE DATABASE twinspark;
CREATE USER twinspark WITH ENCRYPTED PASSWORD 'password';

-- Modify defaults
ALTER ROLE twinspark SET client_encoding TO 'utf8';
ALTER ROLE twinspark SET default_transaction_isolation TO 'read committed';
ALTER ROLE twinspark SET timezone TO 'UTC';

-- Grant permissions
GRANT ALL PRIVILEGES ON DATABASE twinspark TO twinspark;

-- To alter role as a superuser
ALTER ROLE twinspark SUPERUSER;
ALTER ROLE twinspark NOSUPERUSER;

-- To drop
DROP DATABASE IF EXISTS twinspark;
DROP ROLE IF EXISTS twinspark;