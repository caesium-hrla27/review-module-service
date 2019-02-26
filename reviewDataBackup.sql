--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: products; Type: TABLE; Schema: public; Owner: kooma
--

CREATE TABLE public.products (
    id character varying(255) NOT NULL,
    product_name character varying(255),
    more_info text,
    product_img character varying(255),
    price character varying(255),
    sales boolean,
    sales_price character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: kooma
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    size real,
    comfort real,
    durability real,
    rate integer,
    username character varying(255),
    location text,
    upvote integer,
    downvote integer,
    comment text,
    title text,
    response text,
    pre_launch boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "productId" character varying(255)
);


--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: kooma
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kooma
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: kooma
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: kooma
--

COPY public.products (id, product_name, more_info, product_img, price, sales, sales_price, "createdAt", "updatedAt") FROM stdin;
M1	Air Jordan 1 Retro High OG	see if there are more products like Air Jordan 1	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-jordan-1-retro-high-og-shoe-WR35rK.jpg	160	t	105.97	2019-02-08 20:35:50.564-08	2019-02-08 20:35:50.564-08
M2	Nike Air VaporMax	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-vapormax-2019-shoe-wr4C0z.jpg	190	f	0	2019-02-26 00:37:54.026-08	2019-02-26 00:37:54.026-08
M4	Air Jordan Legacy 312	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-jordan-legacy-312-mens-shoe-WsJcP7.jpg	150	f	0	2019-02-26 00:37:54.035-08	2019-02-26 00:37:54.035-08
M3	Air Jordan 1 Mid	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-jordan-1-mid-mens-shoe-1zMCFJ.jpg	110	f	0	2019-02-26 00:37:54.035-08	2019-02-26 00:37:54.035-08
M9	Nike Air Max 270 Bowfin	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-max-270-bowfin-mens-shoe-wScJCx.jpg	160	f	0	2019-02-26 00:37:54.036-08	2019-02-26 00:37:54.036-08
W1	Nike Air Zoom Pegasus 35	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-zoom-pegasus-35-womens-running-shoe-k960G1.jpg	120	f	0	2019-02-26 00:37:54.042-08	2019-02-26 00:37:54.042-08
M8	Air Jordan 9 Retro	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-jordan-9-retro-mens-shoe-s4pgC0.jpg	190	f	0	2019-02-26 00:37:54.042-08	2019-02-26 00:37:54.042-08
M5	Nike Air VaporMax Utility	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-vapormax-utility-mens-shoe-l6QV6Q.jpg	190	f	0	2019-02-26 00:37:54.042-08	2019-02-26 00:37:54.042-08
M10	Nike VaporMax Gliese	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/vapormax-gliese-mens-shoe-JRgxlW.jpg	190	f	0	2019-02-26 00:37:54.042-08	2019-02-26 00:37:54.042-08
M7	Nike Air VaporMax Plus	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-vapormax-plus-mens-shoe-w4xgr4.jpg	190	f	0	2019-02-26 00:37:54.042-08	2019-02-26 00:37:54.042-08
M6	Nike Air Max Plus Premium	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-max-plus-premium-mens-shoe-43ctl5.jpg	179	f	0	2019-02-26 00:37:54.051-08	2019-02-26 00:37:54.051-08
W4	Nike Zoom Pegasus Turbo	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/zoom-pegasus-turbo-womens-running-shoe-7DrhsB.jpg	180	f	0	2019-02-26 00:37:54.051-08	2019-02-26 00:37:54.051-08
W5	Nike Flex RN 2018	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/flex-rn-2018-womens-running-shoe-wzMNdD.jpg	67.97	f	0	2019-02-26 00:37:54.051-08	2019-02-26 00:37:54.051-08
W2	Nike Epic React Flyknit 2	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/epic-react-flyknit-2-womens-running-shoe-5r9NpJ.jpg	150	f	0	2019-02-26 00:37:54.051-08	2019-02-26 00:37:54.051-08
W3	Nike Free RN 2018	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/free-rn-2018-womens-running-shoe-zE8Je3.jpg	100	f	0	2019-02-26 00:37:54.051-08	2019-02-26 00:37:54.051-08
W8	Nike Air Zoom Pegasus 35 Premium	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-zoom-pegasus-35-premium-womens-running-shoe-8MAy2z.jpg	135	f	0	2019-02-26 00:37:54.058-08	2019-02-26 00:37:54.058-08
W9	Nike Renew Rival Premium Floral	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/renew-rival-premium-floral-womens-running-shoe-wvjh75.jpg	58.97	f	0	2019-02-26 00:37:54.058-08	2019-02-26 00:37:54.058-08
W6	Nike Zoom Fly SP Fast	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/zoom-fly-sp-fast-womens-running-shoe-t1nDct.jpg	170	f	0	2019-02-26 00:37:54.058-08	2019-02-26 00:37:54.058-08
W10	Nike Epic React Flyknit Metallic Premium	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/epic-react-flyknit-metallic-premium-womens-running-shoe-cvMcDT.jpg	99.97	f	0	2019-02-26 00:37:54.058-08	2019-02-26 00:37:54.058-08
W7	Nike Air Huarache City	None	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-huarache-city-womens-shoe-1qTbM1PK.jpg	140	f	0	2019-02-26 00:37:54.058-08	2019-02-26 00:37:54.058-08
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: kooma
--

COPY public.reviews (id, size, comfort, durability, rate, username, location, upvote, downvote, comment, title, response, pre_launch, "createdAt", "updatedAt", "productId") FROM stdin;
1	1	1	1	5	mikekoo	Los Angeles, CA, US	2	0	This shoe is great and comfy	Legendary Jordan	true	f	2019-02-08 20:35:50.588-08	2019-02-08 20:35:50.588-08	M1
2	1	1	1	4	brb	San Francisco, CA, US	3	0	Fits great, looks good. Only if it were black...	Loving the shoe	Cool	f	2019-02-08 20:51:05.502-08	2019-02-08 20:51:05.502-08	M1
3	1	1	1	5	Yike	Seoul, S. Korea	5	0	Brings me my memory of old days of Jordan… yea that’s total B* because I’m Korean	As the legend goes…	Cool	f	2019-02-08 20:52:44.863-08	2019-02-08 20:52:44.863-08	M1
4	1	1	1	3	grumpyCat	Los Angeles, CA, US	10	3	Meow… meooooow.. grumpymeowwww..	Meoow	Cool	f	2019-02-08 20:53:49.5-08	2019-02-08 20:53:49.5-08	M1
5	0.5	0	0.5	1	5c74fae999fa11	Busan, Korea	3	14	I grasp touched. This shoe is grateful. This shoe is wasted. I got touched. This shoe is great and comfy that I  touched. Those were miraculous. This shoe is great and comfy that I  black color. This is green color. This shoe is horrible that I  grateful. 	I am dreaded.	I got more.	f	2019-02-26 00:38:02.608-08	2019-02-26 00:38:02.608-08	M4
6	0.5	0	0.5	0	5c74fae92c9163	Boston, MA, USA	25	4	I wish green color. This is delighted. This pair was happy. This shoe is horrible that I  meticulous. Those were grateful. 	Those were wasted.	I grasp green color.	f	2019-02-26 00:38:02.608-08	2019-02-26 00:38:02.608-08	W8
7	0	0.5	0.5	1	5c74fae962a9a2	Seoul, Korea	74	0	It looks black color. Those were great and comfy. I am great and comfy. 	This pair was good.	I need good.	f	2019-02-26 00:38:02.633-08	2019-02-26 00:38:02.633-08	W6
9	0.5	0.5	1	4	5c74fae98a6903	Los Angeles, CA, USA	46	15	This shoe is great and comfy that I  green color. I need red color. This is great and comfy. 	I grasp great and comfy.	I wanted red color.	f	2019-02-26 00:38:02.641-08	2019-02-26 00:38:02.641-08	W7
8	0.5	0	0	2	5c74fae9221e47	Los Angeles, CA, USA	89	5		Those were happy.	This pair was disappointed.	f	2019-02-26 00:38:02.641-08	2019-02-26 00:38:02.641-08	M7
10	0.5	0.5	0.5	4	5c74fae9a02b48	Taipei, Taiwan	52	8		I wanted touched.	I have more.	f	2019-02-26 00:38:02.641-08	2019-02-26 00:38:02.641-08	W5
11	1	0	0.5	4	5c74fae955f4ac	Rome, Italy	90	7	I grasp red color. I got black color. It looks good. It looks delighted. I feel miraculous. This shoe is white color. I got delighted. I have green color. I got white color. 	I grasp great and comfy.	This was good.	f	2019-02-26 00:38:02.641-08	2019-02-26 00:38:02.641-08	M5
12	0	0	0.5	2	5c74fae9688ff2	Mexico City, Mexico	84	9	I am meticulous. I need white color. I have meow This pair was good. This is dreaded. This is white color. I have dreaded. 	I have disappointed.	This is black color.	f	2019-02-26 00:38:02.641-08	2019-02-26 00:38:02.641-08	M1
13	0	0	0.5	1	5c74fae9ace52b	Paris, France	29	1	I got great and comfy. I feel good. I have miraculous. I wish red color. This shoe is great and comfy that I  disappointed. This is great and comfy. 	This shoe is touched.	This was touched.	f	2019-02-26 00:38:02.65-08	2019-02-26 00:38:02.65-08	M5
14	0	0	1	1	5c74fae9d54b4e	Princeton, NJ, USA	13	17	This has black color. I feel black color. Those were meow Those were meticulous. This shoe is great and comfy that I  happy. I need wasted. I wanted meow Those were delighted. I wanted meow 	This is more.	This pair was red color.	f	2019-02-26 00:38:02.65-08	2019-02-26 00:38:02.65-08	W8
15	0.5	0	0	2	5c74fae9b8a3ab	Taipei, Taiwan	79	26	This is more. I got meow This has grateful. I need red color. This has great and comfy. I wanted dreaded. 	This was miraculous.	This shoe is black color.	f	2019-02-26 00:38:02.65-08	2019-02-26 00:38:02.65-08	M8
16	0.5	1	1	2	5c74fae9adff7a	Busan, Korea	11	27	Those were meticulous. This was red color. I grasp disappointed. 	This is more.	I need miraculous.	f	2019-02-26 00:38:02.65-08	2019-02-26 00:38:02.65-08	M6
17	0.5	0.5	0	1	5c74fae99d5ced	San Francisco, CA, USA	5	27	I grasp white color. 	I got touched.	Those were white color.	f	2019-02-26 00:38:02.657-08	2019-02-26 00:38:02.657-08	M6
18	0	0	0.5	0	5c74fae973a51b	Princeton, NJ, USA	82	10	I grasp grateful. 	I have happy.	I got great and comfy.	f	2019-02-26 00:38:02.658-08	2019-02-26 00:38:02.658-08	M9
19	1	1	0.5	2	5c74fae9105956	Tokyo, Japan	90	28	I grasp green color. This shoe is miraculous. This was touched. I need red color. This shoe is great and comfy that I  more. I got more. This shoe is great and comfy that I  meticulous. I wish delighted. 	I grasp delighted.	I feel green color.	f	2019-02-26 00:38:02.658-08	2019-02-26 00:38:02.658-08	M4
20	0.5	1	0	1	5c74fae93a37c7	Tokyo, Japan	75	12	Those were miraculous. I grasp meow 	This pair was white color.	I have disappointed.	f	2019-02-26 00:38:02.658-08	2019-02-26 00:38:02.658-08	M2
21	0	1	0	0	5c74fae9df1947	Princeton, NJ, USA	67	2	I got red color. Those were grateful. I grasp white color. I wanted black color. This shoe is horrible that I  disappointed. I grasp touched. This shoe is great and comfy that I  wasted. I grasp miraculous. 	This has more.	I wanted meow	f	2019-02-26 00:38:02.658-08	2019-02-26 00:38:02.658-08	W10
22	1	1	1	1	5c74fae9bcd32c	San Francisco, CA, USA	76	21	This shoe is miraculous. I am grateful. This was more. It looks red color. 	I wanted meticulous.	I grasp meticulous.	f	2019-02-26 00:38:02.666-08	2019-02-26 00:38:02.666-08	M10
23	0	1	0.5	2	5c74fae98d1f51	Rome, Italy	84	16	I am grateful. This was happy. This shoe is horrible that I  dreaded. This has grateful. Those were delighted. I am miraculous. I wish delighted. This shoe is horrible that I  more. 	I wanted great and comfy.	I am white color.	f	2019-02-26 00:38:02.666-08	2019-02-26 00:38:02.666-08	M5
24	0	1	0	4	5c74fae94fd581	Princeton, NJ, USA	32	16	I have dreaded. I wanted more. Those were black color. I have great and comfy. I wanted delighted. 	It looks white color.	This pair was good.	f	2019-02-26 00:38:02.666-08	2019-02-26 00:38:02.666-08	M7
25	0.5	0.5	0.5	4	5c74fae9e309f1	Busan, Korea	73	29	I got black color. I feel miraculous. 	This shoe is happy.	This is grateful.	f	2019-02-26 00:38:02.666-08	2019-02-26 00:38:02.666-08	M5
26	0	1	0	2	5c74fae9694958	Paris, France	22	8	Those were more. 	This is touched.	Those were green color.	f	2019-02-26 00:38:02.673-08	2019-02-26 00:38:02.673-08	W2
27	0	0.5	0.5	1	5c74fae92670e8	Taipei, Taiwan	42	2	I need more. 	This was touched.	I got touched.	f	2019-02-26 00:38:02.666-08	2019-02-26 00:38:02.666-08	M7
28	0	0.5	0.5	1	5c74fae90bb503	Beijing, China	59	15	I wanted red color. I feel delighted. This shoe is great and comfy that I  delighted. 	This is green color.	I grasp disappointed.	f	2019-02-26 00:38:02.673-08	2019-02-26 00:38:02.673-08	M9
29	0.5	0	0.5	4	5c74fae90d95bf	New York, NY, USA	25	5	Those were meticulous. 	I wanted more.	I have great and comfy.	f	2019-02-26 00:38:02.673-08	2019-02-26 00:38:02.673-08	W10
30	1	1	0.5	4	5c74fae939e539	Boston, MA, USA	62	16	I wish meticulous. I wish delighted. This shoe is great and comfy that I  white color. 	I wish good.	I wish good.	f	2019-02-26 00:38:02.673-08	2019-02-26 00:38:02.673-08	W5
31	0	1	0.5	1	5c74fae9c12dbd	Taipei, Taiwan	41	16		I am touched.	I have disappointed.	f	2019-02-26 00:38:02.673-08	2019-02-26 00:38:02.673-08	W8
32	1	0	1	2	5c74fae91abc80	Paris, France	48	5	It looks miraculous. I got meticulous. I wish delighted. This is meow This was red color. I grasp miraculous. Those were grateful. 	It looks dreaded.	I wanted wasted.	f	2019-02-26 00:38:02.681-08	2019-02-26 00:38:02.681-08	M3
33	0	0	1	0	5c74fae9cf4981	New York, NY, USA	2	12	It looks happy. This shoe is delighted. I need meow This pair was disappointed. This shoe is horrible that I  grateful. This pair was great and comfy. 	I have meow	This shoe is more.	f	2019-02-26 00:38:02.682-08	2019-02-26 00:38:02.682-08	M6
37	0	1	1	3	5c74fae9e21d98	Tokyo, Japan	65	7		I wish wasted.	I need miraculous.	f	2019-02-26 00:38:02.686-08	2019-02-26 00:38:02.686-08	W8
34	0.5	1	0.5	1	5c74fae98a2c29	Denver, CO, USA	81	21	I need delighted. This has good. I need white color. Those were happy. 	This is dreaded.	It looks red color.	f	2019-02-26 00:38:02.682-08	2019-02-26 00:38:02.682-08	M9
39	1	1	1	4	5c74fae9c862b3	Beijing, China	53	23	This has disappointed. This shoe is disappointed. I need miraculous. This shoe is dreaded. 	I got happy.	I need happy.	f	2019-02-26 00:38:02.687-08	2019-02-26 00:38:02.687-08	M9
41	1	1	1	2	5c74fae9cc7375	Taipei, Taiwan	19	3	This shoe is white color. I have black color. It looks green color. This pair was grateful. This has white color. I wanted happy. I am miraculous. This shoe is great and comfy that I  miraculous. 	This shoe is great and comfy that I  touched.	I wish disappointed.	f	2019-02-26 00:38:02.687-08	2019-02-26 00:38:02.687-08	M1
44	0	0	1	0	5c74fae988f452	Princeton, NJ, USA	19	7	This pair was miraculous. This pair was touched. I have red color. This shoe is horrible that I  grateful. This was happy. I need meow 	I feel white color.	I wish dreaded.	f	2019-02-26 00:38:02.698-08	2019-02-26 00:38:02.698-08	W4
49	0.5	0	1	2	5c74fae96b2138	Los Angeles, CA, USA	1	4	It looks more. This has good. I wanted happy. This is green color. This shoe is great and comfy that I  wasted. I have meow This shoe is horrible that I  white color. This shoe is meticulous. I grasp more. 	I wish delighted.	I need happy.	f	2019-02-26 00:38:02.704-08	2019-02-26 00:38:02.704-08	W2
54	0.5	0	1	4	5c74fae9a832ea	San Francisco, CA, USA	1	19	It looks great and comfy. This is white color. This pair was disappointed. This pair was meow This shoe is great and comfy that I  wasted. 	I got dreaded.	I wanted great and comfy.	f	2019-02-26 00:38:02.715-08	2019-02-26 00:38:02.715-08	M4
57	1	1	1	2	5c74fae988f614	New York, NY, USA	30	7	I feel black color. This shoe is horrible that I  touched. 	This shoe is great and comfy that I  miraculous.	I feel delighted.	f	2019-02-26 00:38:02.719-08	2019-02-26 00:38:02.719-08	W6
60	0	0.5	1	0	5c74fae9ac1241	Paris, France	25	10	I got more. I wanted more. 	This has red color.	This is great and comfy.	f	2019-02-26 00:38:02.72-08	2019-02-26 00:38:02.72-08	W10
64	1	0.5	0.5	3	5c74fae9e81243	Los Angeles, CA, USA	45	21		This pair was good.	I wanted touched.	f	2019-02-26 00:38:02.724-08	2019-02-26 00:38:02.724-08	W10
69	0.5	0.5	0	0	5c74fae91e9865	Boston, MA, USA	85	15	This shoe is great and comfy that I  great and comfy. I need meow I got disappointed. 	I need meow	This shoe is great and comfy that I  black color.	f	2019-02-26 00:38:02.732-08	2019-02-26 00:38:02.732-08	W7
75	0.5	0	1	1	5c74fae9bdbeac	Paris, France	23	4	This pair was miraculous. It looks touched. This was wasted. I grasp good. I need wasted. This is happy. 	I feel grateful.	I wish meticulous.	f	2019-02-26 00:38:02.737-08	2019-02-26 00:38:02.737-08	M8
80	0.5	0	1	1	5c74fae9e45286	San Francisco, CA, USA	47	4	This shoe is delighted. This was great and comfy. I wish delighted. I need green color. This was touched. I wish delighted. I need good. I wish wasted. 	It looks meow	I am dreaded.	f	2019-02-26 00:38:02.749-08	2019-02-26 00:38:02.749-08	M5
87	0.5	0.5	1	0	5c74fae9b63c8e	Los Angeles, CA, USA	13	10	Those were red color. I got green color. I need meticulous. This shoe is green color. I grasp red color. This pair was delighted. 	This was black color.	This shoe is horrible that I  green color.	f	2019-02-26 00:38:02.764-08	2019-02-26 00:38:02.764-08	W7
92	0.5	0.5	1	1	5c74fae95c3a90	Boston, MA, USA	82	17	This shoe is meticulous. I feel touched. I wish miraculous. I feel meow It looks white color. I wish green color. 	This was meticulous.	This shoe is great and comfy that I  delighted.	f	2019-02-26 00:38:02.769-08	2019-02-26 00:38:02.769-08	W1
96	0	0.5	1	4	5c74fae98b14f0	San Francisco, CA, USA	37	16	I wanted miraculous. Those were meow This shoe is happy. This shoe is horrible that I  great and comfy. Those were touched. This has wasted. This shoe is horrible that I  dreaded. Those were red color. This has grateful. 	This shoe is horrible that I  green color.	This pair was grateful.	f	2019-02-26 00:38:02.769-08	2019-02-26 00:38:02.769-08	M4
101	1	1	1	2	5c74fae96a77d6	Seoul, Korea	46	26	I feel great and comfy. This has disappointed. This shoe is horrible that I  white color. 	I wish delighted.	This pair was red color.	f	2019-02-26 00:38:02.774-08	2019-02-26 00:38:02.774-08	W1
106	0.5	0.5	0.5	1	5c74fae9f04550	New York, NY, USA	59	13	This has black color. This shoe is green color. I need white color. This is wasted. 	This is disappointed.	I feel happy.	f	2019-02-26 00:38:02.783-08	2019-02-26 00:38:02.783-08	M2
111	1	1	0.5	2	5c74fae924b226	Boston, MA, USA	5	29	This shoe is horrible that I  more. I grasp miraculous. 	It looks meow	It looks more.	f	2019-02-26 00:38:02.789-08	2019-02-26 00:38:02.789-08	W10
118	0	0	0.5	2	5c74fae99ee93e	Princeton, NJ, USA	61	20	I wish dreaded. This shoe is great and comfy that I  happy. This shoe is miraculous. This shoe is horrible that I  touched. This pair was touched. Those were grateful. I need happy. This was delighted. This shoe is great and comfy that I  white color. 	I am wasted.	This shoe is horrible that I  meticulous.	f	2019-02-26 00:38:02.803-08	2019-02-26 00:38:02.803-08	M8
123	1	0	0.5	1	5c74fae952eda1	Princeton, NJ, USA	34	6	Those were delighted. I have great and comfy. I feel meow This has wasted. I wish meticulous. I wish more. Those were delighted. This was happy. I got red color. 	This is dreaded.	This was more.	f	2019-02-26 00:38:02.815-08	2019-02-26 00:38:02.815-08	W5
126	0	0.5	1	3	5c74fae9c2077d	Tokyo, Japan	21	7	I wish green color. Those were delighted. This was meticulous. 	I wanted disappointed.	I got miraculous.	f	2019-02-26 00:38:02.815-08	2019-02-26 00:38:02.815-08	M3
131	0	1	1	2	5c74fae9d12e33	San Francisco, CA, USA	77	27	This is happy. 	This is more.	This pair was delighted.	f	2019-02-26 00:38:02.82-08	2019-02-26 00:38:02.82-08	W7
136	0.5	0.5	0.5	4	5c74fae97830db	Rome, Italy	54	15	This is grateful. 	This shoe is horrible that I  dreaded.	I grasp wasted.	f	2019-02-26 00:38:02.824-08	2019-02-26 00:38:02.824-08	W5
141	0	1	1	3	5c74fae9949872	Tokyo, Japan	33	7	This has meow 	I feel delighted.	I need more.	f	2019-02-26 00:38:02.831-08	2019-02-26 00:38:02.831-08	M2
146	0	1	0	4	5c74fae927dcf6	Beijing, China	99	29	This shoe is horrible that I  meow I feel grateful. This pair was meow I wish grateful. I got red color. It looks touched. I am more. 	I wish wasted.	This shoe is great and comfy that I  meticulous.	f	2019-02-26 00:38:02.837-08	2019-02-26 00:38:02.837-08	W7
152	0.5	1	1	0	5c74fae9c5344d	Denver, CO, USA	27	6	I wish disappointed. 	I wanted touched.	I wish good.	f	2019-02-26 00:38:02.853-08	2019-02-26 00:38:02.853-08	W5
158	0	0.5	0.5	4	5c74fae9baea0c	Rome, Italy	41	13	This was happy. 	This was good.	This shoe is meow	f	2019-02-26 00:38:02.857-08	2019-02-26 00:38:02.857-08	M9
164	0.5	0	1	4	5c74fae9417b18	Taipei, Taiwan	82	10	This is miraculous. This was meow I wanted miraculous. I got meow I am meow I wanted disappointed. It looks grateful. 	This was green color.	This shoe is horrible that I  meow	f	2019-02-26 00:38:02.865-08	2019-02-26 00:38:02.865-08	M7
169	0.5	1	0.5	3	5c74fae9a0cd64	Taipei, Taiwan	73	20	This pair was great and comfy. This is white color. This was good. This was dreaded. It looks red color. I need wasted. This shoe is great and comfy that I  miraculous. This shoe is horrible that I  great and comfy. This is meticulous. 	This pair was white color.	This is grateful.	f	2019-02-26 00:38:02.869-08	2019-02-26 00:38:02.869-08	M7
174	1	0.5	1	1	5c74fae9fe6392	Paris, France	18	29	I need great and comfy. This pair was more. I wish green color. 	I got red color.	This has delighted.	f	2019-02-26 00:38:02.873-08	2019-02-26 00:38:02.873-08	M5
36	1	0	1	0	5c74fae9703c76	Tokyo, Japan	39	3	I wanted touched. Those were dreaded. This has miraculous. 	This shoe is great and comfy.	I wanted good.	f	2019-02-26 00:38:02.682-08	2019-02-26 00:38:02.682-08	M9
42	0	0.5	0	2	5c74fae9cd126c	Beijing, China	83	0		I feel white color.	This shoe is miraculous.	f	2019-02-26 00:38:02.698-08	2019-02-26 00:38:02.698-08	W3
47	1	0.5	0	4	5c74fae9868997	Rome, Italy	21	24	This shoe is meow This shoe is horrible that I  miraculous. This shoe is disappointed. This shoe is touched. I got meticulous. I wanted meow I wish good. I grasp more. I got great and comfy. 	I feel green color.	I am miraculous.	f	2019-02-26 00:38:02.704-08	2019-02-26 00:38:02.704-08	M2
52	0	0	0	3	5c74fae98bc66c	Denver, CO, USA	77	19	I wanted wasted. I got white color. This was touched. This was good. 	I feel green color.	This has dreaded.	f	2019-02-26 00:38:02.715-08	2019-02-26 00:38:02.715-08	M1
58	1	0	1	4	5c74fae9c69988	Busan, Korea	10	6	I wish more. I am more. This shoe is horrible that I  great and comfy. This shoe is more. This was delighted. This shoe is great and comfy that I  touched. 	I wish more.	This shoe is horrible that I  red color.	f	2019-02-26 00:38:02.72-08	2019-02-26 00:38:02.72-08	W9
61	0.5	0.5	0	4	5c74fae9b1a280	Denver, CO, USA	68	19	I got meow This was disappointed. I wish red color. I wish more. It looks dreaded. It looks meticulous. 	I feel black color.	This has green color.	f	2019-02-26 00:38:02.72-08	2019-02-26 00:38:02.72-08	W2
66	0	0	0.5	3	5c74fae94fbb87	Tokyo, Japan	25	20	This has great and comfy. I wanted good. This shoe is great and comfy that I  happy. I wish happy. This shoe is great and comfy that I  great and comfy. I wanted black color. This shoe is great and comfy that I  disappointed. This was good. 	I have miraculous.	I got black color.	f	2019-02-26 00:38:02.724-08	2019-02-26 00:38:02.724-08	M9
71	0	1	0.5	0	5c74fae9362255	Beijing, China	9	21	I am disappointed. This has delighted. Those were touched. I feel more. This has delighted. Those were more. 	Those were more.	This was great and comfy.	f	2019-02-26 00:38:02.732-08	2019-02-26 00:38:02.732-08	W1
74	1	0	0	1	5c74fae926ed5f	Los Angeles, CA, USA	7	0	I need red color. 	I have happy.	I feel meow	f	2019-02-26 00:38:02.737-08	2019-02-26 00:38:02.737-08	M3
79	0.5	0.5	0	4	5c74fae9cb1e14	Busan, Korea	45	3	This was more. This shoe is great and comfy that I  touched. This has meow I wanted delighted. It looks miraculous. 	I got touched.	I am dreaded.	f	2019-02-26 00:38:02.748-08	2019-02-26 00:38:02.748-08	M5
86	0.5	1	0.5	4	5c74fae979410a	Busan, Korea	54	16	This pair was red color. I grasp black color. This shoe is touched. This was white color. I am happy. This is green color. I have happy. This shoe is horrible that I  black color. This is grateful. 	I am miraculous.	This is more.	f	2019-02-26 00:38:02.753-08	2019-02-26 00:38:02.753-08	M8
91	0.5	1	0.5	2	5c74fae96a0f21	Tokyo, Japan	58	25	This was delighted. I have red color. I have more. This is disappointed. It looks good. I need white color. I am green color. I have meticulous. I got touched. 	This shoe is black color.	I wanted wasted.	f	2019-02-26 00:38:02.764-08	2019-02-26 00:38:02.764-08	M1
95	0.5	0	1	2	5c74fae963c33b	Paris, France	1	3	I need great and comfy. This was wasted. I am white color. I need meticulous. This shoe is great and comfy that I  miraculous. I have red color. I have grateful. 	I have wasted.	I got red color.	f	2019-02-26 00:38:02.769-08	2019-02-26 00:38:02.769-08	M1
100	0.5	0.5	1	0	5c74fae9e0c967	Taipei, Taiwan	64	12	I am red color. I wanted meticulous. I have happy. 	I wish meticulous.	This has miraculous.	f	2019-02-26 00:38:02.774-08	2019-02-26 00:38:02.774-08	M1
105	0	0.5	0	3	5c74fae92a609d	Boston, MA, USA	77	24	I wanted miraculous. This pair was happy. Those were wasted. This shoe is great and comfy that I  meticulous. This shoe is great and comfy that I  meow This shoe is great and comfy that I  great and comfy. 	This is green color.	This is wasted.	f	2019-02-26 00:38:02.783-08	2019-02-26 00:38:02.783-08	M3
110	1	1	0.5	3	5c74fae9cac04d	San Francisco, CA, USA	21	23	This was black color. I have red color. This is delighted. I grasp happy. This pair was happy. This shoe is horrible that I  miraculous. I need delighted. 	I grasp dreaded.	I grasp black color.	f	2019-02-26 00:38:02.789-08	2019-02-26 00:38:02.789-08	M3
117	0	0.5	1	4	5c74fae99ef990	New York, NY, USA	47	16	This shoe is great and comfy that I  black color. I feel red color. This has black color. This shoe is great and comfy that I  red color. This shoe is great and comfy that I  more. This has meow Those were wasted. It looks miraculous. 	This has green color.	This shoe is horrible that I  happy.	f	2019-02-26 00:38:02.803-08	2019-02-26 00:38:02.803-08	W9
121	0	1	1	4	5c74fae9ead959	Boston, MA, USA	23	24	I am green color. I wish black color. 	It looks disappointed.	This pair was great and comfy.	f	2019-02-26 00:38:02.803-08	2019-02-26 00:38:02.803-08	M1
124	0.5	1	0.5	3	5c74fae9f0a9ff	Princeton, NJ, USA	42	21	This shoe is grateful. I have great and comfy. 	This is more.	This shoe is horrible that I  meticulous.	f	2019-02-26 00:38:02.815-08	2019-02-26 00:38:02.815-08	W2
130	0.5	1	0	4	5c74fae95f0a63	Seoul, Korea	14	2	I got dreaded. This has green color. This shoe is good. I have wasted. I have disappointed. I need meticulous. 	I am great and comfy.	This pair was green color.	f	2019-02-26 00:38:02.82-08	2019-02-26 00:38:02.82-08	W7
135	0.5	0.5	0.5	2	5c74fae915a6dd	Tokyo, Japan	13	9	This shoe is horrible that I  miraculous. This shoe is touched. I got dreaded. This shoe is touched. It looks miraculous. 	I feel miraculous.	I have wasted.	f	2019-02-26 00:38:02.824-08	2019-02-26 00:38:02.824-08	M1
140	0.5	0	0	0	5c74fae9ac0b45	Seoul, Korea	53	4		I am miraculous.	I got delighted.	f	2019-02-26 00:38:02.831-08	2019-02-26 00:38:02.831-08	M6
145	0	0	0	3	5c74fae9390ee8	Boston, MA, USA	24	21	This is green color. I have white color. I feel miraculous. This shoe is great and comfy that I  grateful. This is red color. I need good. 	I am miraculous.	It looks grateful.	f	2019-02-26 00:38:02.837-08	2019-02-26 00:38:02.837-08	W1
151	1	1	1	0	5c74fae96dc5c4	Tokyo, Japan	92	13	This pair was wasted. This pair was delighted. 	This pair was wasted.	This shoe is great and comfy that I  meow	f	2019-02-26 00:38:02.848-08	2019-02-26 00:38:02.848-08	W4
159	0.5	0	0.5	2	5c74fae948ba93	Denver, CO, USA	69	9	This shoe is horrible that I  wasted. I wish dreaded. 	It looks white color.	It looks dreaded.	f	2019-02-26 00:38:02.857-08	2019-02-26 00:38:02.857-08	M10
165	0	0.5	1	0	5c74fae97b64d6	Paris, France	52	19	This pair was meticulous. This shoe is horrible that I  disappointed. I need delighted. This was miraculous. This pair was dreaded. I need great and comfy. I am grateful. I got disappointed. I feel miraculous. 	This shoe is great and comfy that I  meticulous.	I need red color.	f	2019-02-26 00:38:02.865-08	2019-02-26 00:38:02.865-08	M10
170	0	0	0.5	1	5c74fae9b72db4	Denver, CO, USA	55	16	This pair was delighted. I feel touched. 	Those were white color.	I am more.	f	2019-02-26 00:38:02.869-08	2019-02-26 00:38:02.869-08	M3
175	0	1	1	0	5c74fae9587f4b	Tokyo, Japan	91	13	I need disappointed. This shoe is wasted. This has miraculous. It looks touched. 	I am white color.	I am delighted.	f	2019-02-26 00:38:02.873-08	2019-02-26 00:38:02.873-08	M8
180	0	0.5	0.5	4	5c74fae968f23d	Los Angeles, CA, USA	92	8		I got white color.	This shoe is good.	f	2019-02-26 00:38:02.881-08	2019-02-26 00:38:02.881-08	M8
185	1	0	1	2	5c74fae9e64427	Seoul, Korea	69	13	I got more. This was good. This shoe is black color. I got red color. It looks miraculous. This shoe is great and comfy that I  red color. This shoe is horrible that I  delighted. 	This pair was meow	This shoe is delighted.	f	2019-02-26 00:38:02.884-08	2019-02-26 00:38:02.884-08	M1
40	1	0	1	4	5c74fae9a2f59a	Mexico City, Mexico	43	20	I need happy. I wanted white color. This shoe is great and comfy. This is happy. I grasp black color. I am dreaded. I am grateful. 	I have good.	I grasp meow	f	2019-02-26 00:38:02.687-08	2019-02-26 00:38:02.687-08	M7
35	1	1	0	4	5c74fae9adc78e	Taipei, Taiwan	66	22	This shoe is more. I have happy. I have white color. I grasp delighted. This shoe is disappointed. 	I got more.	I got delighted.	f	2019-02-26 00:38:02.682-08	2019-02-26 00:38:02.682-08	W1
43	1	0.5	1	3	5c74fae9f6662d	Boston, MA, USA	21	22	I grasp more. This was good. This is dreaded. Those were happy. This was meow This is grateful. I feel delighted. This has grateful. I wish green color. 	Those were dreaded.	This shoe is great and comfy that I  touched.	f	2019-02-26 00:38:02.698-08	2019-02-26 00:38:02.698-08	W3
46	0	0	1	2	5c74fae9ca5ba4	Taipei, Taiwan	44	0	This shoe is horrible that I  miraculous. 	I feel meticulous.	I have good.	f	2019-02-26 00:38:02.698-08	2019-02-26 00:38:02.698-08	W1
48	1	0	0.5	1	5c74fae985d023	Los Angeles, CA, USA	32	22	This shoe is horrible that I  meow This is more. I wish red color. This shoe is dreaded. I need meticulous. I am miraculous. This has red color. I am touched. 	This shoe is great and comfy that I  miraculous.	I wanted meow	f	2019-02-26 00:38:02.704-08	2019-02-26 00:38:02.704-08	M1
51	0.5	1	1	0	5c74fae9d4c432	Princeton, NJ, USA	16	19	This shoe is great and comfy that I  touched. I got red color. This has grateful. I am happy. This shoe is horrible that I  disappointed. This shoe is horrible that I  black color. 	I got black color.	It looks miraculous.	f	2019-02-26 00:38:02.705-08	2019-02-26 00:38:02.705-08	W5
53	0	1	0	3	5c74fae95dd101	New York, NY, USA	99	8	I got happy. 	I need more.	This shoe is horrible that I  green color.	f	2019-02-26 00:38:02.715-08	2019-02-26 00:38:02.715-08	M1
56	0	0.5	0	3	5c74fae9d09488	San Francisco, CA, USA	9	17	I wish great and comfy. 	I need more.	This has wasted.	f	2019-02-26 00:38:02.715-08	2019-02-26 00:38:02.715-08	M3
59	0.5	0.5	0	2	5c74fae9859810	New York, NY, USA	85	5	This has good. I grasp miraculous. I have green color. I got red color. This was white color. I grasp meticulous. 	I need miraculous.	This is wasted.	f	2019-02-26 00:38:02.72-08	2019-02-26 00:38:02.72-08	W10
63	1	0.5	0.5	4	5c74fae91a8b86	Taipei, Taiwan	4	3	I have great and comfy. This was more. I need good. 	This shoe is black color.	This shoe is meticulous.	f	2019-02-26 00:38:02.724-08	2019-02-26 00:38:02.724-08	M10
65	0.5	0.5	1	2	5c74fae9b710db	Paris, France	79	16	I wanted miraculous. I wish meow I feel wasted. This has black color. I got grateful. This has wasted. This shoe is horrible that I  black color. It looks delighted. I feel white color. 	I am great and comfy.	Those were black color.	f	2019-02-26 00:38:02.724-08	2019-02-26 00:38:02.724-08	M4
68	1	1	1	2	5c74fae94ef374	Busan, Korea	72	4	This is dreaded. I grasp meow 	I am grateful.	I grasp red color.	f	2019-02-26 00:38:02.732-08	2019-02-26 00:38:02.732-08	W3
70	0	0.5	0.5	4	5c74fae967e7a7	Paris, France	65	26	This shoe is horrible that I  disappointed. I wish delighted. I feel great and comfy. 	This was meticulous.	This was green color.	f	2019-02-26 00:38:02.732-08	2019-02-26 00:38:02.732-08	M5
73	1	0	0.5	2	5c74fae958f466	Los Angeles, CA, USA	13	20	I grasp red color. This shoe is great and comfy that I  delighted. It looks delighted. This shoe is horrible that I  meticulous. I wish more. 	I got more.	Those were great and comfy.	f	2019-02-26 00:38:02.736-08	2019-02-26 00:38:02.736-08	M2
76	1	0	0	3	5c74fae94f7984	Seoul, Korea	23	16	I feel red color. I grasp black color. This pair was delighted. This is white color. This pair was delighted. I feel miraculous. I feel happy. 	I wish black color.	I feel green color.	f	2019-02-26 00:38:02.737-08	2019-02-26 00:38:02.737-08	W10
78	0	0	0	3	5c74fae9ce20f4	Denver, CO, USA	47	25	I have black color. I wanted grateful. This has grateful. This shoe is miraculous. This pair was good. It looks dreaded. This shoe is great and comfy that I  grateful. I wish wasted. It looks wasted. 	This has good.	This shoe is great and comfy that I  dreaded.	f	2019-02-26 00:38:02.748-08	2019-02-26 00:38:02.748-08	M6
81	1	0	0.5	1	5c74fae90d67e7	Seoul, Korea	64	15	This pair was red color. This is happy. I feel more. It looks more. I grasp disappointed. This shoe is horrible that I  meow 	I have meow	I wanted miraculous.	f	2019-02-26 00:38:02.749-08	2019-02-26 00:38:02.749-08	W10
83	0.5	0	0	0	5c74fae953b1ba	Boston, MA, USA	62	22	This was white color. 	I wish good.	This was green color.	f	2019-02-26 00:38:02.753-08	2019-02-26 00:38:02.753-08	W1
85	0.5	0.5	0	2	5c74fae9e00266	Boston, MA, USA	1	7	I am happy. 	I need happy.	This has wasted.	f	2019-02-26 00:38:02.753-08	2019-02-26 00:38:02.753-08	M6
88	0	0.5	1	0	5c74fae906e305	Mexico City, Mexico	42	25	I have dreaded. I am green color. This shoe is horrible that I  meow I have wasted. I have meow 	Those were grateful.	I grasp meow	f	2019-02-26 00:38:02.764-08	2019-02-26 00:38:02.764-08	M9
90	0.5	1	0.5	2	5c74fae99913cf	Boston, MA, USA	2	2	I am more. I wish wasted. 	This has great and comfy.	I wish white color.	f	2019-02-26 00:38:02.764-08	2019-02-26 00:38:02.764-08	W1
94	0.5	0.5	0.5	0	5c74fae9f84bb4	Los Angeles, CA, USA	22	8	I have black color. 	I need delighted.	This is meticulous.	f	2019-02-26 00:38:02.769-08	2019-02-26 00:38:02.769-08	M9
97	1	0	1	1	5c74fae9f942f6	Seoul, Korea	34	6		This pair was wasted.	I need happy.	f	2019-02-26 00:38:02.774-08	2019-02-26 00:38:02.774-08	M7
99	0.5	0.5	0	0	5c74fae94bb563	Beijing, China	96	23	This is disappointed. I wanted miraculous. I have meticulous. This is black color. I got disappointed. 	I need miraculous.	This has black color.	f	2019-02-26 00:38:02.774-08	2019-02-26 00:38:02.774-08	W7
102	0.5	0.5	0.5	2	5c74fae9ca7e9f	San Francisco, CA, USA	30	6	This shoe is black color. This was good. This was black color. This shoe is great and comfy that I  great and comfy. 	This shoe is meticulous.	Those were miraculous.	f	2019-02-26 00:38:02.782-08	2019-02-26 00:38:02.782-08	M9
104	0	0.5	0.5	1	5c74fae9d68c35	Denver, CO, USA	85	12	I need red color. This shoe is black color. This shoe is dreaded. I got dreaded. 	This shoe is dreaded.	This has wasted.	f	2019-02-26 00:38:02.783-08	2019-02-26 00:38:02.783-08	W9
107	0.5	1	0	1	5c74fae9b54078	Princeton, NJ, USA	28	15	This pair was white color. This shoe is horrible that I  white color. This shoe is wasted. I need more. 	This shoe is great and comfy that I  meow	I have black color.	f	2019-02-26 00:38:02.788-08	2019-02-26 00:38:02.788-08	W3
109	0.5	1	0	4	5c74fae9fccb1a	Busan, Korea	49	11	It looks great and comfy. I wish black color. This was delighted. This shoe is horrible that I  disappointed. Those were great and comfy. 	This is touched.	I feel white color.	f	2019-02-26 00:38:02.788-08	2019-02-26 00:38:02.788-08	M4
113	1	0	1	1	5c74fae9e43b88	Rome, Italy	15	26		I wish more.	This shoe is great and comfy that I  miraculous.	f	2019-02-26 00:38:02.797-08	2019-02-26 00:38:02.797-08	M9
115	1	0.5	0.5	3	5c74fae92bb9e1	Beijing, China	72	2	I wish meticulous. This is green color. This was white color. 	I feel great and comfy.	Those were white color.	f	2019-02-26 00:38:02.797-08	2019-02-26 00:38:02.797-08	W6
116	1	0	0	2	5c74fae924ff82	Rome, Italy	51	1	I am great and comfy. Those were green color. I need good. I am meticulous. I need miraculous. I wanted black color. I am disappointed. This is black color. It looks meow 	This has miraculous.	This shoe is great and comfy that I  grateful.	f	2019-02-26 00:38:02.797-08	2019-02-26 00:38:02.797-08	W2
120	1	0.5	0	0	5c74fae93edcc3	Los Angeles, CA, USA	23	8	This shoe is wasted. 	I feel more.	I need touched.	f	2019-02-26 00:38:02.803-08	2019-02-26 00:38:02.803-08	W5
122	1	0.5	0	0	5c74fae974e7a5	Mexico City, Mexico	15	28	Those were grateful. This shoe is horrible that I  grateful. Those were happy. It looks red color. I wanted white color. I wish dreaded. This shoe is great and comfy that I  black color. This was black color. It looks green color. 	This shoe is horrible that I  black color.	I wish touched.	f	2019-02-26 00:38:02.815-08	2019-02-26 00:38:02.815-08	W8
125	1	1	0	0	5c74fae9910e65	Denver, CO, USA	60	7	I need meticulous. I wanted red color. Those were miraculous. This pair was disappointed. This shoe is great and comfy that I  delighted. I have grateful. I got wasted. 	This pair was red color.	This shoe is great and comfy that I  more.	f	2019-02-26 00:38:02.815-08	2019-02-26 00:38:02.815-08	M1
129	1	0.5	0.5	0	5c74fae91d1ce8	Rome, Italy	72	10	It looks white color. This was dreaded. 	I wish green color.	This is happy.	f	2019-02-26 00:38:02.82-08	2019-02-26 00:38:02.82-08	M7
134	0.5	0.5	1	0	5c74fae9a2d3a8	New York, NY, USA	86	11	I need delighted. I am red color. I grasp meow I need grateful. This shoe is great and comfy that I  dreaded. 	This has great and comfy.	It looks meticulous.	f	2019-02-26 00:38:02.824-08	2019-02-26 00:38:02.824-08	M2
139	1	0	0	3	5c74fae9664253	Denver, CO, USA	89	17	I feel white color. I grasp more. I grasp more. I wish red color. I need black color. This was good. 	I feel great and comfy.	This has red color.	f	2019-02-26 00:38:02.831-08	2019-02-26 00:38:02.831-08	W5
144	0	0.5	0.5	2	5c74fae9b52112	Princeton, NJ, USA	48	24	I wanted delighted. This has meow This shoe is horrible that I  miraculous. This pair was good. This has meticulous. 	This was white color.	I got green color.	f	2019-02-26 00:38:02.837-08	2019-02-26 00:38:02.837-08	M7
147	1	1	1	1	5c74fae9c9f79d	New York, NY, USA	37	23	It looks white color. It looks happy. This pair was miraculous. 	It looks touched.	This is grateful.	f	2019-02-26 00:38:02.848-08	2019-02-26 00:38:02.848-08	W8
150	1	0	0	0	5c74fae969677f	Rome, Italy	78	3		This is red color.	I wanted wasted.	f	2019-02-26 00:38:02.848-08	2019-02-26 00:38:02.848-08	W4
157	0.5	1	0	2	5c74fae9a0eeaf	Denver, CO, USA	15	21	Those were wasted. It looks grateful. I need great and comfy. I wish miraculous. This shoe is horrible that I  green color. I wish delighted. I have delighted. I need meticulous. I need black color. 	I feel more.	This has dreaded.	f	2019-02-26 00:38:02.857-08	2019-02-26 00:38:02.857-08	M8
163	0.5	0.5	0	2	5c74fae9564bf6	Seoul, Korea	50	11	I got wasted. I wanted more. This shoe is great and comfy that I  delighted. This has black color. 	It looks dreaded.	I am disappointed.	f	2019-02-26 00:38:02.865-08	2019-02-26 00:38:02.865-08	W2
168	0	0	0.5	1	5c74fae98d8e48	Princeton, NJ, USA	92	18	This pair was green color. Those were black color. 	It looks disappointed.	This has miraculous.	f	2019-02-26 00:38:02.869-08	2019-02-26 00:38:02.869-08	W1
173	1	1	1	3	5c74fae975572e	Beijing, China	35	29	This shoe is horrible that I  disappointed. I need good. This is happy. I feel white color. I got grateful. This was good. I feel wasted. 	I wanted delighted.	This shoe is horrible that I  green color.	f	2019-02-26 00:38:02.873-08	2019-02-26 00:38:02.873-08	M9
178	0	0	1	2	5c74fae9e56f10	Seoul, Korea	34	11	I got black color. Those were red color. 	I grasp disappointed.	This shoe is great and comfy that I  green color.	f	2019-02-26 00:38:02.881-08	2019-02-26 00:38:02.881-08	M10
182	1	0.5	0	1	5c74fae93691e3	Beijing, China	77	15	I have great and comfy. This pair was wasted. This shoe is great and comfy that I  great and comfy. This is delighted. This shoe is disappointed. I grasp meow 	This shoe is horrible that I  good.	I am meticulous.	f	2019-02-26 00:38:02.881-08	2019-02-26 00:38:02.881-08	M6
186	1	0	0.5	1	5c74fae931221d	Mexico City, Mexico	27	29	This shoe is great and comfy that I  wasted. This shoe is great and comfy that I  white color. I grasp dreaded. I got more. I grasp dreaded. This shoe is great and comfy that I  dreaded. It looks touched. This shoe is great and comfy that I  black color. This is happy. 	I wanted dreaded.	I wanted great and comfy.	f	2019-02-26 00:38:02.884-08	2019-02-26 00:38:02.884-08	M2
191	0.5	0	0.5	1	5c74fae9bae534	Mexico City, Mexico	53	7		This is dreaded.	This has grateful.	f	2019-02-26 00:38:02.889-08	2019-02-26 00:38:02.889-08	W9
198	0	0.5	0	3	5c74fae9481ceb	Denver, CO, USA	66	4		This was good.	This has grateful.	f	2019-02-26 00:38:02.904-08	2019-02-26 00:38:02.904-08	W7
201	0.5	1	1	1	5c74fae99d8657	Busan, Korea	30	29	This pair was more. This shoe is great and comfy that I  happy. I need delighted. This shoe is horrible that I  green color. I am delighted. This shoe is great and comfy that I  red color. It looks more. 	This has more.	I wish wasted.	f	2019-02-26 00:38:02.904-08	2019-02-26 00:38:02.904-08	M1
205	0	1	0	3	5c74fae9ffc5fd	Taipei, Taiwan	90	24	This shoe is great and comfy that I  white color. I wanted red color. This shoe is great and comfy that I  green color. 	This shoe is horrible that I  grateful.	This shoe is horrible that I  meow	f	2019-02-26 00:38:02.914-08	2019-02-26 00:38:02.914-08	W9
210	0.5	0.5	1	3	5c74fae9e6dffa	Beijing, China	35	17	This has meticulous. I need dreaded. 	Those were grateful.	This shoe is meticulous.	f	2019-02-26 00:38:02.918-08	2019-02-26 00:38:02.918-08	W7
215	0.5	1	1	4	5c74fae99cc832	Los Angeles, CA, USA	3	13	I got red color. This shoe is white color. I got happy. This was happy. 	This pair was red color.	This shoe is horrible that I  more.	f	2019-02-26 00:38:02.923-08	2019-02-26 00:38:02.923-08	W2
221	0	1	1	0	5c74fae9f3687e	New York, NY, USA	38	21	This has grateful. I have good. I grasp meticulous. This was white color. Those were black color. I need grateful. I got happy. 	I have disappointed.	I have wasted.	f	2019-02-26 00:38:02.932-08	2019-02-26 00:38:02.932-08	M4
223	1	0	1	4	5c74fae9250d7e	Princeton, NJ, USA	45	6	I got meow I am more. Those were disappointed. Those were dreaded. I grasp great and comfy. I feel happy. This pair was meticulous. This is great and comfy. 	I wanted miraculous.	I need touched.	f	2019-02-26 00:38:02.936-08	2019-02-26 00:38:02.936-08	W1
228	0	0.5	0	0	5c74fae9d15e56	Taipei, Taiwan	33	3	This pair was wasted. I got more. Those were happy. 	This shoe is dreaded.	I wish red color.	f	2019-02-26 00:38:02.949-08	2019-02-26 00:38:02.949-08	M1
236	1	0	0.5	3	5c74fae970f6d6	San Francisco, CA, USA	83	28	This has wasted. I have miraculous. This pair was green color. I have great and comfy. I grasp good. I am disappointed. This shoe is great and comfy that I  meow 	I have touched.	I have happy.	f	2019-02-26 00:38:02.953-08	2019-02-26 00:38:02.953-08	M8
241	0.5	0.5	0.5	3	5c74fae9d8aa5e	Boston, MA, USA	93	19	This shoe is delighted. I grasp meow I grasp meticulous. I wish green color. This is happy. I got meow 	This shoe is great and comfy.	I feel grateful.	f	2019-02-26 00:38:02.958-08	2019-02-26 00:38:02.958-08	M9
246	0.5	0	0.5	2	5c74fae97eacaa	Rome, Italy	21	17	This pair was good. I feel miraculous. I am great and comfy. I got more. 	I wanted disappointed.	This shoe is great and comfy that I  white color.	f	2019-02-26 00:38:02.966-08	2019-02-26 00:38:02.966-08	M10
253	1	1	0	2	5c74fae91285b8	New York, NY, USA	85	24	I got green color. This is touched. It looks wasted. I feel green color. This pair was disappointed. I need meow This has happy. I need delighted. This has dreaded. 	I wish grateful.	This has dreaded.	f	2019-02-26 00:38:02.982-08	2019-02-26 00:38:02.982-08	M5
257	0.5	0	1	4	5c74fae95d3c82	Boston, MA, USA	37	5	This was green color. This shoe is horrible that I  grateful. This shoe is great and comfy that I  red color. This shoe is disappointed. This shoe is dreaded. This was red color. I need miraculous. It looks more. 	It looks miraculous.	This was green color.	f	2019-02-26 00:38:02.985-08	2019-02-26 00:38:02.985-08	M5
128	1	0.5	0.5	1	5c74fae96c30fe	Seoul, Korea	39	8	I am happy. Those were delighted. This was delighted. This was grateful. I grasp meticulous. I grasp wasted. Those were black color. This has touched. 	This shoe is more.	This was touched.	f	2019-02-26 00:38:02.819-08	2019-02-26 00:38:02.819-08	W5
132	1	1	0.5	0	5c74fae9b1f5c7	Beijing, China	34	27		I feel white color.	I am more.	f	2019-02-26 00:38:02.824-08	2019-02-26 00:38:02.824-08	M7
137	1	0.5	1	3	5c74fae9231b08	Princeton, NJ, USA	85	5		I grasp wasted.	I grasp happy.	f	2019-02-26 00:38:02.831-08	2019-02-26 00:38:02.831-08	M9
142	0.5	0.5	0	4	5c74fae96eef05	Princeton, NJ, USA	11	0	I got miraculous. This is touched. This pair was miraculous. This has good. This shoe is great and comfy that I  red color. I need more. I wish black color. Those were miraculous. 	This is more.	I have white color.	f	2019-02-26 00:38:02.837-08	2019-02-26 00:38:02.837-08	W8
148	0.5	0	0	2	5c74fae9b486d4	Busan, Korea	5	5	I got touched. I wish happy. 	This shoe is wasted.	This has wasted.	f	2019-02-26 00:38:02.848-08	2019-02-26 00:38:02.848-08	M7
153	0.5	0.5	0	4	5c74fae9914b46	Seoul, Korea	10	1	This shoe is disappointed. It looks miraculous. This shoe is horrible that I  black color. 	I am wasted.	I am black color.	f	2019-02-26 00:38:02.853-08	2019-02-26 00:38:02.853-08	W8
155	0.5	1	0	4	5c74fae9674eb1	Denver, CO, USA	30	26	It looks more. Those were white color. I feel white color. I feel miraculous. I feel red color. I have happy. 	This shoe is great and comfy that I  happy.	This pair was miraculous.	f	2019-02-26 00:38:02.853-08	2019-02-26 00:38:02.853-08	M3
161	0.5	1	1	0	5c74fae90b8d90	Beijing, China	43	19	This is more. 	I have touched.	This shoe is great and comfy that I  more.	f	2019-02-26 00:38:02.857-08	2019-02-26 00:38:02.857-08	W8
167	1	0	0.5	1	5c74fae9fdaf9d	Denver, CO, USA	79	10		This pair was green color.	This is touched.	f	2019-02-26 00:38:02.869-08	2019-02-26 00:38:02.869-08	M6
172	0.5	0.5	0.5	3	5c74fae967e8f0	Beijing, China	89	11	I wanted touched. This shoe is grateful. I am meow 	I feel red color.	This shoe is great and comfy that I  touched.	f	2019-02-26 00:38:02.873-08	2019-02-26 00:38:02.873-08	W5
177	0.5	0.5	0.5	1	5c74fae9d2b6f6	Princeton, NJ, USA	31	20	This is good. I wish great and comfy. I wanted meow I grasp wasted. This shoe is miraculous. 	I need good.	This was great and comfy.	f	2019-02-26 00:38:02.88-08	2019-02-26 00:38:02.88-08	W6
184	0.5	1	1	4	5c74fae9995ef4	Paris, France	50	5	Those were touched. 	I need touched.	I am white color.	f	2019-02-26 00:38:02.884-08	2019-02-26 00:38:02.884-08	W3
189	0.5	0	0	0	5c74fae9b3f9e7	Beijing, China	51	20		This was wasted.	This has meow	f	2019-02-26 00:38:02.889-08	2019-02-26 00:38:02.889-08	W4
194	0	0.5	0.5	3	5c74fae91d2e9d	Paris, France	13	29	I wanted miraculous. This was great and comfy. I wish meow It looks meow 	I need delighted.	I am black color.	f	2019-02-26 00:38:02.898-08	2019-02-26 00:38:02.898-08	W8
199	0.5	0.5	0.5	0	5c74fae9e3d6cb	Seoul, Korea	0	17	I wanted delighted. I have good. I feel delighted. This was great and comfy. I feel meticulous. 	I am black color.	This was more.	f	2019-02-26 00:38:02.904-08	2019-02-26 00:38:02.904-08	M3
202	0.5	0.5	0.5	1	5c74fae9e88736	Paris, France	33	23	This shoe is wasted. I need happy. This shoe is dreaded. This has more. I got good. Those were green color. This shoe is good. I wanted grateful. This shoe is horrible that I  grateful. 	I am green color.	This pair was green color.	f	2019-02-26 00:38:02.914-08	2019-02-26 00:38:02.914-08	M4
207	0	0.5	0	0	5c74fae990d0bb	Paris, France	0	5		I am red color.	I feel green color.	f	2019-02-26 00:38:02.918-08	2019-02-26 00:38:02.918-08	W4
212	1	1	1	0	5c74fae91f394e	Rome, Italy	17	9	This has white color. This has wasted. This was good. 	This was touched.	This shoe is more.	f	2019-02-26 00:38:02.923-08	2019-02-26 00:38:02.923-08	M4
217	1	1	0.5	2	5c74fae9bea29d	Boston, MA, USA	44	15		I wish green color.	I grasp grateful.	f	2019-02-26 00:38:02.931-08	2019-02-26 00:38:02.931-08	M4
224	0.5	0.5	0.5	3	5c74fae99847b5	Taipei, Taiwan	37	6	I wanted meticulous. This was delighted. This was touched. It looks wasted. This pair was meow This shoe is great and comfy that I  touched. This shoe is red color. I feel white color. This pair was black color. 	This shoe is great and comfy that I  black color.	I have great and comfy.	f	2019-02-26 00:38:02.936-08	2019-02-26 00:38:02.936-08	W2
229	1	1	1	0	5c74fae9146c5e	Rome, Italy	43	2	It looks delighted. I wanted wasted. I wanted good. This shoe is horrible that I  green color. This shoe is disappointed. 	This shoe is horrible that I  happy.	I feel red color.	f	2019-02-26 00:38:02.949-08	2019-02-26 00:38:02.949-08	M10
232	0.5	0.5	1	4	5c74fae9768786	Seoul, Korea	30	27	I wish more. I am black color. I am meticulous. 	I got happy.	It looks white color.	f	2019-02-26 00:38:02.953-08	2019-02-26 00:38:02.953-08	W7
239	0	0	1	4	5c74fae93f2c8b	Boston, MA, USA	72	12	This shoe is great and comfy that I  red color. I need green color. This was white color. This shoe is wasted. It looks disappointed. This shoe is horrible that I  miraculous. 	I wanted white color.	I grasp disappointed.	f	2019-02-26 00:38:02.957-08	2019-02-26 00:38:02.957-08	M6
244	1	0	0.5	3	5c74fae9b69402	San Francisco, CA, USA	1	2	I have white color. This has more. I wish red color. This pair was happy. This shoe is great and comfy that I  wasted. I need white color. I need good. 	I wish meticulous.	Those were white color.	f	2019-02-26 00:38:02.966-08	2019-02-26 00:38:02.966-08	W8
249	0	0	0.5	4	5c74fae90eb424	Princeton, NJ, USA	61	21	This has dreaded. I need great and comfy. I have disappointed. This shoe is red color. 	I am more.	This was touched.	f	2019-02-26 00:38:02.97-08	2019-02-26 00:38:02.97-08	M4
254	0.5	0	0	4	5c74fae9844301	Boston, MA, USA	56	13	Those were good. This shoe is great and comfy that I  green color. 	I grasp delighted.	I feel wasted.	f	2019-02-26 00:38:02.982-08	2019-02-26 00:38:02.982-08	W7
261	0	0	0	3	5c74fae99b925f	Denver, CO, USA	27	14	I have good. I wanted great and comfy. This shoe is great and comfy that I  happy. This shoe is horrible that I  green color. It looks red color. I need wasted. This pair was dreaded. I am disappointed. This shoe is great and comfy that I  green color. 	This was great and comfy.	I wanted green color.	f	2019-02-26 00:38:02.986-08	2019-02-26 00:38:02.986-08	W6
264	0	0.5	1	4	5c74fae905d9e8	San Francisco, CA, USA	65	5		This has good.	This shoe is great and comfy that I  grateful.	f	2019-02-26 00:38:02.989-08	2019-02-26 00:38:02.989-08	M6
270	1	1	0.5	1	5c74fae9031f7d	Princeton, NJ, USA	40	15	I grasp white color. 	This has meow	I have more.	f	2019-02-26 00:38:02.998-08	2019-02-26 00:38:02.998-08	W3
275	0.5	1	0.5	2	5c74fae956457b	Beijing, China	20	21	I have more. This has dreaded. This was disappointed. I am delighted. 	I got good.	I need miraculous.	f	2019-02-26 00:38:03.002-08	2019-02-26 00:38:03.002-08	M9
280	1	1	1	2	5c74fae97bde21	Princeton, NJ, USA	0	1	I feel great and comfy. I feel touched. This pair was black color. This was great and comfy. 	I wanted grateful.	I have touched.	f	2019-02-26 00:38:03.006-08	2019-02-26 00:38:03.006-08	M5
284	1	0	0.5	1	5c74fae9594da3	Taipei, Taiwan	1	5	I wish great and comfy. This shoe is great and comfy that I  grateful. This has great and comfy. Those were green color. 	I got dreaded.	This shoe is horrible that I  dreaded.	f	2019-02-26 00:38:03.015-08	2019-02-26 00:38:03.015-08	W5
287	0	0	0.5	1	5c74fae965e526	Beijing, China	6	12	This shoe is horrible that I  red color. This is dreaded. I feel meow This pair was disappointed. Those were white color. This shoe is horrible that I  great and comfy. This shoe is horrible that I  meow 	This was white color.	I am touched.	f	2019-02-26 00:38:03.019-08	2019-02-26 00:38:03.019-08	M10
176	1	1	0	2	5c74fae98e023f	Rome, Italy	30	21	This was dreaded. This shoe is horrible that I  green color. I got happy. Those were delighted. I am wasted. 	This shoe is horrible that I  disappointed.	This shoe is meticulous.	f	2019-02-26 00:38:02.873-08	2019-02-26 00:38:02.873-08	W10
183	0.5	0	0.5	1	5c74fae9635054	Denver, CO, USA	8	24		I grasp miraculous.	This has meticulous.	f	2019-02-26 00:38:02.884-08	2019-02-26 00:38:02.884-08	W10
187	0	0.5	0.5	0	5c74fae9df9d71	Beijing, China	37	29	This shoe is horrible that I  disappointed. This shoe is more. This shoe is good. This shoe is dreaded. 	This shoe is horrible that I  touched.	I got green color.	f	2019-02-26 00:38:02.889-08	2019-02-26 00:38:02.889-08	M3
192	1	1	1	1	5c74fae95354f9	Taipei, Taiwan	50	28	I wanted wasted. I got meow This has disappointed. This shoe is miraculous. This shoe is great and comfy that I  green color. I wanted disappointed. I wanted meticulous. 	This shoe is great and comfy that I  disappointed.	This shoe is great and comfy.	f	2019-02-26 00:38:02.898-08	2019-02-26 00:38:02.898-08	W1
195	0.5	0.5	0	4	5c74fae9ae56f7	Tokyo, Japan	20	12	I wish delighted. It looks meticulous. It looks great and comfy. This shoe is great and comfy that I  meticulous. I wish green color. This is green color. 	I have meow	I am meow	f	2019-02-26 00:38:02.898-08	2019-02-26 00:38:02.898-08	W9
203	0.5	1	0	0	5c74fae98f44ce	Princeton, NJ, USA	83	25	I wanted great and comfy. This was white color. It looks meticulous. This shoe is horrible that I  disappointed. I feel grateful. This shoe is great and comfy that I  miraculous. I feel miraculous. I grasp grateful. 	It looks green color.	I got more.	f	2019-02-26 00:38:02.914-08	2019-02-26 00:38:02.914-08	W10
208	0	0	1	3	5c74fae9aa06fc	Denver, CO, USA	61	1	This shoe is red color. It looks green color. 	I feel good.	This is red color.	f	2019-02-26 00:38:02.918-08	2019-02-26 00:38:02.918-08	W5
213	1	1	0	2	5c74fae953513e	Beijing, China	49	14	I got green color. Those were happy. I wish red color. This shoe is black color. I grasp delighted. 	This shoe is great and comfy that I  white color.	I feel green color.	f	2019-02-26 00:38:02.923-08	2019-02-26 00:38:02.923-08	W8
218	0.5	1	0.5	1	5c74fae9b503b6	Seoul, Korea	76	12	This is meow I wish more. This was delighted. This shoe is red color. I grasp good. This was good. This shoe is great and comfy that I  happy. I feel black color. I need touched. 	I need wasted.	I got delighted.	f	2019-02-26 00:38:02.931-08	2019-02-26 00:38:02.931-08	W4
225	0.5	0.5	1	3	5c74fae9a3181a	Princeton, NJ, USA	80	20	It looks disappointed. I got good. This shoe is horrible that I  great and comfy. I got more. I grasp good. Those were more. It looks grateful. 	This has wasted.	This was green color.	f	2019-02-26 00:38:02.936-08	2019-02-26 00:38:02.936-08	M6
230	0	0.5	0.5	0	5c74fae9232f72	Los Angeles, CA, USA	50	6		This shoe is wasted.	This shoe is great and comfy that I  miraculous.	f	2019-02-26 00:38:02.949-08	2019-02-26 00:38:02.949-08	W7
233	0	1	1	3	5c74fae9c83df7	Seoul, Korea	76	0	I am grateful. This was wasted. This shoe is horrible that I  good. I wish disappointed. 	This is meticulous.	It looks white color.	f	2019-02-26 00:38:02.953-08	2019-02-26 00:38:02.953-08	M7
237	0	0	0	3	5c74fae9af9236	Tokyo, Japan	96	16	This was more. It looks great and comfy. I have green color. I wanted great and comfy. This pair was more. I wanted black color. 	I have red color.	I wish more.	f	2019-02-26 00:38:02.957-08	2019-02-26 00:38:02.957-08	W3
242	0	0	1	0	5c74fae94708da	Princeton, NJ, USA	88	1	This shoe is green color. I grasp grateful. This shoe is horrible that I  touched. 	I have meow	I feel happy.	f	2019-02-26 00:38:02.966-08	2019-02-26 00:38:02.966-08	W5
247	0.5	0	1	0	5c74fae94b493c	Paris, France	0	5	This is grateful. I wish meticulous. I wanted meow This was delighted. I grasp green color. I got delighted. I feel miraculous. This is meticulous. 	This is disappointed.	Those were miraculous.	f	2019-02-26 00:38:02.97-08	2019-02-26 00:38:02.97-08	M1
250	0.5	1	0.5	3	5c74fae9901a40	Rome, Italy	76	9	I feel touched. This shoe is great and comfy that I  black color. I feel miraculous. I wish happy. I wish more. I wish disappointed. 	I feel white color.	Those were meticulous.	f	2019-02-26 00:38:02.97-08	2019-02-26 00:38:02.97-08	W3
255	0	0	1	1	5c74fae96bd3fc	New York, NY, USA	98	20	This was good. I need white color. This has touched. I need great and comfy. This is wasted. I need great and comfy. I wanted disappointed. I got red color. I got good. 	This is miraculous.	This shoe is horrible that I  dreaded.	f	2019-02-26 00:38:02.982-08	2019-02-26 00:38:02.982-08	M2
259	0.5	0	0.5	3	5c74fae9c9e3a9	Seoul, Korea	16	24	I grasp touched. I need wasted. I am red color. This shoe is great and comfy that I  great and comfy. This is white color. 	I need miraculous.	This shoe is great and comfy that I  meow	f	2019-02-26 00:38:02.985-08	2019-02-26 00:38:02.985-08	W8
263	0.5	0.5	0.5	4	5c74fae96f1c37	Paris, France	75	24	It looks meow 	This pair was great and comfy.	I got miraculous.	f	2019-02-26 00:38:02.989-08	2019-02-26 00:38:02.989-08	W1
267	1	0	1	4	5c74fae946acef	Rome, Italy	55	7	This shoe is horrible that I  delighted. I wanted meticulous. I feel white color. I feel delighted. This shoe is dreaded. 	This is great and comfy.	This is touched.	f	2019-02-26 00:38:02.998-08	2019-02-26 00:38:02.998-08	W5
272	1	0.5	0.5	1	5c74fae93e9862	San Francisco, CA, USA	95	25	I grasp green color. 	This is happy.	This pair was red color.	f	2019-02-26 00:38:03.002-08	2019-02-26 00:38:03.002-08	W5
277	1	0	0	4	5c74fae9ac0707	Denver, CO, USA	65	23	This shoe is grateful. This is wasted. 	I have red color.	I grasp more.	f	2019-02-26 00:38:03.005-08	2019-02-26 00:38:03.005-08	M9
282	1	1	0	2	5c74fae918d946	Tokyo, Japan	80	0		This has green color.	I grasp red color.	f	2019-02-26 00:38:03.015-08	2019-02-26 00:38:03.015-08	W5
289	1	0	0.5	1	5c74fae97fb535	Tokyo, Japan	18	6	I have touched. I wish delighted. This shoe is miraculous. Those were touched. I wish red color. This pair was miraculous. This is disappointed. 	I feel dreaded.	This shoe is great and comfy that I  meow	f	2019-02-26 00:38:03.019-08	2019-02-26 00:38:03.019-08	M7
294	0	0.5	0	2	5c74fae9c00c2c	Taipei, Taiwan	15	6	This shoe is great and comfy that I  more. I grasp miraculous. I got more. I grasp great and comfy. This has red color. I feel white color. 	This has touched.	This shoe is white color.	f	2019-02-26 00:38:03.023-08	2019-02-26 00:38:03.023-08	W3
300	0	0.5	0.5	0	5c74fae933701f	Paris, France	58	22	This shoe is happy. Those were touched. This pair was dreaded. This was red color. I need happy. I wanted disappointed. This pair was good. 	I grasp happy.	Those were dreaded.	f	2019-02-26 00:38:03.031-08	2019-02-26 00:38:03.031-08	M8
302	1	0	0	0	5c74fae9450981	Denver, CO, USA	39	9	I grasp green color. This was dreaded. This pair was happy. 	It looks white color.	This shoe is great and comfy that I  more.	f	2019-02-26 00:38:03.037-08	2019-02-26 00:38:03.037-08	M1
179	0	0	0.5	2	5c74fae9439ce4	Mexico City, Mexico	10	20	This pair was meticulous. This pair was wasted. I feel meow This pair was grateful. This has grateful. It looks miraculous. This was green color. I am good. Those were red color. 	I got green color.	This has miraculous.	f	2019-02-26 00:38:02.881-08	2019-02-26 00:38:02.881-08	W4
181	0.5	1	0	1	5c74fae99e06e9	Beijing, China	12	20	This shoe is horrible that I  black color. I got meticulous. This shoe is horrible that I  grateful. I wish wasted. I grasp black color. This shoe is horrible that I  delighted. Those were good. This shoe is great and comfy that I  good. 	I am disappointed.	This shoe is horrible that I  happy.	f	2019-02-26 00:38:02.884-08	2019-02-26 00:38:02.884-08	W4
188	0	1	0.5	3	5c74fae9c9f18b	Taipei, Taiwan	57	23	I feel touched. I need touched. I need meticulous. 	This shoe is horrible that I  more.	I have touched.	f	2019-02-26 00:38:02.889-08	2019-02-26 00:38:02.889-08	M6
193	0	1	1	1	5c74fae93fdc85	Busan, Korea	77	24	I am white color. This shoe is horrible that I  meticulous. I grasp meticulous. I got red color. I have dreaded. This shoe is great and comfy that I  meow I wanted delighted. 	This was touched.	I wanted wasted.	f	2019-02-26 00:38:02.898-08	2019-02-26 00:38:02.898-08	M9
197	1	0.5	0	1	5c74fae988b4ec	Mexico City, Mexico	29	14	This shoe is disappointed. I need disappointed. Those were miraculous. It looks delighted. I grasp green color. I am delighted. 	This has red color.	Those were great and comfy.	f	2019-02-26 00:38:02.904-08	2019-02-26 00:38:02.904-08	W4
200	1	1	0.5	4	5c74fae9e6efe4	Busan, Korea	28	7	I got white color. Those were red color. It looks red color. I grasp dreaded. This is good. 	This shoe is horrible that I  meticulous.	This shoe is great and comfy that I  grateful.	f	2019-02-26 00:38:02.904-08	2019-02-26 00:38:02.904-08	W8
206	1	0	0	1	5c74fae9272d16	New York, NY, USA	78	1	I wish grateful. I got delighted. It looks meticulous. I got meticulous. I have great and comfy. This is black color. I need meow 	I need great and comfy.	I wish more.	f	2019-02-26 00:38:02.914-08	2019-02-26 00:38:02.914-08	M4
211	0.5	0	1	1	5c74fae9f919b2	Denver, CO, USA	58	14	It looks happy. 	I need great and comfy.	This shoe is green color.	f	2019-02-26 00:38:02.918-08	2019-02-26 00:38:02.918-08	M2
216	1	0	0	4	5c74fae9d7e8cc	Denver, CO, USA	36	5	This shoe is great and comfy that I  green color. This pair was meow This pair was touched. 	I wish disappointed.	This pair was black color.	f	2019-02-26 00:38:02.923-08	2019-02-26 00:38:02.923-08	W9
220	0.5	0.5	1	1	5c74fae98718c1	Rome, Italy	18	23	I wanted disappointed. I wish black color. It looks delighted. I have wasted. 	This was touched.	This was black color.	f	2019-02-26 00:38:02.931-08	2019-02-26 00:38:02.931-08	M6
222	0.5	0	1	1	5c74fae972aa9f	Tokyo, Japan	1	6	This shoe is great and comfy that I  dreaded. This is great and comfy. This shoe is grateful. This shoe is horrible that I  meow This is red color. I need good. 	It looks red color.	It looks great and comfy.	f	2019-02-26 00:38:02.936-08	2019-02-26 00:38:02.936-08	W6
227	0.5	0.5	1	0	5c74fae9999134	Los Angeles, CA, USA	29	7	I got delighted. 	It looks green color.	I grasp happy.	f	2019-02-26 00:38:02.949-08	2019-02-26 00:38:02.949-08	W6
235	1	1	0	1	5c74fae948d480	Paris, France	39	13	I wish meticulous. This is great and comfy. I feel dreaded. I am dreaded. This shoe is meow This shoe is disappointed. Those were grateful. 	I wanted red color.	I grasp good.	f	2019-02-26 00:38:02.953-08	2019-02-26 00:38:02.953-08	M9
240	0	0.5	0	1	5c74fae96ee739	Tokyo, Japan	84	0	This shoe is horrible that I  disappointed. Those were black color. I am green color. 	I wanted delighted.	This shoe is good.	f	2019-02-26 00:38:02.957-08	2019-02-26 00:38:02.957-08	W1
245	0.5	1	0.5	3	5c74fae9889365	Beijing, China	23	28	This pair was black color. This shoe is great and comfy that I  wasted. Those were green color. It looks white color. 	Those were black color.	This pair was delighted.	f	2019-02-26 00:38:02.966-08	2019-02-26 00:38:02.966-08	W5
252	0.5	0.5	0	0	5c74fae9c62ad0	Rome, Italy	95	9	I feel great and comfy. This shoe is wasted. I got green color. 	I need dreaded.	I have good.	f	2019-02-26 00:38:02.982-08	2019-02-26 00:38:02.982-08	W5
258	1	0	1	0	5c74fae9d60964	Boston, MA, USA	42	2		I got miraculous.	I am grateful.	f	2019-02-26 00:38:02.985-08	2019-02-26 00:38:02.985-08	M1
266	0.5	1	1	0	5c74fae9484a02	Beijing, China	54	29	This has more. This has miraculous. I wish wasted. I wanted delighted. I got red color. It looks disappointed. I feel touched. 	This shoe is horrible that I  grateful.	Those were disappointed.	f	2019-02-26 00:38:02.989-08	2019-02-26 00:38:02.989-08	M10
271	0	1	1	1	5c74fae9960a5b	Taipei, Taiwan	37	0	I wish touched. I feel grateful. I am great and comfy. I am good. This is touched. I am black color. 	I need white color.	I grasp meow	f	2019-02-26 00:38:02.998-08	2019-02-26 00:38:02.998-08	W7
276	1	1	1	1	5c74fae9b6008b	Seoul, Korea	82	21	This pair was miraculous. I grasp great and comfy. This has white color. I have dreaded. I feel disappointed. This was disappointed. This shoe is horrible that I  good. 	This shoe is horrible that I  grateful.	I wanted white color.	f	2019-02-26 00:38:03.002-08	2019-02-26 00:38:03.002-08	W3
281	1	0.5	0.5	3	5c74fae97edd0f	Paris, France	58	11	This was touched. This has black color. Those were more. I need great and comfy. I wish great and comfy. 	I need more.	This pair was touched.	f	2019-02-26 00:38:03.006-08	2019-02-26 00:38:03.006-08	W6
288	0.5	0	0	0	5c74fae96810df	Busan, Korea	55	23	This shoe is white color. This shoe is meticulous. Those were happy. This was disappointed. This is white color. This shoe is horrible that I  meticulous. I wanted more. This is meow I wish wasted. 	This has grateful.	This has touched.	f	2019-02-26 00:38:03.019-08	2019-02-26 00:38:03.019-08	M1
293	0.5	1	0	0	5c74fae9081c50	Boston, MA, USA	76	19	This is black color. This was meow This shoe is great and comfy that I  black color. This shoe is great and comfy that I  delighted. 	It looks disappointed.	This shoe is great and comfy that I  grateful.	f	2019-02-26 00:38:03.023-08	2019-02-26 00:38:03.023-08	M4
297	0.5	0.5	0	0	5c74fae9cdc905	New York, NY, USA	9	12	I wanted wasted. 	I got meticulous.	I grasp meticulous.	f	2019-02-26 00:38:03.031-08	2019-02-26 00:38:03.031-08	M10
190	0	0	0	0	5c74fae932d8c7	San Francisco, CA, USA	17	0	Those were meow I grasp black color. 	I need meticulous.	This is delighted.	f	2019-02-26 00:38:02.889-08	2019-02-26 00:38:02.889-08	M9
196	0	1	0	2	5c74fae94eb602	Los Angeles, CA, USA	66	25	This was delighted. This shoe is good. This pair was green color. I wanted meow This shoe is great and comfy that I  black color. I grasp delighted. I got meow 	I have delighted.	I feel miraculous.	f	2019-02-26 00:38:02.898-08	2019-02-26 00:38:02.898-08	W10
204	1	0.5	0	4	5c74fae9195a54	Seoul, Korea	66	22	I am touched. I got touched. I need miraculous. 	This pair was grateful.	This shoe is horrible that I  great and comfy.	f	2019-02-26 00:38:02.914-08	2019-02-26 00:38:02.914-08	M1
209	0.5	0	1	1	5c74fae95f172e	Beijing, China	69	21	I have happy. I need red color. I wanted red color. 	This pair was meow	I need touched.	f	2019-02-26 00:38:02.918-08	2019-02-26 00:38:02.918-08	M7
214	0.5	0	0	1	5c74fae9c6292a	Princeton, NJ, USA	74	17	This shoe is more. I wanted more. This was dreaded. I wish grateful. This shoe is disappointed. This shoe is more. I wish more. I feel great and comfy. 	This is happy.	This shoe is horrible that I  great and comfy.	f	2019-02-26 00:38:02.923-08	2019-02-26 00:38:02.923-08	W5
219	1	0	1	3	5c74fae932ee7b	Seoul, Korea	96	10	This is meticulous. This was red color. I got meow This is red color. 	I am black color.	This shoe is horrible that I  green color.	f	2019-02-26 00:38:02.931-08	2019-02-26 00:38:02.931-08	M9
226	0.5	0	0	3	5c74fae930a422	Princeton, NJ, USA	83	16	I grasp green color. This pair was touched. 	Those were miraculous.	Those were miraculous.	f	2019-02-26 00:38:02.936-08	2019-02-26 00:38:02.936-08	M9
231	0	0	1	3	5c74fae9a34cd4	Busan, Korea	10	1	This shoe is great and comfy that I  disappointed. This shoe is more. It looks grateful. I am happy. I got more. This shoe is horrible that I  grateful. This has green color. 	This has more.	I wanted green color.	f	2019-02-26 00:38:02.949-08	2019-02-26 00:38:02.949-08	M5
234	0.5	0.5	0.5	4	5c74fae9e524eb	Denver, CO, USA	31	6	This shoe is great and comfy that I  good. Those were green color. This was meow This has green color. 	I wanted meow	This was wasted.	f	2019-02-26 00:38:02.953-08	2019-02-26 00:38:02.953-08	W6
238	0.5	1	0.5	3	5c74fae97563e9	New York, NY, USA	56	4	This was delighted. This shoe is horrible that I  grateful. This shoe is good. Those were touched. This shoe is great and comfy that I  green color. It looks happy. 	I feel green color.	This was more.	f	2019-02-26 00:38:02.957-08	2019-02-26 00:38:02.957-08	M9
243	0.5	0.5	0	3	5c74fae9cefc5a	Tokyo, Japan	29	10	This was more. I am red color. This is black color. I wanted miraculous. I got touched. 	I feel white color.	I have meow	f	2019-02-26 00:38:02.966-08	2019-02-26 00:38:02.966-08	W5
248	0.5	0	0.5	0	5c74fae9e46060	Tokyo, Japan	48	8	This pair was wasted. This pair was good. It looks disappointed. I feel touched. I have great and comfy. This is black color. This pair was more. 	This was green color.	I have touched.	f	2019-02-26 00:38:02.97-08	2019-02-26 00:38:02.97-08	W9
251	0.5	0.5	0	4	5c74fae97fdb2b	Boston, MA, USA	38	18		This is great and comfy.	I got touched.	f	2019-02-26 00:38:02.97-08	2019-02-26 00:38:02.97-08	M6
256	0	0.5	1	2	5c74fae9ed6e67	Beijing, China	19	15	I have grateful. This is delighted. It looks red color. 	This shoe is more.	This shoe is horrible that I  meticulous.	f	2019-02-26 00:38:02.982-08	2019-02-26 00:38:02.982-08	M3
260	0	1	0	2	5c74fae95801cc	Busan, Korea	48	17	This shoe is delighted. Those were disappointed. This shoe is great and comfy that I  great and comfy. I am delighted. It looks black color. I wanted great and comfy. Those were good. I wish touched. I feel touched. 	I wish white color.	Those were wasted.	f	2019-02-26 00:38:02.985-08	2019-02-26 00:38:02.985-08	W8
262	1	1	0	4	5c74fae9ccb2c1	Paris, France	32	21	This was delighted. This is red color. This was disappointed. I wish black color. This pair was wasted. 	This shoe is horrible that I  happy.	This shoe is horrible that I  grateful.	f	2019-02-26 00:38:02.989-08	2019-02-26 00:38:02.989-08	W5
268	0.5	1	0.5	0	5c74fae90e0b0d	Seoul, Korea	23	12	This has black color. I grasp grateful. I have touched. This was miraculous. I feel red color. This was meticulous. 	This shoe is good.	I feel grateful.	f	2019-02-26 00:38:02.998-08	2019-02-26 00:38:02.998-08	M8
273	1	1	0.5	3	5c74fae9f0b0e0	Princeton, NJ, USA	69	21	This shoe is horrible that I  disappointed. I have grateful. It looks meticulous. This shoe is horrible that I  red color. I wanted black color. This is red color. I got white color. 	This shoe is dreaded.	I have white color.	f	2019-02-26 00:38:03.002-08	2019-02-26 00:38:03.002-08	W10
278	1	0	0.5	3	5c74fae9e524d2	Busan, Korea	21	24	This shoe is meow This is dreaded. I feel dreaded. I wanted meow This pair was delighted. I wish touched. This shoe is great and comfy that I  happy. This pair was miraculous. 	It looks wasted.	I have dreaded.	f	2019-02-26 00:38:03.005-08	2019-02-26 00:38:03.005-08	M8
283	0	0.5	0	1	5c74fae90952d9	Princeton, NJ, USA	1	29	I am miraculous. Those were black color. This has delighted. I am wasted. I have good. I have delighted. This shoe is delighted. I wanted grateful. 	I feel grateful.	This has red color.	f	2019-02-26 00:38:03.015-08	2019-02-26 00:38:03.015-08	W10
286	0.5	0	0.5	0	5c74fae95d131c	Paris, France	89	20	This is good. I wish meow This pair was great and comfy. I wanted grateful. This pair was great and comfy. I need touched. 	This pair was meow	I have wasted.	f	2019-02-26 00:38:03.015-08	2019-02-26 00:38:03.015-08	W10
291	0	1	1	0	5c74fae9351f25	Los Angeles, CA, USA	15	11	It looks grateful. I feel touched. It looks delighted. I wanted grateful. This shoe is horrible that I  disappointed. I have great and comfy. 	I need red color.	I wish miraculous.	f	2019-02-26 00:38:03.019-08	2019-02-26 00:38:03.019-08	W4
295	0.5	0	0.5	4	5c74fae94b125d	Mexico City, Mexico	10	5	I wanted good. This shoe is white color. This pair was wasted. I got disappointed. I got happy. This pair was meow 	I feel meticulous.	It looks good.	f	2019-02-26 00:38:03.023-08	2019-02-26 00:38:03.023-08	M1
299	0	0.5	0	3	5c74fae9e5c7ca	Seoul, Korea	17	17	I feel white color. This is dreaded. I am more. Those were grateful. I grasp great and comfy. 	This is great and comfy.	I wish miraculous.	f	2019-02-26 00:38:03.031-08	2019-02-26 00:38:03.031-08	W10
301	1	0	0	1	5c74fae909b971	Taipei, Taiwan	13	6	This shoe is horrible that I  more. 	This shoe is delighted.	I have great and comfy.	f	2019-02-26 00:38:03.031-08	2019-02-26 00:38:03.031-08	M2
265	0	0	0	1	5c74fae94087a2	Taipei, Taiwan	66	9	I feel miraculous. This shoe is great and comfy that I  green color. This shoe is great and comfy that I  miraculous. I need wasted. I wanted miraculous. This shoe is touched. Those were more. This shoe is horrible that I  delighted. I wish meticulous. 	I feel miraculous.	I grasp white color.	f	2019-02-26 00:38:02.989-08	2019-02-26 00:38:02.989-08	M8
269	0	0	1	3	5c74fae935ac7f	San Francisco, CA, USA	12	21	It looks meow I feel happy. I am grateful. 	It looks miraculous.	I wish great and comfy.	f	2019-02-26 00:38:02.998-08	2019-02-26 00:38:02.998-08	W4
274	0	0	0	0	5c74fae96e7a01	Princeton, NJ, USA	59	7	This was meow I am black color. I grasp touched. This shoe is horrible that I  wasted. 	This shoe is horrible that I  wasted.	I have miraculous.	f	2019-02-26 00:38:03.002-08	2019-02-26 00:38:03.002-08	W3
279	0.5	0	0	3	5c74fae93a0bc5	Paris, France	73	18	This shoe is great and comfy that I  delighted. I need wasted. I feel disappointed. I have touched. This shoe is great and comfy that I  disappointed. 	This shoe is wasted.	This pair was touched.	f	2019-02-26 00:38:03.006-08	2019-02-26 00:38:03.006-08	W2
285	1	0	1	2	5c74fae9722a08	New York, NY, USA	38	9	I grasp green color. This shoe is great and comfy that I  miraculous. This is meow 	I wish miraculous.	This has great and comfy.	f	2019-02-26 00:38:03.015-08	2019-02-26 00:38:03.015-08	M7
290	0.5	0	1	1	5c74fae9770d73	Rome, Italy	14	17	I wanted dreaded. This was black color. I am delighted. This pair was great and comfy. I wanted white color. I wanted white color. Those were touched. I have grateful. 	This pair was great and comfy.	I wish black color.	f	2019-02-26 00:38:03.019-08	2019-02-26 00:38:03.019-08	W9
298	1	1	0	4	5c74fae9e11353	Beijing, China	15	16	I need wasted. I need miraculous. 	I have more.	I grasp meow	f	2019-02-26 00:38:03.031-08	2019-02-26 00:38:03.031-08	W1
304	1	0	0	1	5c74fae952d318	Denver, CO, USA	17	27	I have great and comfy. I need black color. I feel meow This shoe is horrible that I  black color. 	I wish meow	I got dreaded.	f	2019-02-26 00:38:03.037-08	2019-02-26 00:38:03.037-08	W5
292	0	0.5	0.5	1	5c74fae98b934e	Mexico City, Mexico	78	25	This shoe is horrible that I  disappointed. 	I wanted more.	I got disappointed.	f	2019-02-26 00:38:03.023-08	2019-02-26 00:38:03.023-08	W9
296	0	1	1	1	5c74fae9806b8b	Boston, MA, USA	75	26	I wanted black color. It looks black color. I need dreaded. I feel meow This pair was more. 	I feel black color.	This shoe is grateful.	f	2019-02-26 00:38:03.023-08	2019-02-26 00:38:03.023-08	M3
303	0	0.5	0	1	5c74fae9f66a78	Los Angeles, CA, USA	41	6	I feel delighted. Those were dreaded. Those were disappointed. I am great and comfy. 	I got good.	I need meticulous.	f	2019-02-26 00:38:03.037-08	2019-02-26 00:38:03.037-08	W4
38	0.5	0	0.5	4	5c74fae99f4fd5	Busan, Korea	29	25	Those were good. This shoe is great and comfy that I  grateful. This shoe is grateful. I wanted happy. I have dreaded. I wanted happy. I grasp miraculous. I am meow 	I grasp dreaded.	This shoe is more.	f	2019-02-26 00:38:02.687-08	2019-02-26 00:38:02.687-08	M10
45	0	0	0.5	0	5c74fae99e38e6	Tokyo, Japan	82	22		It looks great and comfy.	Those were touched.	f	2019-02-26 00:38:02.698-08	2019-02-26 00:38:02.698-08	W6
50	0	0	1	4	5c74fae91217c6	Mexico City, Mexico	39	25	I wish great and comfy. I feel black color. 	This has wasted.	I feel green color.	f	2019-02-26 00:38:02.704-08	2019-02-26 00:38:02.704-08	W5
55	0	1	0.5	3	5c74fae9161013	Denver, CO, USA	98	8	This has delighted. I am black color. 	This shoe is disappointed.	This shoe is great and comfy that I  white color.	f	2019-02-26 00:38:02.715-08	2019-02-26 00:38:02.715-08	M1
62	0	1	1	0	5c74fae9657bf2	Paris, France	67	26	I am more. This is great and comfy. I need red color. I got green color. I grasp touched. I am more. This has touched. This shoe is great and comfy that I  meticulous. This shoe is horrible that I  touched. 	I got meticulous.	I grasp disappointed.	f	2019-02-26 00:38:02.724-08	2019-02-26 00:38:02.724-08	M7
67	1	0.5	0.5	1	5c74fae9412593	San Francisco, CA, USA	47	15	I have grateful. I wish grateful. This shoe is great and comfy that I  green color. This is grateful. This was grateful. 	This was great and comfy.	I grasp miraculous.	f	2019-02-26 00:38:02.732-08	2019-02-26 00:38:02.732-08	M1
72	0	0	1	2	5c74fae94487d3	Busan, Korea	74	19	I have happy. I am delighted. I need good. Those were red color. I feel white color. I grasp disappointed. 	This has green color.	This is dreaded.	f	2019-02-26 00:38:02.736-08	2019-02-26 00:38:02.736-08	M2
77	1	0	0	0	5c74fae979d33c	Mexico City, Mexico	75	15	This shoe is delighted. This shoe is great and comfy that I  white color. This has more. I need wasted. This is green color. This was meow This shoe is great and comfy that I  green color. I grasp delighted. 	I grasp grateful.	It looks good.	f	2019-02-26 00:38:02.748-08	2019-02-26 00:38:02.748-08	W10
82	1	0.5	0	0	5c74fae9fe989b	Boston, MA, USA	52	3	I am black color. This shoe is great and comfy that I  wasted. This shoe is great and comfy that I  good. This has touched. This shoe is meow I got happy. I am miraculous. 	I have white color.	This is green color.	f	2019-02-26 00:38:02.753-08	2019-02-26 00:38:02.753-08	M3
84	0	0	0	1	5c74fae9d10902	Rome, Italy	15	0	This shoe is great and comfy that I  dreaded. I feel red color. 	I feel great and comfy.	This pair was good.	f	2019-02-26 00:38:02.753-08	2019-02-26 00:38:02.753-08	W4
89	0.5	0.5	0.5	3	5c74fae932314c	Boston, MA, USA	7	5	I need great and comfy. Those were green color. I wanted dreaded. This is red color. This shoe is great and comfy that I  black color. This is meow I need wasted. This shoe is good. I wish delighted. 	This shoe is great and comfy that I  touched.	It looks wasted.	f	2019-02-26 00:38:02.764-08	2019-02-26 00:38:02.764-08	M8
93	0	0.5	0	2	5c74fae9794f03	Los Angeles, CA, USA	42	6		This pair was meticulous.	I have meow	f	2019-02-26 00:38:02.769-08	2019-02-26 00:38:02.769-08	W7
98	1	0.5	0.5	3	5c74fae9171c56	Princeton, NJ, USA	31	29	I grasp good. I need happy. 	This pair was great and comfy.	I feel grateful.	f	2019-02-26 00:38:02.774-08	2019-02-26 00:38:02.774-08	W9
103	0.5	0.5	1	2	5c74fae911c6f8	Taipei, Taiwan	29	7	I feel disappointed. 	I got red color.	I need meow	f	2019-02-26 00:38:02.783-08	2019-02-26 00:38:02.783-08	M7
108	1	1	1	0	5c74fae9428f3a	Los Angeles, CA, USA	70	10	This pair was happy. I got happy. I have green color. I need grateful. This shoe is horrible that I  meticulous. This shoe is great and comfy that I  happy. 	This shoe is great and comfy that I  white color.	This is touched.	f	2019-02-26 00:38:02.788-08	2019-02-26 00:38:02.788-08	M4
112	0	0.5	0.5	4	5c74fae942dcfe	Tokyo, Japan	35	11	I got meticulous. It looks disappointed. This pair was touched. I grasp happy. This has black color. This is white color. I have good. This shoe is grateful. Those were green color. 	This shoe is meticulous.	I am good.	f	2019-02-26 00:38:02.797-08	2019-02-26 00:38:02.797-08	M8
114	0.5	1	1	2	5c74fae9da1285	New York, NY, USA	28	19	I wanted delighted. This shoe is great and comfy that I  happy. This shoe is great and comfy that I  good. This shoe is horrible that I  miraculous. This pair was happy. I wish black color. It looks black color. This shoe is great and comfy that I  meticulous. I have delighted. 	I have disappointed.	This has more.	f	2019-02-26 00:38:02.797-08	2019-02-26 00:38:02.797-08	W3
119	1	0.5	0.5	1	5c74fae9d4781f	Princeton, NJ, USA	43	26	I need meticulous. 	It looks happy.	I grasp happy.	f	2019-02-26 00:38:02.803-08	2019-02-26 00:38:02.803-08	W2
127	0.5	0.5	0.5	3	5c74fae92221cc	Rome, Italy	64	3	This has dreaded. I feel more. Those were red color. This shoe is meow I wish more. I feel great and comfy. This has meticulous. I have meticulous. This is great and comfy. 	This shoe is wasted.	I wanted good.	f	2019-02-26 00:38:02.819-08	2019-02-26 00:38:02.819-08	W5
133	1	0	1	2	5c74fae942726a	Denver, CO, USA	34	25	It looks grateful. This was delighted. I grasp white color. I grasp disappointed. This is wasted. I wish miraculous. 	This shoe is great and comfy that I  black color.	I have red color.	f	2019-02-26 00:38:02.824-08	2019-02-26 00:38:02.824-08	M8
138	0	0.5	0	1	5c74fae9be2550	New York, NY, USA	47	9	I wanted dreaded. I grasp great and comfy. I grasp touched. I need miraculous. This shoe is great and comfy that I  dreaded. 	Those were touched.	I grasp good.	f	2019-02-26 00:38:02.831-08	2019-02-26 00:38:02.831-08	M3
143	0.5	0.5	0.5	2	5c74fae9d547b8	Seoul, Korea	37	9		I wanted wasted.	I am grateful.	f	2019-02-26 00:38:02.837-08	2019-02-26 00:38:02.837-08	M9
149	1	0.5	1	2	5c74fae9a579b4	Mexico City, Mexico	72	29		This was black color.	I wanted dreaded.	f	2019-02-26 00:38:02.848-08	2019-02-26 00:38:02.848-08	W9
154	0	1	0.5	2	5c74fae9ec1422	Taipei, Taiwan	74	10	This shoe is great and comfy that I  red color. I got wasted. I wish red color. I feel wasted. It looks delighted. I am dreaded. I grasp delighted. 	I wanted great and comfy.	This is happy.	f	2019-02-26 00:38:02.853-08	2019-02-26 00:38:02.853-08	W7
156	1	0	1	1	5c74fae974c8bd	San Francisco, CA, USA	17	23	I got white color. Those were black color. I feel good. I got red color. I feel white color. I need more. I wanted disappointed. This has miraculous. 	This pair was grateful.	This pair was good.	f	2019-02-26 00:38:02.853-08	2019-02-26 00:38:02.853-08	W8
160	0	1	0	4	5c74fae94bf403	Rome, Italy	8	0	This shoe is horrible that I  green color. This is red color. This shoe is delighted. I grasp great and comfy. This pair was green color. Those were happy. This shoe is horrible that I  white color. It looks good. I grasp miraculous. 	This is good.	I have meticulous.	f	2019-02-26 00:38:02.857-08	2019-02-26 00:38:02.857-08	M10
162	1	1	0	4	5c74fae94f67ff	Seoul, Korea	35	13	I grasp white color. This has good. This was good. This shoe is horrible that I  delighted. I have meow 	It looks disappointed.	I need delighted.	f	2019-02-26 00:38:02.865-08	2019-02-26 00:38:02.865-08	W2
166	1	0.5	0	1	5c74fae9576f3e	Boston, MA, USA	42	17		Those were white color.	I wish red color.	f	2019-02-26 00:38:02.865-08	2019-02-26 00:38:02.865-08	M9
171	0	0.5	0.5	3	5c74fae9fa5f0e	Princeton, NJ, USA	30	3	This was black color. I wish white color. Those were delighted. This pair was delighted. This pair was touched. I have good. 	This shoe is great and comfy that I  delighted.	I grasp great and comfy.	f	2019-02-26 00:38:02.869-08	2019-02-26 00:38:02.869-08	M3
\.


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kooma
--

SELECT pg_catalog.setval('public.reviews_id_seq', 304, true);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: kooma
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products products_product_name_key; Type: CONSTRAINT; Schema: public; Owner: kooma
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_name_key UNIQUE (product_name);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: kooma
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kooma
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "reviews_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

