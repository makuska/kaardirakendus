CREATE TABLE stage_data_type (
    id serial  NOT NULL,
    type text  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_data_type_pk PRIMARY KEY (id)
);