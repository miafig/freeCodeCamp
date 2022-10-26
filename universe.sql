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
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    galaxy_types character varying(30),
    distance_from_earth integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(30) NOT NULL,
    description text,
    galaxy_types_id integer NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    is_spherical boolean,
    description text,
    distance_to_planet integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types character varying(30),
    description text,
    distance integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, false, 'barred spiral', 3, 'Andromeda is the daughter of the kings of Ethiopia.');
INSERT INTO public.galaxy VALUES ('Antennae', 2, true, 'spiral', 111, 'A dual galaxy.');
INSERT INTO public.galaxy VALUES ('Black Eye', 3, false, 'spiral', 17, 'Looks like an eye with a dark stripe underneath.');
INSERT INTO public.galaxy VALUES ('Cartwheel', 4, false, 'lenticular ring', 500, 'Looks like cartwheel.');
INSERT INTO public.galaxy VALUES ('Centaurus A', 5, false, 'lenticular/elliptical', 10, 'Located in Centaurus constellation.');
INSERT INTO public.galaxy VALUES ('Cirinus', 6, false, 'Seyfert', 13, 'Latin for compass');


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('spiral', 'Flat, rotating disk.', 1);
INSERT INTO public.galaxy_types VALUES ('barred spiral', 'Spiral galaxy with central bar-shaped structure composed of stars.', 2);
INSERT INTO public.galaxy_types VALUES ('lenticular', 'Large-scale disk with no spiral arms.', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, true, NULL, 384400, NULL);
INSERT INTO public.moon VALUES ('Phobos', 2, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('DEIMOS', 3, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('IO', 4, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Elara', 6, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Himalis', 7, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Amalthea', 8, false, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 9, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 10, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Carme', 11, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ananke', 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Leda', 13, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Theba', 14, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Dia', 15, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Megaclite', 16, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ersa', 17, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Carpo', 18, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Euporie', 19, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Kale', 20, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Mercury', 2, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Herculis', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Draconis', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Cancri', 11, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Virginis', 12, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpheratz', 1, 60, 96, 'Brightest star in Andromeda', 1);
INSERT INTO public.star VALUES ('Mirach', 2, NULL, 197, 'Red giant', 1);
INSERT INTO public.star VALUES ('Almach', 3, NULL, 350, 'Third brightest', 1);
INSERT INTO public.star VALUES ('Sadiradra', 4, NULL, 105, 'Visible to naked eye.', 2);
INSERT INTO public.star VALUES ('Nembus', 5, 1.7, 177, '5th brightest', 2);
INSERT INTO public.star VALUES ('Titawin', 6, 3, 44, 'Binary star', 2);


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
-- Name: galaxy_types galaxy_types_galaxy_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_type_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_in_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_in_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_in_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_in_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_in_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

