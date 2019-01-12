--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plperl; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plperl WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plperl; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plperl IS 'PL/Perl procedural language';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tb_car; Type: TABLE; Schema: public; Owner: gtljwver
--

CREATE TABLE public.tb_car (
    id integer NOT NULL,
    year integer NOT NULL,
    make character varying(2044) NOT NULL,
    model character varying(2044) NOT NULL
);


ALTER TABLE public.tb_car OWNER TO gtljwver;

--
-- Name: tb_car_id_seq; Type: SEQUENCE; Schema: public; Owner: gtljwver
--

CREATE SEQUENCE public.tb_car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_car_id_seq OWNER TO gtljwver;

--
-- Name: tb_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gtljwver
--

ALTER SEQUENCE public.tb_car_id_seq OWNED BY public.tb_car.id;


--
-- Name: tb_car id; Type: DEFAULT; Schema: public; Owner: gtljwver
--

ALTER TABLE ONLY public.tb_car ALTER COLUMN id SET DEFAULT nextval('public.tb_car_id_seq'::regclass);


--
-- Data for Name: tb_car; Type: TABLE DATA; Schema: public; Owner: gtljwver
--

INSERT INTO public.tb_car VALUES (1, 2000, 'Honda', 'Brio');
INSERT INTO public.tb_car VALUES (2, 2010, 'honda', 'mobilio');
INSERT INTO public.tb_car VALUES (3, 1994, 'Acura', 'NSX');
INSERT INTO public.tb_car VALUES (4, 1992, 'Toyota', 'Corolla');
INSERT INTO public.tb_car VALUES (5, 1981, 'DeLorean', 'DMC-12');
INSERT INTO public.tb_car VALUES (6, 2010, 'Suzuki', 'APV');
INSERT INTO public.tb_car VALUES (7, 2012, 'Toyota', 'Avanza');
INSERT INTO public.tb_car VALUES (8, 2011, 'Nissan', 'Evalia');
INSERT INTO public.tb_car VALUES (9, 2013, 'Toyota', 'Alphard');
INSERT INTO public.tb_car VALUES (10, 2010, 'honda', 'mobilio');
INSERT INTO public.tb_car VALUES (11, 1994, 'Acura', 'NSX');
INSERT INTO public.tb_car VALUES (12, 1992, 'Toyota', 'Corolla');
INSERT INTO public.tb_car VALUES (13, 1981, 'DeLorean', 'DMC-12');
INSERT INTO public.tb_car VALUES (14, 2010, 'Suzuki', 'APV');
INSERT INTO public.tb_car VALUES (15, 2012, 'Toyota', 'Avanza');
INSERT INTO public.tb_car VALUES (16, 2011, 'Nissan', 'Evalia');
INSERT INTO public.tb_car VALUES (17, 2013, 'Toyota', 'Alphard');


--
-- Name: tb_car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gtljwver
--

SELECT pg_catalog.setval('public.tb_car_id_seq', 17, true);


--
-- Name: tb_car unique_tb_car_id; Type: CONSTRAINT; Schema: public; Owner: gtljwver
--

ALTER TABLE ONLY public.tb_car
    ADD CONSTRAINT unique_tb_car_id PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

