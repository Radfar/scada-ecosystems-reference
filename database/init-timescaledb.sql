# PostgreSQL database initialization script
-- Create SCADA Data Schema
CREATE SCHEMA IF NOT EXISTS scada_historian;

-- Create core tag inventory table (Static metadata)
CREATE TABLE scada_historian.tag_definitions (
    tag_id SERIAL PRIMARY KEY,
    tag_path VARCHAR(255) UNIQUE NOT NULL,
    description TEXT,
    engineering_units VARCHAR(50)
);

-- Create transactional log table for analog values (Float/Real-time)
CREATE TABLE scada_historian.tag_history_analog (
    timestamp TIMESTAMP WITH TIME ZONE NOT NULL,
    tag_id INT REFERENCES scada_historian.tag_definitions(tag_id),
    tag_value DOUBLE PRECISION NOT NULL,
    quality_code INT NOT NULL DEFAULT 192 -- 192 is standard OPC UA "Good" quality
);

-- Create transactional log table for digital values/states (Booleans)
CREATE TABLE scada_historian.tag_history_digital (
    timestamp TIMESTAMP WITH TIME ZONE NOT NULL,
    tag_id INT REFERENCES scada_historian.tag_definitions(tag_id),
    tag_value BOOLEAN NOT NULL,
    quality_code INT NOT NULL DEFAULT 192
);

-- Generate composite indexes for hyper-fast SCADA Trend queries
CREATE INDEX idx_analog_query ON scada_historian.tag_history_analog (tag_id, timestamp DESC);
CREATE INDEX idx_digital_query ON scada_historian.tag_history_digital (tag_id, timestamp DESC);

-- Seed Initial Packaging Line Tag Inventory
INSERT INTO scada_historian.tag_definitions (tag_path, description, engineering_units) VALUES
('PackagingLine/Zone1/Motor_Speed', 'Main conveyor motor rotation velocity', 'RPM'),
('PackagingLine/Zone1/Zone_Temperature', 'Enclosure internal thermal metrics', '°C'),
('PackagingLine/Zone1/Air_Pressure', 'Pneumatic cylinder operating pressure', 'Bar'),
('PackagingLine/Zone1/State_Running', 'Machine operating status indicator', 'Boolean')
ON CONFLICT (tag_path) DO NOTHING;
