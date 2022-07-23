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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (60, 2018, 'Final', 780, 782, 4, 2);
INSERT INTO public.games VALUES (61, 2018, 'Third Place', 781, 784, 2, 0);
INSERT INTO public.games VALUES (62, 2018, 'Semi-Final', 782, 784, 2, 1);
INSERT INTO public.games VALUES (63, 2018, 'Semi-Final', 780, 781, 1, 0);
INSERT INTO public.games VALUES (64, 2018, 'Quarter-Final', 782, 783, 3, 2);
INSERT INTO public.games VALUES (65, 2018, 'Quarter-Final', 784, 788, 2, 0);
INSERT INTO public.games VALUES (66, 2018, 'Quarter-Final', 781, 785, 2, 1);
INSERT INTO public.games VALUES (67, 2018, 'Quarter-Final', 780, 786, 2, 0);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 784, 787, 2, 1);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 788, 802, 1, 0);
INSERT INTO public.games VALUES (70, 2018, 'Eighth-Final', 781, 789, 3, 2);
INSERT INTO public.games VALUES (71, 2018, 'Eighth-Final', 785, 790, 2, 0);
INSERT INTO public.games VALUES (72, 2018, 'Eighth-Final', 782, 791, 2, 1);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 783, 792, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 786, 793, 2, 1);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 780, 794, 4, 3);
INSERT INTO public.games VALUES (76, 2014, 'Final', 795, 794, 1, 0);
INSERT INTO public.games VALUES (77, 2014, 'Third Place', 796, 785, 3, 0);
INSERT INTO public.games VALUES (78, 2014, 'Semi-Final', 794, 796, 1, 0);
INSERT INTO public.games VALUES (79, 2014, 'Semi-Final', 795, 785, 7, 1);
INSERT INTO public.games VALUES (80, 2014, 'Quarter-Final', 796, 797, 1, 0);
INSERT INTO public.games VALUES (81, 2014, 'Quarter-Final', 794, 781, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Quarter-Final', 785, 787, 2, 1);
INSERT INTO public.games VALUES (83, 2014, 'Quarter-Final', 795, 780, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 785, 798, 2, 1);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 787, 786, 2, 0);
INSERT INTO public.games VALUES (86, 2014, 'Eighth-Final', 780, 799, 2, 0);
INSERT INTO public.games VALUES (87, 2014, 'Eighth-Final', 795, 800, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Eighth-Final', 796, 790, 2, 1);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 797, 801, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 794, 802, 1, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 781, 803, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (780, 'France');
INSERT INTO public.teams VALUES (781, 'Belgium');
INSERT INTO public.teams VALUES (782, 'Croatia');
INSERT INTO public.teams VALUES (783, 'Russia');
INSERT INTO public.teams VALUES (784, 'England');
INSERT INTO public.teams VALUES (785, 'Brazil');
INSERT INTO public.teams VALUES (786, 'Uruguay');
INSERT INTO public.teams VALUES (787, 'Colombia');
INSERT INTO public.teams VALUES (788, 'Sweden');
INSERT INTO public.teams VALUES (789, 'Japan');
INSERT INTO public.teams VALUES (790, 'Mexico');
INSERT INTO public.teams VALUES (791, 'Denmark');
INSERT INTO public.teams VALUES (792, 'Spain');
INSERT INTO public.teams VALUES (793, 'Portugal');
INSERT INTO public.teams VALUES (794, 'Argentina');
INSERT INTO public.teams VALUES (795, 'Germany');
INSERT INTO public.teams VALUES (796, 'Netherlands');
INSERT INTO public.teams VALUES (797, 'Costa Rica');
INSERT INTO public.teams VALUES (798, 'Chile');
INSERT INTO public.teams VALUES (799, 'Nigeria');
INSERT INTO public.teams VALUES (800, 'Algeria');
INSERT INTO public.teams VALUES (801, 'Greece');
INSERT INTO public.teams VALUES (802, 'Switzerland');
INSERT INTO public.teams VALUES (803, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 91, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 803, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games constraint_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT constraint_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id) ON DELETE CASCADE;


--
-- Name: games constraint_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT constraint_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

