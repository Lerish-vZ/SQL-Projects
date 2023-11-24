-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.employees
(
    emp_id bigserial NOT NULL,
    first_name character varying(30) NOT NULL,
    surname character varying(30) NOT NULL,
    gender character varying(1),
    address character varying(50),
    email character varying(35),
    depart_id integer,
    role_id integer,
    salary_id integer,
    overtime_id integer,
    PRIMARY KEY (emp_id)
);

CREATE TABLE IF NOT EXISTS public.department
(
    depart_id bigserial NOT NULL,
    depart_name character varying(30),
    depart_city character varying(25),
    PRIMARY KEY (depart_id)
);

CREATE TABLE IF NOT EXISTS public.roles
(
    role_id bigserial NOT NULL,
    role character varying(25),
    PRIMARY KEY (role_id)
);

CREATE TABLE IF NOT EXISTS public.salaries
(
    salary_id bigserial NOT NULL,
    salary_pa money,
    PRIMARY KEY (salary_id)
);

CREATE TABLE IF NOT EXISTS public.overtime_hours
(
    overtime_id bigserial NOT NULL,
    overtime_hours character varying(30),
    PRIMARY KEY (overtime_id)
);

ALTER TABLE IF EXISTS public.employees
    ADD FOREIGN KEY (depart_id)
    REFERENCES public.department (depart_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.employees
    ADD FOREIGN KEY (role_id)
    REFERENCES public.roles (role_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.employees
    ADD FOREIGN KEY (salary_id)
    REFERENCES public.salaries (salary_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.employees
    ADD FOREIGN KEY (overtime_id)
    REFERENCES public.overtime_hours (overtime_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;