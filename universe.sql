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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planets_dwarf_planets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planets_dwarf_planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planets_dwarf_planets_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planets_dwarf_planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planets_dwarf_planets_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(20),
    distance integer,
    size_in_kpc numeric(8,2)
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
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    date_of_discovery date
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
    star_id integer,
    description text,
    satellites integer,
    has_life boolean,
    has_been_explored boolean
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
    galaxy_id integer,
    evolutionary_stage character varying(30),
    temperature integer,
    age_in_gyr numeric(8,2)
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planets_dwarf_planets_id_seq'::regclass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (3, 'Pluto', 4);
INSERT INTO public.dwarf_planet VALUES (4, 'Ceres', 4);
INSERT INTO public.dwarf_planet VALUES (5, 'Eris', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxytest', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Sb/Sbc/SB(rs)bc', 8, 580.00);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'SA(s)b', 752, 46.56);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'SB(s)m', 50, 9.86);
INSERT INTO public.galaxy VALUES (5, 'Small MAgellanic Cloud', 'SB(sm) pec', 62, 5.78);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 'SA(s)cd', 970, 18.39);
INSERT INTO public.galaxy VALUES (7, 'Sagittarius Dwarf Spheroidal', 'dSph(t)', 20, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moontest', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 3, 'Phobos (/ˈfoʊbɒs/; systematic designation: Mars I) is the innermost and larger of the two natural satellites of Mars', '1877-08-18');
INSERT INTO public.moon VALUES (3, 'Luna', 2, 'The Moon is Earths only natural satellite. Together with Earth it forms the Earth-Moon satellite system.', NULL);
INSERT INTO public.moon VALUES (4, 'Deimos', 3, 'Deimos is the smaller and outermost of the two natural satellites of Mars', '1877-08-12');
INSERT INTO public.moon VALUES (37, 'Callisto', 9, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'Europa', 9, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'Io', 9, NULL, NULL);
INSERT INTO public.moon VALUES (40, 'Ganymede', 9, NULL, NULL);
INSERT INTO public.moon VALUES (41, 'Enceladus', 10, NULL, NULL);
INSERT INTO public.moon VALUES (42, 'Hyperion', 10, NULL, NULL);
INSERT INTO public.moon VALUES (43, 'Titan', 10, NULL, NULL);
INSERT INTO public.moon VALUES (44, 'Triton', 6, NULL, NULL);
INSERT INTO public.moon VALUES (45, 'Amalthea', 9, NULL, NULL);
INSERT INTO public.moon VALUES (46, 'Dione', 10, NULL, NULL);
INSERT INTO public.moon VALUES (47, 'Iapetus', 10, NULL, NULL);
INSERT INTO public.moon VALUES (48, 'Mimas', 10, NULL, NULL);
INSERT INTO public.moon VALUES (49, 'Phoebe', 10, NULL, NULL);
INSERT INTO public.moon VALUES (50, 'Rhea', 10, NULL, NULL);
INSERT INTO public.moon VALUES (51, 'Tethys', 10, NULL, NULL);
INSERT INTO public.moon VALUES (52, 'Oberon', 11, NULL, NULL);
INSERT INTO public.moon VALUES (53, 'Ariel', 11, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planettest', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', 4, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water.', 1, true, true);
INSERT INTO public.planet VALUES (3, 'Mars', 4, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In the English language, Mars is named for the Roman god of war.', 2, false, true);
INSERT INTO public.planet VALUES (4, 'Proxima Centauri b', 5, 'Proxima Centauri b (or Proxima b), sometimes referred to as Alpha Centauri Cb, is an exoplanet orbiting in the habitable zone of the red dwarf star Proxima Centauri', NULL, false, false);
INSERT INTO public.planet VALUES (5, 'Proxima Centauri d', 5, 'Proxima Centauri d (also called Proxima d) is a candidate exoplanet orbiting the red dwarf star Proxima Centauri, the closest star to the Sun and part of the Alpha Centauri triple star system', NULL, false, false);
INSERT INTO public.planet VALUES (6, 'Neptune', 4, 'Neptune is the eighth planet from the Sun and the farthest known solar planet. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet.', 14, false, true);
INSERT INTO public.planet VALUES (7, 'Mercury', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Venus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Jupiter', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Saturn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Uranus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Beta Pictoris b', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Startest', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Sun', 2, 'yellow dwarf', 5772, 4.60);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 2, 'red dwarf', 3042, 4.85);
INSERT INTO public.star VALUES (6, 'Mirach', 3, 'asymptotic giant branch', 3842, NULL);
INSERT INTO public.star VALUES (7, 'Alpheratz', 3, NULL, 8500, 0.06);
INSERT INTO public.star VALUES (8, 'S Doradus', 4, 'luminous blue variable', 8500, NULL);
INSERT INTO public.star VALUES (9, 'HD 5980 B', 5, NULL, 45000, 0.03);


--
-- Name: dwarf_planets_dwarf_planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planets_dwarf_planets_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 53, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 9, true);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planets_pkey PRIMARY KEY (dwarf_planet_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: dwarf_planet dwarf_planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

