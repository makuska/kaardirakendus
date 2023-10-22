DO $$
    DECLARE measurement_type_id stage_data_type.id%TYPE; -- measurement data type "header" record
    DECLARE decibel_id measurement_unit.id%TYPE;         -- dB measuring unit id
    DECLARE three_m_id measurement_result_type.id%TYPE;  -- measuring distance
    DECLARE five_m_id measurement_result_type.id%TYPE;   -- measuring distance
    DECLARE ten_m_id measurement_result_type.id%TYPE;    -- measuring distance
    DECLARE public_m_id measurement_result_type.id%TYPE; -- measuring distance

    DECLARE selected_stage_id INTEGER;
    DECLARE measuring_id INTEGER;

    BEGIN
        INSERT INTO measurement_unit (unit, deleted, created, edited)
        VALUES ('dB', false, NOW(), NOW())
        RETURNING id INTO decibel_id;

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Helitugevuse mõõtmine', false, NOW(), NOW())
        RETURNING id INTO measurement_type_id;

        -- populate measurement_result_type
        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('3m', false, NOW(), NOW())
        RETURNING id INTO three_m_id;

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('5m', false, NOW(), NOW())
        RETURNING id INTO five_m_id;

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('10m', false, NOW(), NOW())
        RETURNING id INTO ten_m_id;

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('publiku keskelt', false, NOW(), NOW())
        RETURNING id INTO public_m_id;

        -- selecting stage for data insertion
        SELECT id INTO selected_stage_id FROM stage WHERE name = 'Kurepalu laululava';
        INSERT INTO stage_data (stage_id, stage_data_type_id, value, deleted, created, edited)
        VALUES (selected_stage_id, measurement_type_id, NULL, false, NOW(), NOW());
        RETURNING id INTO measuring_id;

        -- insert measurement data for stage
        INSERT INTO measurement_result (measurement_unit_id, measurement_result_type_id, stage_data_id, value, description, deleted, created, edited)
        VALUES
            (decibel_id, three_m_id, measuring_id, '80.8', NULL, false, NOW(), NOW()),
            (decibel_id, five_m_id, measuring_id, '74.2', NULL, false, NOW(), NOW()),
            (decibel_id, ten_m_id, measuring_id, '71', NULL, false, NOW(), NOW()),
            (decibel_id, public_m_id, measuring_id, '64', NULL, false, NOW(), NOW())
    END
$$;