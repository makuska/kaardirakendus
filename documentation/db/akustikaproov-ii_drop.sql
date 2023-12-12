-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-10-28 15:51:45.159

-- foreign keys
ALTER TABLE stage_image
    DROP CONSTRAINT Copy_of_image_stage;

ALTER TABLE measurement_result
    DROP CONSTRAINT measurement_result_stage_data;

ALTER TABLE measurement_result
    DROP CONSTRAINT measuring_result_measuring_result_type;

ALTER TABLE measurement_result
    DROP CONSTRAINT measuring_result_measuring_unit;

ALTER TABLE stage_data
    DROP CONSTRAINT stage_data_stage;

ALTER TABLE stage_data
    DROP CONSTRAINT stage_data_stage_data_category;

-- tables
DROP TABLE measurement_result;

DROP TABLE measurement_result_type;

DROP TABLE measurement_unit;

DROP TABLE stage;

DROP TABLE stage_data;

DROP TABLE stage_data_type;

DROP TABLE stage_image;

DROP TABLE "user";

-- End of file.

