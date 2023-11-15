CREATE TABLE measurement_unit (
    id serial  NOT NULL,
    unit varchar(125)  NOT NULL,
    deleted boolean  NOT NULL,
    created timestamp  NOT NULL,
    edited timestamp  NOT NULL,
    CONSTRAINT measurement_unit_pl PRIMARY KEY (id)
);
