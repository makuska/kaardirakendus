CREATE TABLE stage_image (
     id serial  NOT NULL,
     stage_id int  NOT NULL,
     filename text  NOT NULL,
     deleted boolean  NOT NULL,
     created timestamp  NOT NULL,
     edited timestamp  NOT NULL,
     CONSTRAINT stage_image_pk PRIMARY KEY (id)
);

ALTER TABLE stage_image ADD CONSTRAINT Copy_of_image_stage
    FOREIGN KEY (stage_id)
        REFERENCES stage (id)
        NOT DEFERRABLE
            INITIALLY IMMEDIATE
;
