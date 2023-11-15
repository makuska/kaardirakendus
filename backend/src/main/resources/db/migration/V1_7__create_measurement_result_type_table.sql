CREATE TABLE measurement_result_type (
    id serial  NOT NULL,
    type varchar(125)  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT measurement_result_type_pk PRIMARY KEY (id)
);
