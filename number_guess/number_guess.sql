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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: current_game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.current_game (
    guess_num integer NOT NULL
);


ALTER TABLE public.current_game OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    num_games integer NOT NULL,
    best_game integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: current_game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.current_game VALUES (23);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 24, 'user_1667410193677');
INSERT INTO public.users VALUES (5, 23, 'user_1667410193678');
INSERT INTO public.users VALUES (2, 23, 'user_1667554809822');
INSERT INTO public.users VALUES (5, 23, 'user_1667554809823');
INSERT INTO public.users VALUES (4, 24, '-1');
INSERT INTO public.users VALUES (4, 25, 'a');
INSERT INTO public.users VALUES (20, 24, '0');
INSERT INTO public.users VALUES (2, 24, 'user_1667410029214');
INSERT INTO public.users VALUES (5, 24, 'user_1667410029215');
INSERT INTO public.users VALUES (2, 24, 'user_1667410161267');
INSERT INTO public.users VALUES (5, 24, 'user_1667410161268');
INSERT INTO public.users VALUES (2, 23, 'user_1667555008007');
INSERT INTO public.users VALUES (5, 23, 'user_1667555008008');


--
-- PostgreSQL database dump complete
--

