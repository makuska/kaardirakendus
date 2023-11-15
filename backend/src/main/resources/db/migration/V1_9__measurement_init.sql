DO $$
    BEGIN
        INSERT INTO measurement_unit (unit, deleted, created, edited)
        VALUES ('dB', false, NOW(), NOW());

        INSERT INTO measurement_unit (unit, deleted, created, edited)
        VALUES ('suund', false, NOW(), NOW());

        INSERT INTO stage_data_type (type, deleted, created, edited)
        VALUES ('Helitugevuse mõõtmine', false, NOW(), NOW());

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
        VALUES ('publiku keskel', false, NOW(), NOW());

        INSERT INTO measurement_result_type (type, deleted, created, edited)
        VALUES ('laululava ava suund', false, NOW(), NOW());
    END
$$;