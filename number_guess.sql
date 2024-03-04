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
    user_id integer,
    guesses integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (59, 18, 424);
INSERT INTO public.games VALUES (60, 18, 933);
INSERT INTO public.games VALUES (61, 19, 662);
INSERT INTO public.games VALUES (62, 19, 410);
INSERT INTO public.games VALUES (63, 18, 867);
INSERT INTO public.games VALUES (64, 18, 369);
INSERT INTO public.games VALUES (65, 18, 578);
INSERT INTO public.games VALUES (66, 19, 10);
INSERT INTO public.games VALUES (68, 20, 813);
INSERT INTO public.games VALUES (69, 20, 914);
INSERT INTO public.games VALUES (70, 21, 624);
INSERT INTO public.games VALUES (71, 21, 981);
INSERT INTO public.games VALUES (72, 20, 414);
INSERT INTO public.games VALUES (73, 20, 601);
INSERT INTO public.games VALUES (74, 20, 886);
INSERT INTO public.games VALUES (75, 22, 184);
INSERT INTO public.games VALUES (76, 22, 401);
INSERT INTO public.games VALUES (77, 23, 522);
INSERT INTO public.games VALUES (78, 23, 689);
INSERT INTO public.games VALUES (79, 22, 848);
INSERT INTO public.games VALUES (80, 22, 360);
INSERT INTO public.games VALUES (81, 22, 805);
INSERT INTO public.games VALUES (67, 18, 12);
INSERT INTO public.games VALUES (83, 25, 849);
INSERT INTO public.games VALUES (84, 25, 568);
INSERT INTO public.games VALUES (85, 26, 487);
INSERT INTO public.games VALUES (86, 26, 597);
INSERT INTO public.games VALUES (87, 25, 276);
INSERT INTO public.games VALUES (88, 25, 341);
INSERT INTO public.games VALUES (89, 25, 88);
INSERT INTO public.games VALUES (82, 24, 1);
INSERT INTO public.games VALUES (90, 24, 1);
INSERT INTO public.games VALUES (91, 27, 85);
INSERT INTO public.games VALUES (92, 27, 692);
INSERT INTO public.games VALUES (93, 28, 899);
INSERT INTO public.games VALUES (94, 28, 528);
INSERT INTO public.games VALUES (95, 27, 307);
INSERT INTO public.games VALUES (96, 27, 119);
INSERT INTO public.games VALUES (97, 27, 812);
INSERT INTO public.games VALUES (98, 29, 831);
INSERT INTO public.games VALUES (99, 29, 53);
INSERT INTO public.games VALUES (100, 30, 530);
INSERT INTO public.games VALUES (101, 30, 527);
INSERT INTO public.games VALUES (102, 29, 497);
INSERT INTO public.games VALUES (103, 29, 36);
INSERT INTO public.games VALUES (104, 29, 820);
INSERT INTO public.games VALUES (105, 31, 96);
INSERT INTO public.games VALUES (106, 31, 959);
INSERT INTO public.games VALUES (107, 32, 388);
INSERT INTO public.games VALUES (108, 32, 490);
INSERT INTO public.games VALUES (109, 31, 730);
INSERT INTO public.games VALUES (110, 31, 848);
INSERT INTO public.games VALUES (111, 31, 795);
INSERT INTO public.games VALUES (112, 33, 530);
INSERT INTO public.games VALUES (113, 33, 363);
INSERT INTO public.games VALUES (114, 34, 133);
INSERT INTO public.games VALUES (115, 34, 178);
INSERT INTO public.games VALUES (116, 33, 633);
INSERT INTO public.games VALUES (117, 33, 148);
INSERT INTO public.games VALUES (118, 33, 413);
INSERT INTO public.games VALUES (119, 35, 458);
INSERT INTO public.games VALUES (120, 35, 644);
INSERT INTO public.games VALUES (121, 36, 264);
INSERT INTO public.games VALUES (122, 36, 792);
INSERT INTO public.games VALUES (123, 35, 858);
INSERT INTO public.games VALUES (124, 35, 37);
INSERT INTO public.games VALUES (125, 35, 325);
INSERT INTO public.games VALUES (126, 37, 712);
INSERT INTO public.games VALUES (127, 37, 96);
INSERT INTO public.games VALUES (128, 38, 375);
INSERT INTO public.games VALUES (129, 38, 165);
INSERT INTO public.games VALUES (130, 37, 152);
INSERT INTO public.games VALUES (131, 37, 920);
INSERT INTO public.games VALUES (132, 37, 919);
INSERT INTO public.games VALUES (133, 39, 743);
INSERT INTO public.games VALUES (134, 39, 265);
INSERT INTO public.games VALUES (135, 40, 18);
INSERT INTO public.games VALUES (136, 40, 102);
INSERT INTO public.games VALUES (137, 39, 869);
INSERT INTO public.games VALUES (138, 39, 597);
INSERT INTO public.games VALUES (139, 39, 890);
INSERT INTO public.games VALUES (140, 41, 76);
INSERT INTO public.games VALUES (141, 41, 302);
INSERT INTO public.games VALUES (142, 42, 287);
INSERT INTO public.games VALUES (143, 42, 983);
INSERT INTO public.games VALUES (144, 41, 145);
INSERT INTO public.games VALUES (145, 41, 21);
INSERT INTO public.games VALUES (146, 41, 552);
INSERT INTO public.games VALUES (147, 43, 269);
INSERT INTO public.games VALUES (148, 43, 880);
INSERT INTO public.games VALUES (149, 44, 960);
INSERT INTO public.games VALUES (150, 44, 814);
INSERT INTO public.games VALUES (151, 43, 595);
INSERT INTO public.games VALUES (152, 43, 695);
INSERT INTO public.games VALUES (153, 43, 314);
INSERT INTO public.games VALUES (154, 45, 491);
INSERT INTO public.games VALUES (155, 45, 563);
INSERT INTO public.games VALUES (156, 46, 961);
INSERT INTO public.games VALUES (157, 46, 353);
INSERT INTO public.games VALUES (158, 45, 523);
INSERT INTO public.games VALUES (159, 45, 238);
INSERT INTO public.games VALUES (160, 45, 592);
INSERT INTO public.games VALUES (161, 47, 643);
INSERT INTO public.games VALUES (162, 47, 72);
INSERT INTO public.games VALUES (163, 48, 488);
INSERT INTO public.games VALUES (164, 48, 93);
INSERT INTO public.games VALUES (165, 47, 694);
INSERT INTO public.games VALUES (166, 47, 293);
INSERT INTO public.games VALUES (167, 47, 142);
INSERT INTO public.games VALUES (168, 49, 146);
INSERT INTO public.games VALUES (169, 49, 760);
INSERT INTO public.games VALUES (170, 50, 615);
INSERT INTO public.games VALUES (171, 50, 69);
INSERT INTO public.games VALUES (172, 49, 789);
INSERT INTO public.games VALUES (173, 49, 400);
INSERT INTO public.games VALUES (174, 49, 557);
INSERT INTO public.games VALUES (175, 51, 49);
INSERT INTO public.games VALUES (176, 51, 762);
INSERT INTO public.games VALUES (177, 52, 817);
INSERT INTO public.games VALUES (178, 52, 893);
INSERT INTO public.games VALUES (179, 51, 660);
INSERT INTO public.games VALUES (180, 51, 300);
INSERT INTO public.games VALUES (181, 51, 805);
INSERT INTO public.games VALUES (182, 53, 608);
INSERT INTO public.games VALUES (183, 53, 939);
INSERT INTO public.games VALUES (184, 54, 858);
INSERT INTO public.games VALUES (185, 54, 612);
INSERT INTO public.games VALUES (186, 53, 656);
INSERT INTO public.games VALUES (187, 53, 812);
INSERT INTO public.games VALUES (188, 53, 563);
INSERT INTO public.games VALUES (189, 55, 833);
INSERT INTO public.games VALUES (190, 55, 931);
INSERT INTO public.games VALUES (191, 56, 424);
INSERT INTO public.games VALUES (192, 56, 316);
INSERT INTO public.games VALUES (193, 55, 966);
INSERT INTO public.games VALUES (194, 55, 133);
INSERT INTO public.games VALUES (195, 55, 245);
INSERT INTO public.games VALUES (196, 57, 670);
INSERT INTO public.games VALUES (197, 57, 758);
INSERT INTO public.games VALUES (198, 58, 308);
INSERT INTO public.games VALUES (199, 58, 293);
INSERT INTO public.games VALUES (200, 57, 312);
INSERT INTO public.games VALUES (201, 57, 124);
INSERT INTO public.games VALUES (202, 57, 337);
INSERT INTO public.games VALUES (203, 59, 195);
INSERT INTO public.games VALUES (204, 59, 177);
INSERT INTO public.games VALUES (205, 60, 315);
INSERT INTO public.games VALUES (206, 60, 885);
INSERT INTO public.games VALUES (207, 59, 121);
INSERT INTO public.games VALUES (208, 59, 64);
INSERT INTO public.games VALUES (209, 59, 517);
INSERT INTO public.games VALUES (210, 61, 523);
INSERT INTO public.games VALUES (211, 61, 58);
INSERT INTO public.games VALUES (212, 62, 52);
INSERT INTO public.games VALUES (213, 62, 14);
INSERT INTO public.games VALUES (214, 61, 838);
INSERT INTO public.games VALUES (215, 61, 886);
INSERT INTO public.games VALUES (216, 61, 70);
INSERT INTO public.games VALUES (217, 63, 452);
INSERT INTO public.games VALUES (218, 63, 620);
INSERT INTO public.games VALUES (219, 64, 528);
INSERT INTO public.games VALUES (220, 64, 831);
INSERT INTO public.games VALUES (221, 63, 168);
INSERT INTO public.games VALUES (222, 63, 933);
INSERT INTO public.games VALUES (223, 63, 589);
INSERT INTO public.games VALUES (224, 65, 182);
INSERT INTO public.games VALUES (225, 65, 399);
INSERT INTO public.games VALUES (226, 66, 513);
INSERT INTO public.games VALUES (227, 66, 590);
INSERT INTO public.games VALUES (228, 65, 485);
INSERT INTO public.games VALUES (229, 65, 754);
INSERT INTO public.games VALUES (230, 65, 793);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (18, 'user_1709574571045');
INSERT INTO public.users VALUES (19, 'user_1709574571044');
INSERT INTO public.users VALUES (20, 'user_1709574837481');
INSERT INTO public.users VALUES (21, 'user_1709574837480');
INSERT INTO public.users VALUES (22, 'user_1709574840440');
INSERT INTO public.users VALUES (23, 'user_1709574840439');
INSERT INTO public.users VALUES (24, 'new');
INSERT INTO public.users VALUES (25, 'user_1709575312944');
INSERT INTO public.users VALUES (26, 'user_1709575312943');
INSERT INTO public.users VALUES (27, 'user_1709575851116');
INSERT INTO public.users VALUES (28, 'user_1709575851115');
INSERT INTO public.users VALUES (29, 'user_1709575864429');
INSERT INTO public.users VALUES (30, 'user_1709575864428');
INSERT INTO public.users VALUES (31, 'user_1709575877092');
INSERT INTO public.users VALUES (32, 'user_1709575877091');
INSERT INTO public.users VALUES (33, 'user_1709575948988');
INSERT INTO public.users VALUES (34, 'user_1709575948987');
INSERT INTO public.users VALUES (35, 'user_1709575996151');
INSERT INTO public.users VALUES (36, 'user_1709575996150');
INSERT INTO public.users VALUES (37, 'user_1709576018157');
INSERT INTO public.users VALUES (38, 'user_1709576018156');
INSERT INTO public.users VALUES (39, 'user_1709576483517');
INSERT INTO public.users VALUES (40, 'user_1709576483516');
INSERT INTO public.users VALUES (41, 'user_1709576515473');
INSERT INTO public.users VALUES (42, 'user_1709576515472');
INSERT INTO public.users VALUES (43, 'user_1709576535156');
INSERT INTO public.users VALUES (44, 'user_1709576535155');
INSERT INTO public.users VALUES (45, 'user_1709576554223');
INSERT INTO public.users VALUES (46, 'user_1709576554222');
INSERT INTO public.users VALUES (47, 'user_1709576761350');
INSERT INTO public.users VALUES (48, 'user_1709576761349');
INSERT INTO public.users VALUES (49, 'user_1709576797658');
INSERT INTO public.users VALUES (50, 'user_1709576797657');
INSERT INTO public.users VALUES (51, 'user_1709576807367');
INSERT INTO public.users VALUES (52, 'user_1709576807366');
INSERT INTO public.users VALUES (53, 'user_1709576810038');
INSERT INTO public.users VALUES (54, 'user_1709576810037');
INSERT INTO public.users VALUES (55, 'user_1709576842730');
INSERT INTO public.users VALUES (56, 'user_1709576842729');
INSERT INTO public.users VALUES (57, 'user_1709576907868');
INSERT INTO public.users VALUES (58, 'user_1709576907867');
INSERT INTO public.users VALUES (59, 'user_1709576941946');
INSERT INTO public.users VALUES (60, 'user_1709576941945');
INSERT INTO public.users VALUES (61, 'user_1709577098180');
INSERT INTO public.users VALUES (62, 'user_1709577098179');
INSERT INTO public.users VALUES (63, 'user_1709577127045');
INSERT INTO public.users VALUES (64, 'user_1709577127044');
INSERT INTO public.users VALUES (65, 'user_1709577166966');
INSERT INTO public.users VALUES (66, 'user_1709577166965');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 230, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 66, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_user_id_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id_foreign_key FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

