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
    name character varying(32) NOT NULL,
    location numeric(2,0),
    description character varying(64),
    size integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(32) NOT NULL,
    galaxy_id integer NOT NULL,
    location numeric(2,0),
    size integer,
    description integer
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
    name character varying(32) NOT NULL,
    moon_id integer NOT NULL,
    moon_type integer,
    location numeric(2,0),
    description integer,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(32) NOT NULL,
    planet_id integer NOT NULL,
    planet_size numeric,
    dying boolean,
    location numeric(2,0),
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(32) NOT NULL,
    star_id integer NOT NULL,
    star_type integer,
    dying boolean,
    color text,
    location numeric(2,0),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'black_hole_1', 1, NULL, NULL);
INSERT INTO public.black_hole VALUES (2, 'black_hole_2', 2, NULL, NULL);
INSERT INTO public.black_hole VALUES (3, 'black_hole_3', 3, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Mars', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Bueno', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Snicker', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Twix', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Bros', 6, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('P', 7, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('O', 8, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('I', 9, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('U', 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Y', 11, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('T', 12, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('L', 13, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('K', 14, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('J', 15, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('M', 16, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('N', 17, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('B', 18, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('G', 19, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('V', 20, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Era', 1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Luna', 2, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Hero', 3, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Thor', 4, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Meta', 5, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Halo', 6, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Maxi', 7, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Kanka', 8, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('Pool', 9, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Pierdole', 10, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('KimpiePaarntie', 11, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('Xi', 12, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('Omega', 13, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES ('Hayden', 14, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES ('Afro', 15, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES ('Midi', 16, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES ('Cluster', 17, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES ('Britt', 18, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES ('Macro', 19, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES ('Micro', 20, NULL, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Nucuria', 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Illegantu', 2, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Xullore', 3, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('Rogao', 4, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('Eter', 5, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Outune', 6, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('Dovugantu', 7, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('Dipinope', 8, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('Mizar', 9, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES ('Alcore', 10, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES ('Alula', 11, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES ('Phat', 12, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES ('P', 13, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES ('O', 14, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES ('I', 15, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES ('U', 16, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES ('Y', 17, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES ('T', 18, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES ('R', 19, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES ('E', 20, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Arthemis', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Arketis', 2, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Alaska', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('Amethist', 4, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('Autist', 5, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('Hexa', 6, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('P', 7, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES ('O', 8, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES ('I', 9, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES ('U', 10, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES ('Y', 11, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES ('T', 12, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES ('L', 13, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES ('K', 14, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES ('J', 15, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES ('H', 16, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES ('G', 17, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES ('M', 18, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES ('N', 19, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES ('B', 20, NULL, NULL, NULL, NULL, 20);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 4, true);


--
-- Name: black_hole black_hole_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_location_key UNIQUE (location);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_location_key UNIQUE (location);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_location_key UNIQUE (location);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_location_key UNIQUE (location);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_location_key UNIQUE (location);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

