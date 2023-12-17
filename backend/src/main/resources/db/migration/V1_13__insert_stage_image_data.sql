CREATE OR REPLACE PROCEDURE image_insert(
    IN stage_name VARCHAR(50),
    IN filename VARCHAR(255)
)
LANGUAGE plpgsql
AS $$
    DECLARE selected_stage_id INTEGER;
BEGIN
    SELECT id INTO selected_stage_id FROM stage WHERE name = stage_name;

    INSERT INTO stage_image
        (stage_id, filename, deleted, created, edited)
    values
        (selected_stage_id, filename, false, now(), now());
END;
$$;

CREATE OR REPLACE PROCEDURE insert_images(IN stage_name TEXT, IN base_file_name TEXT, IN num_iterations INT)
    LANGUAGE plpgsql
AS $$
DECLARE
    i INT;
BEGIN
    FOR i IN 1..num_iterations LOOP
        EXECUTE 'CALL image_insert($1, $2)' USING stage_name, base_file_name || '_' || i || '.jpg';
    END LOOP;
END;
$$;

call image_insert('Jõhvi laululava', 'Jõhvi_1.jpg');
call image_insert('Jõhvi laululava', 'Jõhvi_2.jpg');
call image_insert('Jõhvi laululava', 'Jõhvi_3.jpg');
call image_insert('Jõhvi laululava', 'Jõhvi_4.jpg');

call image_insert('Erra laululava', 'Erra_1.jpg');
call image_insert('Erra laululava', 'Erra_2.jpg');
call image_insert('Erra laululava', 'Erra_3.jpg');
call image_insert('Erra laululava', 'Erra_4.jpg');

call image_insert('Iisaku laululava', 'lisaku_1.jpg');
call image_insert('Iisaku laululava', 'lisaku_2.jpg');
call image_insert('Iisaku laululava', 'lisaku_3.jpg');

CALL insert_images('Keava laululava', 'Kaeva', 6);
CALL insert_images('Kohtla-Nõmme laululava', 'Kohtla-Nõmme', 3);
CALL insert_images('Kulja laululava', 'Kulja', 3);
CALL insert_images('Kumma laululava', 'Kumma', 12);
CALL insert_images('Käru laululava', 'Käru', 10);
CALL insert_images('Lohusuu', 'Lohusuu', 4);
CALL insert_images('Lüganuse laululava', 'Lüganuse', 5);
CALL insert_images('Oonurme laululava', 'Oonurme', 4);
CALL insert_images('Saka mõisa suvelava', 'Saka_mois', 4);
CALL insert_images('Ingliste kõlakoda', 'Ingliste', 14);
CALL insert_images('Sonda kõlakoda', 'Sonda', 4);
CALL insert_images('Toila laululava', 'Toila', 6);
CALL insert_images('Vasknarva kõlakoda (ordulinnuse varemed)', 'Vasknarva', 2);
CALL insert_images('Valtu-Nurme laululava', 'Valtu-Nurme', 14);

CALL insert_images('Pürksi kõlakoda', 'Pürksi', 4);
CALL insert_images('Viru-Jaagupi kõlakoda', 'Viru-jaagupi', 5);
CALL insert_images('Vanamõisa laululava', 'vanamõisa', 4);
CALL insert_images('Uhtna laululava', 'Uhtna', 6);
CALL insert_images('Tootsi laululava', 'Tootsi', 5);
CALL insert_images('Saue laululava', 'Saue', 4);
CALL insert_images('Pajusti laululava', 'Pajusti', 5);
CALL insert_images('Mädara laululava', 'Mädara', 5);
CALL insert_images('Lihula laululava', 'Lihula', 4);
CALL insert_images('Laitse laululava', 'Laitse', 4);
CALL insert_images('Kunda laululava', 'Kunda', 4);
CALL insert_images('Kantküla kõlakoda', 'Kantküla', 4);
CALL insert_images('Kalju-Lava', 'Kalju', 5);
CALL insert_images('Haeska laululava', 'Haeska', 4);
CALL insert_images('Audru laululava', 'Audru', 8);
CALL insert_images('Roela laululava', 'Roela', 5);
CALL insert_images('Saka laululava', 'Saka', 4);

-- CALL insert_images('Haapsalu linnus', 'Haapsalu_linnus', 4); 55 id
