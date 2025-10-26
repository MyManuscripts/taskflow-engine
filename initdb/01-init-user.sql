-- Создаём пользователя, только если его нет
DO $$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'taskflow') THEN
            CREATE USER taskflow WITH PASSWORD 'taskflow123';
        END IF;
    END $$;

-- Создаём базу, только если её нет
SELECT 'CREATE DATABASE taskflow'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'taskflow')\gexec

-- Назначаем владельца (на всякий случай)
ALTER DATABASE taskflow OWNER TO taskflow;

-- Даём права
GRANT ALL PRIVILEGES ON DATABASE taskflow TO taskflow;