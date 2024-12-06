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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(30) NOT NULL,
    year integer NOT NULL
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
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams_games (
    number integer NOT NULL,
    teams_id integer NOT NULL,
    games_id integer NOT NULL
);


ALTER TABLE public.teams_games OWNER TO freecodecamp;

--
-- Name: teams_games_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_games_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_games_number_seq OWNER TO freecodecamp;

--
-- Name: teams_games_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_games_number_seq OWNED BY public.teams_games.number;


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
-- Name: teams_games number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams_games ALTER COLUMN number SET DEFAULT nextval('public.teams_games_number_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 2, 4, 2, 'Final', 2018);
INSERT INTO public.games VALUES (2, 3, 4, 2, 0, 'Third Place', 2018);
INSERT INTO public.games VALUES (3, 2, 4, 2, 1, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (4, 1, 3, 1, 0, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (5, 2, 5, 3, 2, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (6, 4, 6, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (7, 3, 7, 2, 1, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (8, 1, 8, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (9, 4, 9, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (10, 6, 10, 1, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (11, 3, 11, 3, 2, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (12, 7, 12, 2, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (13, 2, 13, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (14, 5, 14, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (15, 8, 15, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (16, 1, 16, 4, 3, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (17, 17, 16, 1, 0, 'Final', 2014);
INSERT INTO public.games VALUES (18, 18, 7, 3, 0, 'Third Place', 2014);
INSERT INTO public.games VALUES (19, 16, 18, 1, 0, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (20, 17, 7, 7, 1, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (21, 18, 19, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (22, 16, 3, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (23, 7, 9, 2, 1, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (24, 17, 1, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (25, 7, 20, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (26, 9, 8, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (27, 1, 21, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (28, 17, 22, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (29, 18, 12, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (30, 19, 23, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (31, 16, 10, 1, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (32, 3, 24, 2, 1, 'Eighth-Final', 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (5, 'Russia');
INSERT INTO public.teams VALUES (6, 'Sweden');
INSERT INTO public.teams VALUES (7, 'Brazil');
INSERT INTO public.teams VALUES (8, 'Uruguay');
INSERT INTO public.teams VALUES (9, 'Colombia');
INSERT INTO public.teams VALUES (10, 'Switzerland');
INSERT INTO public.teams VALUES (11, 'Japan');
INSERT INTO public.teams VALUES (12, 'Mexico');
INSERT INTO public.teams VALUES (13, 'Denmark');
INSERT INTO public.teams VALUES (14, 'Spain');
INSERT INTO public.teams VALUES (15, 'Portugal');
INSERT INTO public.teams VALUES (16, 'Argentina');
INSERT INTO public.teams VALUES (17, 'Germany');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Costa Rica');
INSERT INTO public.teams VALUES (20, 'Chile');
INSERT INTO public.teams VALUES (21, 'Nigeria');
INSERT INTO public.teams VALUES (22, 'Algeria');
INSERT INTO public.teams VALUES (23, 'Greece');
INSERT INTO public.teams VALUES (24, 'United States');


--
-- Data for Name: teams_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams_games VALUES (1, 1, 1);
INSERT INTO public.teams_games VALUES (2, 2, 1);
INSERT INTO public.teams_games VALUES (3, 3, 2);
INSERT INTO public.teams_games VALUES (4, 4, 2);
INSERT INTO public.teams_games VALUES (5, 2, 3);
INSERT INTO public.teams_games VALUES (6, 4, 3);
INSERT INTO public.teams_games VALUES (7, 1, 4);
INSERT INTO public.teams_games VALUES (8, 3, 4);
INSERT INTO public.teams_games VALUES (9, 2, 5);
INSERT INTO public.teams_games VALUES (10, 5, 5);
INSERT INTO public.teams_games VALUES (11, 4, 6);
INSERT INTO public.teams_games VALUES (12, 6, 6);
INSERT INTO public.teams_games VALUES (13, 3, 7);
INSERT INTO public.teams_games VALUES (14, 7, 7);
INSERT INTO public.teams_games VALUES (15, 1, 8);
INSERT INTO public.teams_games VALUES (16, 8, 8);
INSERT INTO public.teams_games VALUES (17, 4, 9);
INSERT INTO public.teams_games VALUES (18, 9, 9);
INSERT INTO public.teams_games VALUES (19, 6, 10);
INSERT INTO public.teams_games VALUES (20, 10, 10);
INSERT INTO public.teams_games VALUES (21, 3, 11);
INSERT INTO public.teams_games VALUES (22, 11, 11);
INSERT INTO public.teams_games VALUES (23, 7, 12);
INSERT INTO public.teams_games VALUES (24, 12, 12);
INSERT INTO public.teams_games VALUES (25, 2, 13);
INSERT INTO public.teams_games VALUES (26, 13, 13);
INSERT INTO public.teams_games VALUES (27, 5, 14);
INSERT INTO public.teams_games VALUES (28, 14, 14);
INSERT INTO public.teams_games VALUES (29, 8, 15);
INSERT INTO public.teams_games VALUES (30, 15, 15);
INSERT INTO public.teams_games VALUES (31, 1, 16);
INSERT INTO public.teams_games VALUES (32, 16, 16);
INSERT INTO public.teams_games VALUES (33, 17, 17);
INSERT INTO public.teams_games VALUES (34, 16, 17);
INSERT INTO public.teams_games VALUES (35, 18, 18);
INSERT INTO public.teams_games VALUES (36, 7, 18);
INSERT INTO public.teams_games VALUES (37, 16, 19);
INSERT INTO public.teams_games VALUES (38, 18, 19);
INSERT INTO public.teams_games VALUES (39, 17, 20);
INSERT INTO public.teams_games VALUES (40, 7, 20);
INSERT INTO public.teams_games VALUES (41, 18, 21);
INSERT INTO public.teams_games VALUES (42, 19, 21);
INSERT INTO public.teams_games VALUES (43, 16, 22);
INSERT INTO public.teams_games VALUES (44, 3, 22);
INSERT INTO public.teams_games VALUES (45, 7, 23);
INSERT INTO public.teams_games VALUES (46, 9, 23);
INSERT INTO public.teams_games VALUES (47, 17, 24);
INSERT INTO public.teams_games VALUES (48, 1, 24);
INSERT INTO public.teams_games VALUES (49, 7, 25);
INSERT INTO public.teams_games VALUES (50, 20, 25);
INSERT INTO public.teams_games VALUES (51, 9, 26);
INSERT INTO public.teams_games VALUES (52, 8, 26);
INSERT INTO public.teams_games VALUES (53, 1, 27);
INSERT INTO public.teams_games VALUES (54, 21, 27);
INSERT INTO public.teams_games VALUES (55, 17, 28);
INSERT INTO public.teams_games VALUES (56, 22, 28);
INSERT INTO public.teams_games VALUES (57, 18, 29);
INSERT INTO public.teams_games VALUES (58, 12, 29);
INSERT INTO public.teams_games VALUES (59, 19, 30);
INSERT INTO public.teams_games VALUES (60, 23, 30);
INSERT INTO public.teams_games VALUES (61, 16, 31);
INSERT INTO public.teams_games VALUES (62, 10, 31);
INSERT INTO public.teams_games VALUES (63, 3, 32);
INSERT INTO public.teams_games VALUES (64, 24, 32);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_games_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_games_number_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams_games teams_games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams_games
    ADD CONSTRAINT teams_games_pkey PRIMARY KEY (number);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: teams_games teams_games_games_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams_games
    ADD CONSTRAINT teams_games_games_id_fkey FOREIGN KEY (games_id) REFERENCES public.games(game_id);


--
-- Name: teams_games teams_games_teams_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams_games
    ADD CONSTRAINT teams_games_teams_id_fkey FOREIGN KEY (teams_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

