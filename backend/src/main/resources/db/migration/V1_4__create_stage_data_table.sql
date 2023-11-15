CREATE TABLE stage_data (
    id serial  NOT NULL,
    stage_id int  NOT NULL,
    stage_data_type_id int  NOT NULL,
    value text NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_data_pk PRIMARY KEY (id)
);

-- connect stage_data with stage table
ALTER TABLE stage_data ADD CONSTRAINT stage_data_stage
    FOREIGN KEY (stage_id)
    REFERENCES stage (id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- connect stage_data with stage_data_type table
ALTER TABLE stage_data ADD CONSTRAINT stage_data_stage_data_type
    FOREIGN KEY (stage_data_type_id)
    REFERENCES stage_data_type (id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;