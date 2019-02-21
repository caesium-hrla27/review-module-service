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


ALTER TABLE public.products OWNER TO kooma;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: kooma
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    size integer,
    comfort integer,
    durability integer,
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


ALTER TABLE public.reviews OWNER TO kooma;

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


ALTER TABLE public.reviews_id_seq OWNER TO kooma;

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
M1	Air Jordan 1 Retro High OG	see if there are more products like Air Jordan 1	https://s3-us-west-1.amazonaws.com/cs-nike-fec/air-jordan-1-retro-high-og-shoe-WR35rK.jpg	$160	t	$105.97	2019-02-08 20:35:50.564-08	2019-02-08 20:35:50.564-08
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: kooma
--

COPY public.reviews (id, size, comfort, durability, rate, username, location, upvote, downvote, comment, title, response, pre_launch, "createdAt", "updatedAt", "productId") FROM stdin;
1	1	1	1	5	mikekoo	Los Angeles, CA, US	2	0	This shoe is great and comfy	Legendary Jordan	true	f	2019-02-08 20:35:50.588-08	2019-02-08 20:35:50.588-08	M1
2	1	1	1	4	brb	San Francisco, CA, US	3	0	Fits great, looks good. Only if it were black...	Loving the shoe	Cool	f	2019-02-08 20:51:05.502-08	2019-02-08 20:51:05.502-08	M1
3	1	1	1	5	Yike	Seoul, S. Korea	5	0	Brings me my memory of old days of Jordan… yea that’s total B* because I’m Korean	As the legend goes…	Cool	f	2019-02-08 20:52:44.863-08	2019-02-08 20:52:44.863-08	M1
4	1	1	1	3	grumpyCat	Los Angeles, CA, US	10	3	Meow… meooooow.. grumpymeowwww..	Meoow	Cool	f	2019-02-08 20:53:49.5-08	2019-02-08 20:53:49.5-08	M1
\.


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kooma
--

SELECT pg_catalog.setval('public.reviews_id_seq', 4, true);


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

