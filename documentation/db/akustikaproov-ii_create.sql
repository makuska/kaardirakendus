-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-12-17 18:15:26.44

-- tables
-- Table: measurement_result
CREATE TABLE measurement_result (
    id serial  NOT NULL,
    measurement_unit_id int  NOT NULL,
    measurement_result_type_id int  NOT NULL,
    stage_data_id int  NOT NULL,
    value varchar(255)  NOT NULL,
    description text  NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT measurement_result_pk PRIMARY KEY (id)
);

-- Table: measurement_result_type
CREATE TABLE measurement_result_type (
    id serial  NOT NULL,
    type varchar(125)  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT measurement_result_type_pk PRIMARY KEY (id)
);

-- Table: measurement_unit
CREATE TYPE unit_type AS ENUM ('m', 'dB');;

CREATE TABLE measurement_unit (
    id serial  NOT NULL,
    unit varchar(125)  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT measurement_unit_pk PRIMARY KEY (id)
);

-- Table: stage
CREATE TABLE stage (
    id serial  NOT NULL,
    name text  NOT NULL,
    county varchar(255)  NOT NULL,
    address text  NOT NULL,
    longitude float  NOT NULL,
    latitude float  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_pk PRIMARY KEY (id)
);

-- Table: stage_data
CREATE TABLE stage_data (
    id serial  NOT NULL,
    stage_id int  NOT NULL,
    stage_data_type_id int  NOT NULL,
    value text  NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_data_pk PRIMARY KEY (id)
);

-- Table: stage_data_type
CREATE TABLE stage_data_type (
    id serial  NOT NULL,
    type text  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_data_type_pk PRIMARY KEY (id)
);

-- Table: stage_image
CREATE TABLE stage_image (
    id serial  NOT NULL,
    stage_id int  NOT NULL,
    filename text  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_image_pk PRIMARY KEY (id)
);

-- Table: user
CREATE TABLE "user" (
    id serial  NOT NULL,
    name varchar(255)  NOT NULL,
    email varchar(255)  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: measurement_result_stage_data (table: measurement_result)
ALTER TABLE measurement_result ADD CONSTRAINT measurement_result_stage_data
    FOREIGN KEY (stage_data_id)
    REFERENCES stage_data (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: measuring_result_measuring_result_type (table: measurement_result)
ALTER TABLE measurement_result ADD CONSTRAINT measuring_result_measuring_result_type
    FOREIGN KEY (measurement_result_type_id)
    REFERENCES measurement_result_type (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: measuring_result_measuring_unit (table: measurement_result)
ALTER TABLE measurement_result ADD CONSTRAINT measuring_result_measuring_unit
    FOREIGN KEY (measurement_unit_id)
    REFERENCES measurement_unit (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: stage_data_stage (table: stage_data)
ALTER TABLE stage_data ADD CONSTRAINT stage_data_stage
    FOREIGN KEY (stage_id)
    REFERENCES stage (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: stage_data_stage_data_category (table: stage_data)
ALTER TABLE stage_data ADD CONSTRAINT stage_data_stage_data_category
    FOREIGN KEY (stage_data_type_id)
    REFERENCES stage_data_type (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: stage_image_stage (table: stage_image)
ALTER TABLE stage_image ADD CONSTRAINT stage_image_stage
    FOREIGN KEY (stage_id)
    REFERENCES stage (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

