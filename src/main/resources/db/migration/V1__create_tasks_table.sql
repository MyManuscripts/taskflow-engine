CREATE TABLE tasks (
                       id UUID PRIMARY KEY,
                       task_type VARCHAR(50) NOT NULL,
                       status VARCHAR(20) NOT NULL,
                       payload JSONB,
                       result JSONB,
                       created_at TIMESTAMP NOT NULL,
                       updated_at TIMESTAMP NOT NULL
);