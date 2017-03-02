--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alumnos; Type: TABLE; Schema: public; Owner: chema
--

CREATE TABLE alumnos (
    id integer NOT NULL,
    matricula text,
    nombre text,
    sexo text
);


ALTER TABLE alumnos OWNER TO chema;

--
-- Name: alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: chema
--

CREATE SEQUENCE alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE alumnos_id_seq OWNER TO chema;

--
-- Name: alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chema
--

ALTER SEQUENCE alumnos_id_seq OWNED BY alumnos.id;


--
-- Name: alumnos id; Type: DEFAULT; Schema: public; Owner: chema
--

ALTER TABLE ONLY alumnos ALTER COLUMN id SET DEFAULT nextval('alumnos_id_seq'::regclass);


--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: chema
--

COPY alumnos (id, matricula, nombre, sexo) FROM stdin;
\.


--
-- Name: alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chema
--

SELECT pg_catalog.setval('alumnos_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

