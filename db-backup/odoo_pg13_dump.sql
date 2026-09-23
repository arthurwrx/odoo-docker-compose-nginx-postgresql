--
-- PostgreSQL database cluster dump
--

\restrict JfiL5Auk6oweb9qIa08be3HJ8vr5vV1PfSjc6hHZczWZoQr7kOaAR7vLQK1BGpz

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE odoo;
ALTER ROLE odoo WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5039b285724b3f3f29799d6d39a22fb2d';






\unrestrict JfiL5Auk6oweb9qIa08be3HJ8vr5vV1PfSjc6hHZczWZoQr7kOaAR7vLQK1BGpz

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict gG8ymZYWcsGX5KJ9UhyecrHZmF5JlaYIObS4cdvzQ5DL7IYJMZ8kMXMp3etl4Lp

-- Dumped from database version 13.23 (Debian 13.23-1.pgdg13+1)
-- Dumped by pg_dump version 13.23 (Debian 13.23-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict gG8ymZYWcsGX5KJ9UhyecrHZmF5JlaYIObS4cdvzQ5DL7IYJMZ8kMXMp3etl4Lp

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict xEYe9mkOkdYjP5IJRdI8WSXbRxAZHWRHuQpdd4RjMdmVdZmnp1tZhKQOlXvO5wm

-- Dumped from database version 13.23 (Debian 13.23-1.pgdg13+1)
-- Dumped by pg_dump version 13.23 (Debian 13.23-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict xEYe9mkOkdYjP5IJRdI8WSXbRxAZHWRHuQpdd4RjMdmVdZmnp1tZhKQOlXvO5wm

--
-- PostgreSQL database cluster dump complete
--

