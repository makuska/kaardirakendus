DO $$
    BEGIN
        INSERT INTO measurement_unit (unit, deleted, created, edited)
        VALUES ('dB', false, NOW(), NOW());

        INSERT INTO measurement_unit (unit, deleted, created, edited)
        VALUES ('direction', false, NOW(), NOW());

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Loudness measurement', false, NOW(), NOW());

        -- populate measurement_result_type
        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('3m', false, NOW(), NOW());

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('5m', false, NOW(), NOW());

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('10m', false, NOW(), NOW());

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('15m', false, NOW(), NOW());

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('public', false, NOW(), NOW());

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('stage direction', false, NOW(), NOW());
    END
$$;