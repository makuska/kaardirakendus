CREATE TABLE measurement_result (
    id serial  NOT NULL,
    measurement_unit_id int  NOT NULL,
    measurement_result_type_id int  NOT NULL,
    stage_data_id int NOT NULL,
    value varchar(255)  NOT NULL,
    description text  NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT measurement_result_pk PRIMARY KEY (id)
);

-- connect measurement_result with measurement_unit table
ALTER TABLE measurement_result ADD CONSTRAINT measurement_result_measurement_unit
    FOREIGN KEY (measurement_unit_id)
    REFERENCES measurement_unit (id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- connect measurement_result with measurement_result_type table
ALTER TABLE measurement_result ADD CONSTRAINT measurement_result_measurement_result_type
    FOREIGN KEY (measurement_result_type_id)
    REFERENCES measurement_result_type (id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- connect measurement_result with stage_data table
ALTER TABLE measurement_result ADD CONSTRAINT measurement_result_stage_data
    FOREIGN KEY (stage_data_id)
    REFERENCES stage_data (id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;