--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

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
-- Name: podemos_eval; Type: SCHEMA; Schema: -; Owner: odoo
--

CREATE SCHEMA podemos_eval;


ALTER SCHEMA podemos_eval OWNER TO odoo;

SET default_tablespace = '';

--
-- Name: calendariopagos; Type: TABLE; Schema: podemos_eval; Owner: odoo
--

CREATE TABLE podemos_eval.calendariopagos (
    id integer NOT NULL,
    cuenta_id character varying(5) NOT NULL,
    num_pago integer NOT NULL,
    monto numeric(15,2) NOT NULL,
    fecha_pago date NOT NULL,
    estatus character varying(15) NOT NULL
);


ALTER TABLE podemos_eval.calendariopagos OWNER TO odoo;

--
-- Name: clientes; Type: TABLE; Schema: podemos_eval; Owner: odoo
--

CREATE TABLE podemos_eval.clientes (
    id character varying(7) NOT NULL,
    nombre character varying(60) NOT NULL
);


ALTER TABLE podemos_eval.clientes OWNER TO odoo;

--
-- Name: cuentas; Type: TABLE; Schema: podemos_eval; Owner: odoo
--

CREATE TABLE podemos_eval.cuentas (
    id character varying(5) NOT NULL,
    grupo_id character varying(5) NOT NULL,
    estatus character varying(15) NOT NULL,
    monto numeric(15,2) NOT NULL,
    saldo numeric(15,2) NOT NULL
);


ALTER TABLE podemos_eval.cuentas OWNER TO odoo;

--
-- Name: grupos; Type: TABLE; Schema: podemos_eval; Owner: odoo
--

CREATE TABLE podemos_eval.grupos (
    id character varying(5) NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE podemos_eval.grupos OWNER TO odoo;

--
-- Name: miembros; Type: TABLE; Schema: podemos_eval; Owner: odoo
--

CREATE TABLE podemos_eval.miembros (
    grupo_id character varying(5) NOT NULL,
    cliente_id character varying(7) NOT NULL
);


ALTER TABLE podemos_eval.miembros OWNER TO odoo;

--
-- Name: transacciones; Type: TABLE; Schema: podemos_eval; Owner: odoo
--

CREATE TABLE podemos_eval.transacciones (
    id integer NOT NULL,
    cuenta_id character varying(5) NOT NULL,
    fecha timestamp without time zone NOT NULL,
    monto numeric(15,2) NOT NULL
);


ALTER TABLE podemos_eval.transacciones OWNER TO odoo;

--
-- Data for Name: calendariopagos; Type: TABLE DATA; Schema: podemos_eval; Owner: odoo
--

COPY podemos_eval.calendariopagos (id, cuenta_id, num_pago, monto, fecha_pago, estatus) FROM '../data/data_calendariopagos.csv' DELIMITER ',' CSV HEADER;



--
-- Data for Name: clientes; Type: TABLE DATA; Schema: podemos_eval; Owner: odoo
--

COPY podemos_eval.clientes (id, nombre) FROM '../data/data_clientes.csv' DELIMITER ',' CSV HEADER;



--
-- Data for Name: cuentas; Type: TABLE DATA; Schema: podemos_eval; Owner: odoo
--

COPY podemos_eval.cuentas (id, grupo_id, estatus, monto, saldo) FROM '../data/data_cuentas.csv' DELIMITER ',' CSV HEADER;



--
-- Data for Name: grupos; Type: TABLE DATA; Schema: podemos_eval; Owner: odoo
--

COPY podemos_eval.grupos (id, nombre) FROM '../data/data_grupos.csv' DELIMITER ',' CSV HEADER;


--
-- Data for Name: miembros; Type: TABLE DATA; Schema: podemos_eval; Owner: odoo
--

COPY podemos_eval.miembros (grupo_id, cliente_id) FROM '../data/data_miembros.csv' DELIMITER ',' CSV HEADER;



--
-- Data for Name: transacciones; Type: TABLE DATA; Schema: podemos_eval; Owner: odoo
--

COPY podemos_eval.transacciones (id, cuenta_id, fecha, monto) FROM '../data/data_transacciones.csv' DELIMITER ',' CSV HEADER;



--
-- Name: calendariopagos calendariopagos_pkey; Type: CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.calendariopagos
    ADD CONSTRAINT calendariopagos_pkey PRIMARY KEY (id);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- Name: cuentas cuentas_pkey; Type: CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.cuentas
    ADD CONSTRAINT cuentas_pkey PRIMARY KEY (id);


--
-- Name: grupos grupos_pkey; Type: CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (id);


--
-- Name: miembros miembros_pkey; Type: CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.miembros
    ADD CONSTRAINT miembros_pkey PRIMARY KEY (grupo_id, cliente_id);


--
-- Name: transacciones transacciones_pkey; Type: CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.transacciones
    ADD CONSTRAINT transacciones_pkey PRIMARY KEY (id);


--
-- Name: fk_calendariopagos_1_idx; Type: INDEX; Schema: podemos_eval; Owner: odoo
--

CREATE INDEX fk_calendariopagos_1_idx ON podemos_eval.calendariopagos USING btree (cuenta_id);


--
-- Name: fk_cliente_idx; Type: INDEX; Schema: podemos_eval; Owner: odoo
--

CREATE INDEX fk_cliente_idx ON podemos_eval.miembros USING btree (cliente_id);


--
-- Name: fk_grupo_idx; Type: INDEX; Schema: podemos_eval; Owner: odoo
--

CREATE INDEX fk_grupo_idx ON podemos_eval.cuentas USING btree (grupo_id);


--
-- Name: fk_transacciones_1_idx; Type: INDEX; Schema: podemos_eval; Owner: odoo
--

CREATE INDEX fk_transacciones_1_idx ON podemos_eval.transacciones USING btree (cuenta_id);


--
-- Name: calendariopagos fk_calendariopagos_1; Type: FK CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.calendariopagos
    ADD CONSTRAINT fk_calendariopagos_1 FOREIGN KEY (cuenta_id) REFERENCES podemos_eval.cuentas(id);


--
-- Name: miembros fk_cliente; Type: FK CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.miembros
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES podemos_eval.clientes(id);


--
-- Name: cuentas fk_cuentas_1; Type: FK CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.cuentas
    ADD CONSTRAINT fk_cuentas_1 FOREIGN KEY (grupo_id) REFERENCES podemos_eval.grupos(id);


--
-- Name: miembros fk_grupo; Type: FK CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.miembros
    ADD CONSTRAINT fk_grupo FOREIGN KEY (grupo_id) REFERENCES podemos_eval.grupos(id);


--
-- Name: transacciones fk_transacciones_1; Type: FK CONSTRAINT; Schema: podemos_eval; Owner: odoo
--

ALTER TABLE ONLY podemos_eval.transacciones
    ADD CONSTRAINT fk_transacciones_1 FOREIGN KEY (cuenta_id) REFERENCES podemos_eval.cuentas(id);


--
-- PostgreSQL database dump complete
--
