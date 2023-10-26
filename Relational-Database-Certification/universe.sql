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
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_light_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    name character varying(50) NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_light_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer,
    name character varying(50) NOT NULL
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
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_light_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    planet_types_id integer,
    name character varying(50) NOT NULL
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    description text NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_light_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer,
    name character varying(50) NOT NULL
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

INSERT INTO public.galaxy VALUES (1, 7000, 0, 'Our homegalaxy', true, false, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 8500, 1300, 'The second most famous galaxy', false, false, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 3250, 13450, 'Some unimportant galaxy', false, false, 'HS4234');
INSERT INTO public.galaxy VALUES (4, 8292, 12394, 'Yet another unimportant galaxy', false, false, 'Some technical name');
INSERT INTO public.galaxy VALUES (5, 9883, 29231, 'Look, it has a shape of Banana', false, false, 'Banana galaxy');
INSERT INTO public.galaxy VALUES (6, 9002, 178222, 'Very distant galaxy', false, true, 'Rolling Ball');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 100, 10, 'Description 1', true, true, 1, 'Moon 1');
INSERT INTO public.moon VALUES (2, 200, 20, 'Description 2', false, true, 2, 'Moon 2');
INSERT INTO public.moon VALUES (3, 300, 30, 'Description 3', false, true, 3, 'Moon 3');
INSERT INTO public.moon VALUES (4, 400, 40, 'Description 4', true, true, 1, 'Moon 4');
INSERT INTO public.moon VALUES (5, 500, 50, 'Description 5', false, true, 2, 'Moon 5');
INSERT INTO public.moon VALUES (6, 600, 60, 'Description 6', true, true, 3, 'Moon 6');
INSERT INTO public.moon VALUES (7, 700, 70, 'Description 7', true, true, 1, 'Moon 7');
INSERT INTO public.moon VALUES (8, 800, 80, 'Description 8', false, true, 2, 'Moon 8');
INSERT INTO public.moon VALUES (9, 900, 90, 'Description 9', true, true, 3, 'Moon 9');
INSERT INTO public.moon VALUES (10, 1000, 100, 'Description 10', false, true, 1, 'Moon 10');
INSERT INTO public.moon VALUES (11, 1100, 110, 'Description 11', true, true, 2, 'Moon 11');
INSERT INTO public.moon VALUES (12, 1200, 120, 'Description 12', false, true, 3, 'Moon 12');
INSERT INTO public.moon VALUES (13, 1300, 130, 'Description 13', true, true, 1, 'Moon 13');
INSERT INTO public.moon VALUES (14, 1400, 140, 'Description 14', false, true, 2, 'Moon 14');
INSERT INTO public.moon VALUES (15, 1500, 150, 'Description 15', true, true, 3, 'Moon 15');
INSERT INTO public.moon VALUES (16, 1600, 160, 'Description 16', false, true, 1, 'Moon 16');
INSERT INTO public.moon VALUES (17, 1700, 170, 'Description 17', true, true, 2, 'Moon 17');
INSERT INTO public.moon VALUES (18, 1800, 180, 'Description 18', false, true, 3, 'Moon 18');
INSERT INTO public.moon VALUES (19, 1900, 190, 'Description 19', true, true, 1, 'Moon 19');
INSERT INTO public.moon VALUES (20, 2000, 200, 'Description 20', false, true, 2, 'Moon 20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 100, 10, 'Description 1', true, true, 1, 1, 'Planet 1');
INSERT INTO public.planet VALUES (2, 200, 20, 'Description 2', false, true, 1, 2, 'Planet 2');
INSERT INTO public.planet VALUES (3, 300, 30, 'Description 3', false, true, 1, 1, 'Planet 3');
INSERT INTO public.planet VALUES (4, 400, 40, 'Description 4', true, true, 1, 3, 'Planet 4');
INSERT INTO public.planet VALUES (5, 500, 50, 'Description 5', false, true, 1, 2, 'Planet 5');
INSERT INTO public.planet VALUES (6, 600, 60, 'Description 6', true, true, 1, 1, 'Planet 6');
INSERT INTO public.planet VALUES (7, 700, 70, 'Description 7', true, true, 1, 3, 'Planet 7');
INSERT INTO public.planet VALUES (8, 800, 80, 'Description 8', false, true, 1, 2, 'Planet 8');
INSERT INTO public.planet VALUES (9, 900, 90, 'Description 9', true, true, 1, 1, 'Planet 9');
INSERT INTO public.planet VALUES (10, 1000, 100, 'Description 10', false, true, 1, 3, 'Planet 10');
INSERT INTO public.planet VALUES (11, 1100, 110, 'Description 11', true, true, 1, 2, 'Planet 11');
INSERT INTO public.planet VALUES (12, 1200, 120, 'Description 12', false, true, 1, 1, 'Planet 12');


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Here we could found our new outpost!', 'liveable');
INSERT INTO public.planet_types VALUES (2, 'Here any living being from earth would be squashed into pancake in seconds', 'gas giant');
INSERT INTO public.planet_types VALUES (3, 'Are you sure it is a planet, looks like a cucumber', 'asteroid');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 3550, 178293, 'Does not represent anything peculiar', false, false, 6, 'S22327');
INSERT INTO public.star VALUES (3, 3250, 178090, 'Some star', false, false, 6, 'AS244');
INSERT INTO public.star VALUES (4, 8292, 178100, 'It wonders...', false, false, 6, 'Wonder');
INSERT INTO public.star VALUES (5, 5883, 178129, 'You would fall in love with it', false, false, 6, 'A thing of beauty');
INSERT INTO public.star VALUES (6, 9002, 178222, 'Red giant', false, true, 6, 'Appasionata');
INSERT INTO public.star VALUES (1, 1550, 178263, 'Amazingly cool', false, true, 6, 'A8347');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


--
-- PostgreSQL database dump complete
--

