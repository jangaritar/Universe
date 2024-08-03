--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter_km numeric NOT NULL,
    age integer NOT NULL,
    visitado boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    n_planets integer NOT NULL,
    visitado boolean,
    fotos boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter_km integer NOT NULL,
    planet_id integer NOT NULL,
    forma text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    n_moons integer,
    moons_y boolean NOT NULL,
    agua_y boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    n_moons integer,
    galaxy_id integer NOT NULL,
    visitada boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 24000, 13600, false);
INSERT INTO public.black_hole VALUES (2, 'M87*', 38000, 5300, false);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 180, 60, false);
INSERT INTO public.black_hole VALUES (4, 'GRO J1655-40', 630, 110, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 8, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 9, false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 5, false, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 7, false, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 6, false, true);
INSERT INTO public.galaxy VALUES (6, 'Magellanic', 4, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Sirius A b Luna 1', 3474, 1, 'Esférica');
INSERT INTO public.moon VALUES (2, 'Sirius A b Luna 2', 1560, 1, 'Irregular');
INSERT INTO public.moon VALUES (3, 'Sirius B c Luna 1', 2634, 2, 'Esférica');
INSERT INTO public.moon VALUES (4, 'Sirius B c Luna 2', 1450, 2, 'Irregular');
INSERT INTO public.moon VALUES (5, 'Alpha Andromedae b Luna 1', 1000, 3, 'Esférica');
INSERT INTO public.moon VALUES (6, 'Alpha Andromedae b Luna 2', 900, 3, 'Irregular');
INSERT INTO public.moon VALUES (7, 'Alpha Andromedae d Luna 1', 3200, 4, 'Esférica');
INSERT INTO public.moon VALUES (8, 'Alpha Andromedae d Luna 2', 1400, 4, 'Irregular');
INSERT INTO public.moon VALUES (9, 'Triangulum b Luna 1', 1800, 5, 'Esférica');
INSERT INTO public.moon VALUES (10, 'Triangulum b Luna 2', 1300, 5, 'Irregular');
INSERT INTO public.moon VALUES (11, 'Triangulum c Luna 1', 1100, 6, 'Esférica');
INSERT INTO public.moon VALUES (12, 'Triangulum c Luna 2', 1500, 6, 'Irregular');
INSERT INTO public.moon VALUES (13, 'Whirlpool b Luna 1', 1600, 7, 'Esférica');
INSERT INTO public.moon VALUES (14, 'Whirlpool b Luna 2', 1400, 7, 'Irregular');
INSERT INTO public.moon VALUES (15, 'Whirlpool d Luna 1', 1300, 8, 'Esférica');
INSERT INTO public.moon VALUES (16, 'Whirlpool d Luna 2', 900, 8, 'Irregular');
INSERT INTO public.moon VALUES (17, 'Sombrero b Luna 1', 1200, 9, 'Esférica');
INSERT INTO public.moon VALUES (18, 'Sombrero b Luna 2', 1100, 9, 'Irregular');
INSERT INTO public.moon VALUES (19, 'Sombrero c Luna 1', 1000, 10, 'Esférica');
INSERT INTO public.moon VALUES (20, 'Sombrero c Luna 2', 800, 10, 'Irregular');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sirius A b', 1, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Sirius B c', 2, true, false, 1);
INSERT INTO public.planet VALUES (3, 'Alpha Andromedae b', 3, true, true, 2);
INSERT INTO public.planet VALUES (4, 'Alpha Andromedae c', 0, false, false, 2);
INSERT INTO public.planet VALUES (5, 'Alpha Andromedae d', 2, true, true, 2);
INSERT INTO public.planet VALUES (6, 'Triangulum b', 1, true, false, 3);
INSERT INTO public.planet VALUES (7, 'Triangulum c', 2, true, true, 3);
INSERT INTO public.planet VALUES (8, 'Whirlpool b', 3, true, false, 4);
INSERT INTO public.planet VALUES (9, 'Whirlpool c', 1, true, true, 4);
INSERT INTO public.planet VALUES (10, 'Whirlpool d', 2, true, false, 4);
INSERT INTO public.planet VALUES (11, 'Sombrero b', 2, true, true, 5);
INSERT INTO public.planet VALUES (12, 'Sombrero c', 1, true, false, 5);
INSERT INTO public.planet VALUES (13, 'Sombrero d', 3, true, true, 5);
INSERT INTO public.planet VALUES (14, 'R136a1 b', 1, true, false, 6);
INSERT INTO public.planet VALUES (15, 'R136a1 c', 2, true, true, 6);
INSERT INTO public.planet VALUES (16, 'R136a1 d', 1, true, false, 6);
INSERT INTO public.planet VALUES (17, 'Sirius C b', 2, true, true, 1);
INSERT INTO public.planet VALUES (18, 'Sirius D b', 1, true, false, 1);
INSERT INTO public.planet VALUES (19, 'Alpha Andromedae e', 2, true, true, 2);
INSERT INTO public.planet VALUES (20, 'Triangulum d', 1, true, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 2, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 3, 2, NULL);
INSERT INTO public.star VALUES (3, 'Triangulum', 1, 3, NULL);
INSERT INTO public.star VALUES (4, 'Whirlpool', 4, 4, NULL);
INSERT INTO public.star VALUES (5, 'Sombrero', 2, 5, NULL);
INSERT INTO public.star VALUES (6, 'R136a1', 1, 6, NULL);


--
-- Name: black_hole_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_hole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

