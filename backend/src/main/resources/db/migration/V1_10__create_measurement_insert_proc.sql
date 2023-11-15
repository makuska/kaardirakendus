CREATE OR REPLACE PROCEDURE measurement_insert(
    stage_name VARCHAR(50),
    three_result VARCHAR(10),
    five_result VARCHAR(10),
    ten_result VARCHAR(10),
    public_result VARCHAR(10),
    fifteen_result VARCHAR(10) DEFAULT NULL,
    opening_direction VARCHAR(20) DEFAULT NULL
)
LANGUAGE plpgsql
AS $$
    DECLARE measurement_type_id stage_data_type.id%TYPE; -- measurement data type "header" record
    DECLARE decibel_id measurement_unit.id%TYPE;         -- dB measuring unit id
    DECLARE direction_id measurement_unit.id%TYPE;       -- stage direction unit id
    DECLARE three_m_id measurement_result_type.id%TYPE;
    DECLARE five_m_id measurement_result_type.id%TYPE;
    DECLARE ten_m_id measurement_result_type.id%TYPE;
    DECLARE fifteen_m_id measurement_result_type.id%TYPE;
    DECLARE public_m_id measurement_result_type.id%TYPE;
    DECLARE opening_direction_id measurement_result_type.id%TYPE; -- stage direction

    DECLARE selected_stage_id INTEGER;
    DECLARE measuring_id INTEGER;

    BEGIN
        SELECT id INTO measurement_type_id FROM stage_data_type WHERE type = 'Helitugevuse mõõtmine';
        SELECT id INTO decibel_id FROM measurement_unit WHERE unit = 'dB';
        SELECT id INTO direction_id FROM measurement_unit WHERE unit = 'suund';
        SELECT id INTO three_m_id FROM measurement_result_type WHERE type = '3m';
        SELECT id INTO five_m_id FROM measurement_result_type WHERE type = '5m';
        SELECT id INTO ten_m_id FROM measurement_result_type WHERE type = '10m';
        SELECT id INTO fifteen_m_id FROM measurement_result_type WHERE type = '15m';
        SELECT id INTO public_m_id FROM measurement_result_type WHERE type = 'publiku keskel';
        SELECT id INTO opening_direction_id FROM measurement_result_type WHERE type = 'laululava ava suund';

        SELECT id INTO selected_stage_id FROM stage WHERE name = stage_name;
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES (selected_stage_id, measurement_type_id, NULL, false, NOW(), NOW())
        RETURNING id INTO measuring_id;

        INSERT INTO measurement_result (measurement_unit_id, measurement_result_type_id, stage_data_id, value, description, deleted, created, edited)
        VALUES
            (decibel_id, three_m_id, measuring_id, three_result, NULL, false, NOW(), NOW()),
            (decibel_id, five_m_id, measuring_id, five_result, NULL, false, NOW(), NOW()),
            (decibel_id, ten_m_id, measuring_id, ten_result, NULL, false, NOW(), NOW()),
            (decibel_id, public_m_id, measuring_id, public_result, NULL, false, NOW(), NOW());

        IF fifteen_result IS NOT NULL THEN
            INSERT INTO measurement_result (measurement_unit_id, measurement_result_type_id, stage_data_id, value, description, deleted, created, edited)
            VALUES (decibel_id, fifteen_m_id, measuring_id, fifteen_result, NULL, false, NOW(), NOW());
        END IF;

        IF opening_direction IS NOT NULL THEN
            INSERT INTO measurement_result (measurement_unit_id, measurement_result_type_id, stage_data_id, value, description, deleted, created, edited)
            VALUES (direction_id, opening_direction_id, measuring_id, opening_direction, NULL, false, NOW(), NOW());
        END IF;
    END
$$;