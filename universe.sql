--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    palnet_types integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteors (
    meteors_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    palnet_types integer,
    distance_from_earth numeric
);


ALTER TABLE public.meteors OWNER TO freecodecamp;

--
-- Name: meteors_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteors_id_seq OWNER TO freecodecamp;

--
-- Name: meteors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteors_id_seq OWNED BY public.meteors.meteors_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    palnet_types integer,
    distance_from_earth numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    palnet_types integer,
    distance_from_earth numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    palnet_types integer,
    distance_from_earth numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: meteors meteors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteors ALTER COLUMN meteors_id SET DEFAULT nextval('public.meteors_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy 2', 'this is galaxy 2', false, false, NULL, NULL, 563030, 2, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 3', '', true, true, NULL, NULL, 202093, 3, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 4', 'galaxy 4', false, false, NULL, NULL, 3900, 4, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 5', '', true, true, NULL, NULL, 86986995, 5, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 6', 'galaxy 6', true, false, NULL, NULL, 3000, 6, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 1', 'this is earth', false, true, NULL, NULL, 300003030, 1, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 7', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 8', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 9', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 10', NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 11', NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 12', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 13', NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 14', NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 15', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 16', NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 17', NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 18', NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 19', NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 20', NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL);


--
-- Data for Name: meteors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteors VALUES (1, 'galaxy 15', 'moon 15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.meteors VALUES (2, 'galaxy 16', 'moon 16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.meteors VALUES (3, 'galaxy 17', 'moon 17', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.meteors VALUES (4, 'galaxy 18', 'moon 18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.meteors VALUES (5, 'galaxy 19', 'moon 19', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.meteors VALUES (6, 'galaxy 20', 'moon 20', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'galaxy 1', 'moon 1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'galaxy 2', 'moon 2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'galaxy 3', 'moon 3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'galaxy 4', 'moon 4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'galaxy 5', 'moon 5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'galaxy 6', 'moon 6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'galaxy 7', 'moon 7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'galaxy 8', 'moon 8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'galaxy 9', 'moon 9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'galaxy 10', 'moon 10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'galaxy 11', 'moon 11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'galaxy 12', 'moon 12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'galaxy 13', 'moon 13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'galaxy 14', 'moon 14', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'galaxy 15', 'moon 15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'galaxy 16', 'moon 16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'galaxy 17', 'moon 17', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'galaxy 18', 'moon 18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'galaxy 19', 'moon 19', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'galaxy 20', 'moon 20', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (26, 'galaxy 1', 'planet 1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (27, 'galaxy 2', 'planet 2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (28, 'galaxy 3', 'planet 3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (29, 'galaxy 4', 'planet 4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (30, 'galaxy 5', 'planet 5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (31, 'galaxy 6', 'planet 6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (32, 'galaxy 7', 'planet 7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (33, 'galaxy 8', 'planet 8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (34, 'galaxy 9', 'planet 9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (35, 'galaxy 10', 'planet 10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (36, 'galaxy 11', 'planet 11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (37, 'galaxy 12', 'planet 12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (38, 'galaxy 13', 'planet 13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (39, 'galaxy 14', 'planet 14', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (40, 'galaxy 15', 'planet 15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (41, 'galaxy 16', 'planet 16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (42, 'galaxy 17', 'planet 17', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (43, 'galaxy 18', 'planet 18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (44, 'galaxy 19', 'planet 19', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (45, 'galaxy 20', 'planet 20', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'galaxy 1', 'star 1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'galaxy 2', 'star 2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'galaxy 3', 'star 3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'galaxy 4', 'star 4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'galaxy 5', 'star 5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'galaxy 6', 'star 6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 'galaxy 7', 'star 7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 'galaxy 8', 'star 8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (21, 'galaxy 9', 'star 9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (22, 'galaxy 10', 'star 10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (23, 'galaxy 11', 'star 11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (24, 'galaxy 12', 'star 12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (25, 'galaxy 13', 'star 13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (26, 'galaxy 14', 'star 14', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (27, 'galaxy 15', 'star 15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (28, 'galaxy 16', 'star 16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (29, 'galaxy 17', 'star 17', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (30, 'galaxy 18', 'star 18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (31, 'galaxy 19', 'star 19', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (32, 'galaxy 20', 'star 20', NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, true);


--
-- Name: meteors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteors_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 45, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 32, true);


--
-- Name: meteors meteors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteors
    ADD CONSTRAINT meteors_pkey PRIMARY KEY (meteors_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy pk_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uk_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uk_galaxy_id UNIQUE (id);


--
-- Name: galaxy uk_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uk_galaxy_name UNIQUE (name);


--
-- Name: meteors uk_meteors_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteors
    ADD CONSTRAINT uk_meteors_name UNIQUE (name);


--
-- Name: moon uk_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uk_moon_name UNIQUE (name);


--
-- Name: planet uk_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uk_planet_name UNIQUE (name);


--
-- Name: star uk_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uk_star_name UNIQUE (name);


--
-- Name: moon fk_moon_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_name FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet fk_planet_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_name FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: star fk_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_name FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--


