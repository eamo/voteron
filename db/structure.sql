--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: authentications; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authentications (
    id integer NOT NULL,
    user_id integer,
    provider character varying(255) NOT NULL,
    proid character varying(255) NOT NULL,
    token character varying(255),
    refresh_token character varying(255),
    secret character varying(255),
    expires_at timestamp without time zone,
    username character varying(255),
    image_url character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: authentications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE authentications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: authentications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE authentications_id_seq OWNED BY authentications.id;


--
-- Name: candidates; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE candidates (
    id integer NOT NULL,
    name character varying(255),
    overview text,
    election_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: candidates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE candidates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: candidates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE candidates_id_seq OWNED BY candidates.id;


--
-- Name: candidates_standpoints; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE candidates_standpoints (
    candidate_id integer,
    standpoint_id integer
);


--
-- Name: election_outcomes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE election_outcomes (
    id integer NOT NULL,
    election_id integer,
    candidate_id integer,
    outcome boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: election_outcomes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE election_outcomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: election_outcomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE election_outcomes_id_seq OWNED BY election_outcomes.id;


--
-- Name: elections; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE elections (
    id integer NOT NULL,
    name character varying(255),
    district character varying(255),
    overview text,
    vote_date date,
    positions integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: elections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE elections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: elections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE elections_id_seq OWNED BY elections.id;


--
-- Name: oauth_caches; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE oauth_caches (
    authentication_id integer NOT NULL,
    data_json text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: rails_admin_histories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rails_admin_histories (
    id integer NOT NULL,
    message text,
    username character varying(255),
    item integer,
    "table" character varying(255),
    month smallint,
    year bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: rails_admin_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rails_admin_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rails_admin_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rails_admin_histories_id_seq OWNED BY rails_admin_histories.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: standpoints; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE standpoints (
    id integer NOT NULL,
    name character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: standpoints_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE standpoints_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: standpoints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE standpoints_id_seq OWNED BY standpoints.id;


--
-- Name: user_supports; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE user_supports (
    id integer NOT NULL,
    user_id integer,
    candidate_id integer,
    supported boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: user_supports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_supports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_supports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_supports_id_seq OWNED BY user_supports.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    image_url character varying(255),
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    confirmation_token character varying(255),
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying(255),
    failed_attempts integer DEFAULT 0 NOT NULL,
    unlock_token character varying(255),
    locked_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    is_admin boolean
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY authentications ALTER COLUMN id SET DEFAULT nextval('authentications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY candidates ALTER COLUMN id SET DEFAULT nextval('candidates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY election_outcomes ALTER COLUMN id SET DEFAULT nextval('election_outcomes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY elections ALTER COLUMN id SET DEFAULT nextval('elections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rails_admin_histories ALTER COLUMN id SET DEFAULT nextval('rails_admin_histories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY standpoints ALTER COLUMN id SET DEFAULT nextval('standpoints_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_supports ALTER COLUMN id SET DEFAULT nextval('user_supports_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: authentications_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authentications
    ADD CONSTRAINT authentications_pkey PRIMARY KEY (id);


--
-- Name: candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY candidates
    ADD CONSTRAINT candidates_pkey PRIMARY KEY (id);


--
-- Name: election_outcomes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY election_outcomes
    ADD CONSTRAINT election_outcomes_pkey PRIMARY KEY (id);


--
-- Name: elections_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elections
    ADD CONSTRAINT elections_pkey PRIMARY KEY (id);


--
-- Name: rails_admin_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rails_admin_histories
    ADD CONSTRAINT rails_admin_histories_pkey PRIMARY KEY (id);


--
-- Name: standpoints_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY standpoints
    ADD CONSTRAINT standpoints_pkey PRIMARY KEY (id);


--
-- Name: user_supports_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY user_supports
    ADD CONSTRAINT user_supports_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_authentications_on_provider; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_authentications_on_provider ON authentications USING btree (provider);


--
-- Name: index_rails_admin_histories; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_rails_admin_histories ON rails_admin_histories USING btree (item, "table", month, year);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON users USING btree (confirmation_token);


--
-- Name: index_users_on_lower_email_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_lower_email_index ON users USING btree (lower((email)::text));


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_unlock_token ON users USING btree (unlock_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20130909170542');

INSERT INTO schema_migrations (version) VALUES ('20130909194719');

INSERT INTO schema_migrations (version) VALUES ('20131020063216');

INSERT INTO schema_migrations (version) VALUES ('20131021224642');

INSERT INTO schema_migrations (version) VALUES ('20140204233100');

INSERT INTO schema_migrations (version) VALUES ('20140204233952');

INSERT INTO schema_migrations (version) VALUES ('20141122135926');

INSERT INTO schema_migrations (version) VALUES ('20141122135939');

INSERT INTO schema_migrations (version) VALUES ('20141122135942');

INSERT INTO schema_migrations (version) VALUES ('20141122141752');

