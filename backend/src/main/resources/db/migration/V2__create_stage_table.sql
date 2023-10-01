CREATE TABLE IF NOT EXISTS stage (
    id serial  NOT NULL,
    name text  NOT NULL,
    county varchar(255)  NOT NULL,
    address text  NOT NULL,
    longitude float  NOT NULL,
    latitude float NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT stage_pk PRIMARY KEY (id)
);