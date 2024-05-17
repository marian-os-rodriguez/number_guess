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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    username character varying(30) NOT NULL,
    number_guess integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'marian31', 3);
INSERT INTO public.games VALUES (2, 'marian31', 7);
INSERT INTO public.games VALUES (3, 'marian31', 6);
INSERT INTO public.games VALUES (4, 'marian31', 7);
INSERT INTO public.games VALUES (5, 'marian31', 9);
INSERT INTO public.games VALUES (6, 'marian31', 1);
INSERT INTO public.games VALUES (7, 'user_1715944758865', 545);
INSERT INTO public.games VALUES (8, 'user_1715944758865', 777);
INSERT INTO public.games VALUES (9, 'user_1715944758864', 618);
INSERT INTO public.games VALUES (10, 'user_1715944758864', 356);
INSERT INTO public.games VALUES (11, 'user_1715944758865', 834);
INSERT INTO public.games VALUES (12, 'user_1715944758865', 375);
INSERT INTO public.games VALUES (13, 'user_1715944758865', 959);
INSERT INTO public.games VALUES (14, 'marian3145', 4);
INSERT INTO public.games VALUES (15, 'marian31', 4);
INSERT INTO public.games VALUES (16, 'user_1715944935854', 322);
INSERT INTO public.games VALUES (17, 'user_1715944935854', 132);
INSERT INTO public.games VALUES (18, 'user_1715944935853', 390);
INSERT INTO public.games VALUES (19, 'user_1715944935853', 223);
INSERT INTO public.games VALUES (20, 'user_1715944935854', 764);
INSERT INTO public.games VALUES (21, 'user_1715944935854', 313);
INSERT INTO public.games VALUES (22, 'user_1715944935854', 238);
INSERT INTO public.games VALUES (23, 'user_1715945170723', 48);
INSERT INTO public.games VALUES (24, 'user_1715945170723', 296);
INSERT INTO public.games VALUES (25, 'user_1715945170722', 982);
INSERT INTO public.games VALUES (26, 'user_1715945170722', 578);
INSERT INTO public.games VALUES (27, 'user_1715945170723', 625);
INSERT INTO public.games VALUES (28, 'user_1715945170723', 328);
INSERT INTO public.games VALUES (29, 'user_1715945170723', 860);
INSERT INTO public.games VALUES (30, 'user_1715945228353', 642);
INSERT INTO public.games VALUES (31, 'user_1715945228353', 397);
INSERT INTO public.games VALUES (32, 'user_1715945228352', 946);
INSERT INTO public.games VALUES (33, 'user_1715945228352', 556);
INSERT INTO public.games VALUES (34, 'user_1715945228353', 509);
INSERT INTO public.games VALUES (35, 'user_1715945228353', 130);
INSERT INTO public.games VALUES (36, 'user_1715945228353', 390);
INSERT INTO public.games VALUES (37, 'user_1715945292528', 325);
INSERT INTO public.games VALUES (38, 'user_1715945292528', 261);
INSERT INTO public.games VALUES (39, 'user_1715945292527', 81);
INSERT INTO public.games VALUES (40, 'user_1715945292527', 393);
INSERT INTO public.games VALUES (41, 'user_1715945292528', 535);
INSERT INTO public.games VALUES (42, 'user_1715945292528', 183);
INSERT INTO public.games VALUES (43, 'user_1715945292528', 661);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

