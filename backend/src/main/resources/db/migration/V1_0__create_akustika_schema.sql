SELECT  'CREATE DATABASE akustika
            WITH
                OWNER = postgres
                ENCODING = ''UTF8''
                CONNECTION LIMIT = -1
                IS_TEMPLATE = False'
WHERE NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'akustika');

CREATE SCHEMA IF NOT EXISTS akustika;