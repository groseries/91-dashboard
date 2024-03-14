--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.auth_group OWNER TO myuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO myuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_group_permissions OWNER TO myuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO myuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    content_type_id bigint,
    codename text,
    name text
);


ALTER TABLE public.auth_permission OWNER TO myuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO myuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    password text,
    last_login timestamp with time zone,
    is_superuser boolean,
    username text,
    last_name text,
    email text,
    is_staff boolean,
    is_active boolean,
    date_joined timestamp with time zone,
    first_name text
);


ALTER TABLE public.auth_user OWNER TO myuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id bigint,
    group_id bigint
);


ALTER TABLE public.auth_user_groups OWNER TO myuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO myuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO myuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_user_user_permissions OWNER TO myuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO myuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.django_admin_log (
    id bigint NOT NULL,
    object_id text,
    object_repr text,
    action_flag smallint,
    change_message text,
    content_type_id bigint,
    user_id bigint,
    action_time timestamp with time zone
);


ALTER TABLE public.django_admin_log OWNER TO myuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO myuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.django_content_type (
    id bigint NOT NULL,
    app_label text,
    model text
);


ALTER TABLE public.django_content_type OWNER TO myuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO myuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app text,
    name text,
    applied timestamp with time zone
);


ALTER TABLE public.django_migrations OWNER TO myuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO myuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.django_session (
    session_key text NOT NULL,
    session_data text,
    expire_date timestamp with time zone
);


ALTER TABLE public.django_session OWNER TO myuser;

--
-- Name: home_ezskedevent; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.home_ezskedevent (
    id bigint NOT NULL,
    date date,
    brief_time time without time zone,
    event_name text,
    event_type text,
    land_time time without time zone,
    remarks text,
    sna_id bigint,
    crew_1 text,
    crew_2 text,
    takeoff_time time without time zone
);


ALTER TABLE public.home_ezskedevent OWNER TO myuser;

--
-- Name: home_ezskedevent_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.home_ezskedevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_ezskedevent_id_seq OWNER TO myuser;

--
-- Name: home_ezskedevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.home_ezskedevent_id_seq OWNED BY public.home_ezskedevent.id;


--
-- Name: home_sna; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.home_sna (
    id bigint NOT NULL,
    name text,
    rank text
);


ALTER TABLE public.home_sna OWNER TO myuser;

--
-- Name: home_sna_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.home_sna_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_sna_id_seq OWNER TO myuser;

--
-- Name: home_sna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.home_sna_id_seq OWNED BY public.home_sna.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_ezskedevent id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.home_ezskedevent ALTER COLUMN id SET DEFAULT nextval('public.home_ezskedevent_id_seq'::regclass);


--
-- Name: home_sna id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.home_sna ALTER COLUMN id SET DEFAULT nextval('public.home_sna_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_ezskedevent	Can add ez sked event
26	7	change_ezskedevent	Can change ez sked event
27	7	delete_ezskedevent	Can delete ez sked event
28	7	view_ezskedevent	Can view ez sked event
29	8	add_sna	Can add sna
30	8	change_sna	Can change sna
31	8	delete_sna	Can delete sna
32	8	view_sna	Can view sna
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$390000$BqaMokKWxWRY1iSgtULTKm$KH2TdIbrDHyjTRIQ/WT2ievezof5Tgawk73XDCulGts=	\N	t	jig		gavinroser@gmail.com	t	t	2024-01-30 03:15:04.024061-06	
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	home	ezskedevent
8	home	sna
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-01-30 03:14:34.079836-06
2	auth	0001_initial	2024-01-30 03:14:34.087767-06
3	admin	0001_initial	2024-01-30 03:14:34.09474-06
4	admin	0002_logentry_remove_auto_add	2024-01-30 03:14:34.1017-06
5	admin	0003_logentry_add_action_flag_choices	2024-01-30 03:14:34.105912-06
6	contenttypes	0002_remove_content_type_name	2024-01-30 03:14:34.115555-06
7	auth	0002_alter_permission_name_max_length	2024-01-30 03:14:34.120187-06
8	auth	0003_alter_user_email_max_length	2024-01-30 03:14:34.12591-06
9	auth	0004_alter_user_username_opts	2024-01-30 03:14:34.129495-06
10	auth	0005_alter_user_last_login_null	2024-01-30 03:14:34.1339-06
11	auth	0006_require_contenttypes_0002	2024-01-30 03:14:34.134622-06
12	auth	0007_alter_validators_add_error_messages	2024-01-30 03:14:34.138542-06
13	auth	0008_alter_user_username_max_length	2024-01-30 03:14:34.144172-06
14	auth	0009_alter_user_last_name_max_length	2024-01-30 03:14:34.148557-06
15	auth	0010_alter_group_name_max_length	2024-01-30 03:14:34.152381-06
16	auth	0011_update_proxy_permissions	2024-01-30 03:14:34.155682-06
17	auth	0012_alter_user_first_name_max_length	2024-01-30 03:14:34.161625-06
18	sessions	0001_initial	2024-01-30 03:14:34.164377-06
19	home	0001_initial	2024-03-05 02:10:19.925172-06
20	home	0002_sna_remove_ezskedevent_name_remove_ezskedevent_rank_and_more	2024-03-07 02:21:39.589523-06
21	home	0003_ezskedevent_crew_1_ezskedevent_crew_2	2024-03-07 02:34:40.764582-06
22	home	0004_alter_ezskedevent_brief_time_and_more	2024-03-07 02:37:38.385043-06
23	home	0005_alter_ezskedevent_remarks	2024-03-07 03:00:51.224852-06
24	home	0006_alter_ezskedevent_crew_2	2024-03-07 03:01:12.844711-06
25	home	0007_alter_ezskedevent_takeoff_time	2024-03-08 17:26:11.009899-06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: home_ezskedevent; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.home_ezskedevent (id, date, brief_time, event_name, event_type, land_time, remarks, sna_id, crew_1, crew_2, takeoff_time) FROM stdin;
918	2024-03-08	06:00:00	FRM6102	simulator	08:00:00	\N	1	LTJG ASHER	\N	06:30:00
919	2024-03-08	06:30:00	FRM6101	simulator	08:30:00	\N	1	LTJG ASHER	\N	07:00:00
920	2024-03-08	06:00:00	FRM6102	simulator	08:00:00	\N	2	LTJG DOMLER	\N	06:30:00
921	2024-03-08	09:30:00	FRM2101	simulator	11:30:00	\N	2	CIV YOSKOVICH	LTJG DOMLER	10:00:00
922	2024-03-08	06:00:00	FRM6101	simulator	08:00:00	\N	3	LTJG FIGUEROA	\N	06:30:00
923	2024-03-08	06:30:00	FRM6102	simulator	08:30:00	\N	3	LTJG FIGUEROA	\N	07:00:00
924	2024-03-08	11:45:00	FRM4101	flight	15:03:00	2HR BRF	5	LTJG ROSSIELLO	1stLt KENT	13:45:00
925	2024-03-08	07:15:00	FRM4101	flight	10:33:00	2 HR BRF	6	LT WALLACE	LTJG MARKERT	09:15:00
926	2024-03-08	10:30:00	FRM6101	simulator	12:30:00	\N	7	1stLt MEIER	\N	11:00:00
927	2024-03-08	10:30:00	FRM6102	simulator	12:30:00	\N	7	1stLt MEIER	\N	11:00:00
928	2024-03-08	06:30:00	FRM6102	simulator	08:30:00	\N	8	1stLt RODTS	\N	07:00:00
929	2024-03-08	11:30:00	FRM2101	simulator	13:30:00	\N	8	CIV RAUENHORST	1stLt RODTS	12:00:00
930	2024-03-08	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	9	Capt ROSER	\N	\N
931	2024-03-08	06:30:00	FRM6102	simulator	08:30:00	\N	10	Capt ROSS	\N	07:00:00
932	2024-03-08	10:30:00	FRM6101	simulator	12:30:00	\N	11	LTJG SEEPE	\N	11:00:00
933	2024-03-08	10:30:00	FRM6102	simulator	12:30:00	\N	11	LTJG SEEPE	\N	11:00:00
934	2023-10-13	07:00:00	CO3101	simulator	09:00:00	\N	1	CIV HANSCHKE	LTJG ASHER	07:30:00
935	2023-10-13	07:30:00	CO3101	simulator	09:30:00	\N	2	CIV CARRIER	LTJG Domler	08:00:00
936	2023-10-13	08:00:00	CO3101	simulator	10:00:00	\N	3	CIV SIMMONS	LTJG FIGUEROA	08:30:00
937	2023-10-13	08:30:00	CO3101	simulator	10:30:00	\N	4	CIV STERLING	LTJG GRAY	09:00:00
938	2023-10-13	09:30:00	CO3101	simulator	11:30:00	\N	5	CIV HANSCHKE	1stLt KENT	10:00:00
939	2023-10-13	10:00:00	CO3101	simulator	12:00:00	\N	6	CIV CARRIER	LTJG MARKERT	10:30:00
940	2023-10-13	10:30:00	CO3101	simulator	12:30:00	\N	7	CIV SIMMONS	1stLt MEIER	11:00:00
941	2023-10-13	10:30:00	CO3101	simulator	12:30:00	\N	8	CIV GIANAKOS	1stLt RODTS	11:00:00
942	2023-10-13	11:00:00	CO3101	simulator	13:00:00	\N	9	CIV STERLING	1stLt ROSER	11:30:00
943	2023-10-13	09:30:00	CO3101	simulator	11:30:00	\N	10	CIV AUSBROOKS	Capt ROSS	10:00:00
944	2023-10-13	09:00:00	CO3101	simulator	11:00:00	\N	11	CIV GADDIE	LTJG SEEPE	09:30:00
945	2023-10-13	13:30:00	CO3101	simulator	15:30:00	\N	12	CIV STERLING	LTJG WINKLER	14:00:00
946	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	1	CIV RAUENHORST	LTJG ASHER	06:00:00
947	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	2	CIV RAUENHORST	LTJG Domler	06:00:00
948	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	3	CIV RAUENHORST	LTJG FIGUEROA	06:00:00
949	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	4	CIV RAUENHORST	LTJG GRAY	06:00:00
950	2023-10-14	10:00:00	CO3102	simulator	12:00:00	\N	5	CIV SANDERS	1stLt KENT	10:30:00
951	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	6	CIV HANSCHKE	LTJG MARKERT	06:00:00
952	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	7	CIV HANSCHKE	1stLt MEIER	06:00:00
953	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	8	CIV HANSCHKE	1stLt RODTS	06:00:00
954	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	9	CIV STERLING	1stLt ROSER	06:00:00
955	2023-10-14	05:30:00	CO3102	simulator	07:30:00	\N	10	CIV STERLING	Capt ROSS	06:00:00
956	2023-10-14	10:00:00	CO3102	simulator	12:00:00	\N	11	CIV SANDERS	LTJG SEEPE	10:30:00
957	2023-10-14	10:00:00	CO3102	simulator	12:00:00	\N	12	CIV SANDERS	LTJG WINKLER	10:30:00
958	2023-10-16	05:30:00	CO3201	simulator	07:30:00	\N	1	CIV CAREY	LTJG ASHER	06:00:00
959	2023-10-16	06:30:00	CO3201	simulator	08:30:00	\N	2	CIV DOHERTY	LTJG Domler	07:00:00
960	2023-10-16	07:00:00	CO3201	simulator	09:00:00	\N	3	CIV SAYLOR	LTJG FIGUEROA	07:30:00
961	2023-10-16	09:00:00	CO3201	simulator	11:00:00	\N	4	CIV YOSKOVICH	LTJG GRAY	09:30:00
962	2023-10-16	10:00:00	CO3201	simulator	12:00:00	\N	5	Maj VALKO	1stLt KENT	10:30:00
963	2023-10-16	12:30:00	CO3201	simulator	14:30:00	\N	6	Maj VALKO	LTJG MARKERT	13:00:00
964	2023-10-16	10:30:00	CO3201	simulator	12:30:00	\N	7	CIV GIANAKOS	1stLt MEIER	11:00:00
965	2023-10-16	17:30:00	CO3201	simulator	19:30:00	\N	8	CIV SIMMONS	1stLt RODTS	18:00:00
966	2023-10-16	16:30:00	CO3201	simulator	18:30:00	\N	9	CIV STCLAIR	1stLt ROSER	17:00:00
967	2023-10-16	17:00:00	CO3201	simulator	19:00:00	\N	10	CIV ROMAN	Capt ROSS	17:30:00
968	2023-10-16	19:30:00	CO3201	simulator	21:30:00	\N	12	CIV ROMAN	LTJG WINKLER	20:00:00
969	2023-10-17	06:00:00	CO3202	simulator	08:00:00	\N	1	CIV HAMMES	LTJG ASHER	06:30:00
970	2023-10-17	07:30:00	CO3202	simulator	09:30:00	\N	2	CIV GADDIE	LTJG Domler	08:00:00
971	2023-10-17	08:30:00	CO3202	simulator	10:30:00	\N	3	CIV HAMMES	LTJG FIGUEROA	09:00:00
972	2023-10-17	10:00:00	CO3202	simulator	12:00:00	\N	4	CIV TAYLOR	LTJG GRAY	10:30:00
973	2023-10-17	11:30:00	CO3202	simulator	13:30:00	\N	5	CIV HAMMES	1stLt KENT	12:00:00
974	2023-10-17	12:00:00	CO3202	simulator	14:00:00	\N	6	CIV SAYLOR	LTJG MARKERT	12:30:00
975	2023-10-17	13:30:00	CO3202	simulator	15:30:00	\N	7	CIV RAUENHORST	1stLt MEIER	14:00:00
976	2023-10-17	14:00:00	CO3202	simulator	16:00:00	\N	8	CIV SIMMONS	1stLt RODTS	14:30:00
977	2023-10-17	15:00:00	CO3202	simulator	17:00:00	\N	9	CIV GOODMAN	1stLt ROSER	15:30:00
978	2023-10-17	15:30:00	CO3202	simulator	17:30:00	\N	10	CIV POGUE	Capt ROSS	16:00:00
979	2023-10-17	17:00:00	CO3201	simulator	19:00:00	\N	11	CIV GOODMAN	LTJG SEEPE	17:30:00
980	2023-10-17	19:00:00	CO3202	simulator	21:00:00	\N	12	CIV SIMMONS	LTJG WINKLER	19:30:00
981	2023-10-18	09:30:00	EP2101	simulator	11:30:00	\N	1	CIV SIMMONS	LTJG ASHER	10:00:00
982	2023-10-18	08:30:00	EP2101	simulator	10:30:00	\N	2	CIV CARRIER	LTJG Domler	09:00:00
983	2023-10-18	12:00:00	EP2102	simulator	14:00:00	\N	2	CIV SIMMONS	LTJG Domler	12:30:00
984	2023-10-18	16:30:00	EP2102	simulator	18:30:00	\N	3	CIV WEBSTER	LTJG FIGUEROA	17:00:00
985	2023-10-18	18:00:00	EP2101	simulator	20:00:00	\N	4	CIV GOODMAN	LTJG GRAY	18:30:00
986	2023-10-18	15:30:00	EP2101	simulator	17:30:00	\N	5	CIV GOODMAN	1stLt KENT	16:00:00
987	2023-10-18	05:30:00	EP2101	simulator	07:30:00	\N	6	CIV HAMMES	LTJG MARKERT	06:00:00
988	2023-10-18	20:30:00	EP2101	simulator	22:30:00	\N	7	CIV GOODMAN	1stLt MEIER	21:00:00
989	2023-10-18	10:30:00	EP2101	simulator	12:30:00	\N	8	CIV HAMMES	1stLt RODTS	11:00:00
990	2023-10-18	14:30:00	EP2102	simulator	16:30:00	\N	8	CIV SIMMONS	1stLt RODTS	15:00:00
991	2023-10-18	12:30:00	EP2101	simulator	14:30:00	\N	9	CIV DOHERTY	1stLt ROSER	13:00:00
992	2023-10-18	12:00:00	EP2101	simulator	14:00:00	\N	10	Maj VALKO	Capt ROSS	12:30:00
993	2023-10-18	14:00:00	CO3202	simulator	16:00:00	\N	11	CIV GADDIE	LTJG SEEPE	14:30:00
994	2023-10-18	10:30:00	EP2101	simulator	12:30:00	\N	12	CIV RICHARDSON	LTJG WINKLER	11:00:00
995	2023-10-18	14:00:00	EP2102	simulator	16:00:00	\N	12	CIV WEBSTER	LTJG WINKLER	14:30:00
996	2023-10-19	11:00:00	EP2102	simulator	13:00:00	\N	1	CIV CAREY	LTJG ASHER	11:30:00
997	2023-10-19	14:30:00	EP2103	simulator	16:30:00	\N	1	CIV POGUE	LTJG ASHER	15:00:00
998	2023-10-19	05:30:00	EP2103	simulator	07:30:00	\N	2	CIV SAYLOR	LTJG Domler	06:00:00
999	2023-10-19	10:00:00	EP2104	simulator	12:00:00	\N	2	CIV HAMMES	LTJG Domler	10:30:00
1000	2023-10-19	11:30:00	EP2102	simulator	13:30:00	\N	3	Maj VALKO	LTJG FIGUEROA	12:00:00
1001	2023-10-19	15:00:00	EP2103	simulator	17:00:00	\N	3	CIV WEBSTER	LTJG FIGUEROA	15:30:00
1002	2023-10-19	07:00:00	EP2102	simulator	09:00:00	\N	4	CIV RICHARDSON	LTJG GRAY	07:30:00
1003	2023-10-19	11:30:00	EP2103	simulator	13:30:00	\N	4	CIV DOHERTY	LTJG GRAY	12:00:00
1004	2023-10-19	16:00:00	EP2102	simulator	18:00:00	\N	5	CIV RAUENHORST	1stLt KENT	16:30:00
1005	2023-10-19	20:00:00	EP2103	simulator	22:00:00	\N	5	CIV WEBSTER	1stLt KENT	20:30:00
1006	2023-10-19	12:30:00	EP2102	simulator	14:30:00	\N	6	CIV HANSCHKE	LTJG MARKERT	13:00:00
1007	2023-10-19	15:30:00	EP2103	simulator	17:30:00	\N	6	CIV STCLAIR	LTJG MARKERT	16:00:00
1008	2023-10-19	06:30:00	EP2102	simulator	08:30:00	\N	7	CIV DOHERTY	1stLt MEIER	07:00:00
1009	2023-10-19	10:30:00	EP2103	simulator	12:30:00	\N	7	CIV HANSCHKE	1stLt MEIER	11:00:00
1010	2023-10-19	08:00:00	EP2103	simulator	10:00:00	\N	8	CIV HANSCHKE	1stLt RODTS	08:30:00
1011	2023-10-19	12:30:00	EP2104	simulator	14:30:00	\N	8	CIV WEBSTER	1stLt RODTS	13:00:00
1012	2023-10-19	14:00:00	EP2102	simulator	16:00:00	\N	9	Maj VALKO	1stLt ROSER	14:30:00
1013	2023-10-19	18:30:00	EP2103	simulator	20:30:00	\N	9	CIV GADDIE	1stLt ROSER	19:00:00
1014	2023-10-19	14:30:00	EP2102	simulator	16:30:00	\N	10	CIV RICHARDSON	Capt ROSS	15:00:00
1015	2023-10-19	19:30:00	EP2103	simulator	21:30:00	\N	10	CIV POGUE	Capt ROSS	20:00:00
1016	2023-10-19	17:00:00	EP2101	simulator	19:00:00	\N	11	CIV POGUE	LTJG SEEPE	17:30:00
1017	2023-10-19	20:30:00	EP2102	simulator	22:30:00	\N	11	CIV RAUENHORST	LTJG SEEPE	21:00:00
1018	2023-10-19	13:00:00	EP2103	simulator	15:00:00	\N	12	CIV GIANAKOS	LTJG WINKLER	13:30:00
1019	2023-10-19	16:30:00	EP2104	simulator	18:30:00	\N	12	CIV YOSKOVICH	LTJG WINKLER	17:00:00
1020	2023-10-20	06:00:00	EP2104	simulator	08:00:00	\N	1	CIV TAYLOR	LTJG ASHER	06:30:00
1021	2023-10-20	06:30:00	AM SDO	duty	13:00:00	\N	2	LTJG DOMLER	\N	\N
1022	2023-10-20	09:00:00	EP2104	simulator	11:00:00	\N	3	CIV FARLEY	LTJG FIGUEROA	09:30:00
1023	2023-10-20	10:30:00	EP2104	simulator	12:30:00	\N	4	CIV CARRIER	LTJG GRAY	11:00:00
1024	2023-10-20	10:30:00	EP2104	simulator	12:30:00	\N	5	CIV GIANAKOS	1stLt KENT	11:00:00
1025	2023-10-20	12:00:00	EP2104	simulator	14:00:00	\N	6	CIV GOODMAN	LTJG MARKERT	12:30:00
1026	2023-10-20	08:00:00	EP2104	simulator	10:00:00	\N	7	CIV GIANAKOS	1stLt MEIER	08:30:00
1027	2023-10-20	19:15:00	IWO	duty	06:30:00	\N	8	1stLt RODTS	\N	\N
1028	2023-10-20	14:30:00	EP2104	simulator	16:30:00	\N	9	CIV YOSKOVICH	1stLt ROSER	15:00:00
1029	2023-10-20	15:00:00	EP2104	simulator	17:00:00	\N	10	CIV ROMAN	Capt ROSS	15:30:00
1030	2023-10-20	11:30:00	EP2104	simulator	13:30:00	\N	11	CIV GADDIE	LTJG SEEPE	12:00:00
1031	2023-10-20	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	12	LTJG WINKLER	\N	\N
1032	2023-10-21	18:00:00	PM IWO	duty	06:00:00	\N	1	LTJG ASHER	\N	\N
1033	2023-10-21	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	2	LTJG DOMLER	\N	\N
1034	2023-10-21	06:00:00	AM IWO	duty	18:00:00	\N	3	LTJG FIGUEROA	\N	\N
1035	2023-10-22	18:00:00	PM IWO	duty	06:00:00	\N	6	LTJG MARKERT	\N	\N
1036	2023-10-23	07:30:00	TR3101	simulator	09:30:00	\N	1	CIV WINKLER	LTJG ASHER	08:00:00
1037	2023-10-23	06:00:00	TR3101	simulator	08:00:00	\N	2	CIV HAMMES	LTJG Domler	06:30:00
1038	2023-10-23	07:00:00	TR3101	simulator	09:00:00	\N	3	CIV SIMMONS	LTJG FIGUEROA	07:30:00
1039	2023-10-23	08:30:00	TR3101	simulator	10:30:00	\N	4	CIV HAMMES	LTJG GRAY	09:00:00
1040	2023-10-23	14:30:00	TR3101	simulator	16:30:00	\N	5	CIV SIMMONS	1stLt KENT	15:00:00
1041	2023-10-23	10:00:00	TR3101	simulator	12:00:00	\N	6	CIV WINKLER	LTJG MARKERT	10:30:00
1042	2023-10-23	10:30:00	TR3101	simulator	12:30:00	\N	7	CIV GIANAKOS	1stLt MEIER	11:00:00
1043	2023-10-23	11:00:00	TR3101	simulator	13:00:00	\N	8	CIV SANDERS	1stLt RODTS	11:30:00
1044	2023-10-23	12:30:00	TR3101	simulator	14:30:00	\N	9	CIV HANSCHKE	1stLt ROSER	13:00:00
1045	2023-10-23	16:00:00	TR3101	simulator	18:00:00	\N	10	CIV AUSBROOKS	Capt ROSS	16:30:00
1046	2023-10-23	11:30:00	EP2104	simulator	13:30:00	\N	11	CIV GADDIE	LTJG SEEPE	12:00:00
1047	2023-10-23	13:00:00	TR3101	simulator	15:00:00	\N	12	CIV WEBSTER	LTJG WINKLER	13:30:00
1048	2023-10-24	10:00:00	TR3102	simulator	12:00:00	\N	1	CIV CARRIER	LTJG ASHER	10:30:00
1049	2023-10-24	05:30:00	TR3102	simulator	07:30:00	\N	2	CIV RAUENHORST	LTJG Domler	06:00:00
1050	2023-10-24	11:30:00	TR3102	simulator	13:30:00	\N	3	CIV YOSKOVICH	LTJG FIGUEROA	12:00:00
1051	2023-10-24	12:00:00	TR3102	simulator	14:00:00	\N	4	CIV KNIGHT	LTJG GRAY	12:30:00
1052	2023-10-24	12:30:00	TR3102	simulator	14:30:00	\N	5	CIV CARRIER	1stLt KENT	13:00:00
1053	2023-10-24	14:00:00	TR3101	simulator	16:00:00	\N	6	CIV YOSKOVICH	LTJG MARKERT	14:30:00
1054	2023-10-24	14:30:00	TR3102	simulator	16:30:00	\N	7	CIV CAREY	1stLt MEIER	15:00:00
1055	2023-10-24	15:30:00	TR3102	simulator	17:30:00	\N	8	CIV GADDIE	1stLt RODTS	16:00:00
1056	2023-10-24	17:00:00	TR3102	simulator	19:00:00	\N	9	CIV CAREY	1stLt ROSER	17:30:00
1057	2023-10-24	15:00:00	TR3102	simulator	17:00:00	\N	10	CIV WEBSTER	Capt ROSS	15:30:00
1058	2023-10-24	18:00:00	TR3101	simulator	20:00:00	\N	11	CIV ROMAN	LTJG SEEPE	18:30:00
1059	2023-10-24	19:30:00	TR3102	simulator	21:30:00	\N	12	CIV FARLEY	LTJG WINKLER	20:00:00
1060	2023-10-25	06:00:00	TR3103	simulator	08:00:00	\N	1	CIV STCLAIR	LTJG ASHER	06:30:00
1061	2023-10-25	11:00:00	TR3103	simulator	13:00:00	\N	2	CIV SIMMONS	LTJG Domler	11:30:00
1062	2023-10-25	10:00:00	TR3103	simulator	12:00:00	\N	3	CIV RICHARDSON	LTJG FIGUEROA	10:30:00
1063	2023-10-25	12:00:00	TR3103	simulator	14:00:00	\N	4	CIV KNIGHT	LTJG GRAY	12:30:00
1064	2023-10-25	13:30:00	TR3103	simulator	15:30:00	\N	5	CIV GADDIE	1stLt KENT	14:00:00
1065	2023-10-25	19:30:00	TR3102	simulator	21:30:00	\N	6	CIV SIMMONS	LTJG MARKERT	20:00:00
1066	2023-10-25	20:30:00	TR3103	simulator	22:30:00	\N	7	CIV GADDIE	1stLt MEIER	21:00:00
1067	2023-10-25	16:30:00	TR3103	simulator	18:30:00	\N	8	CIV ROMAN	1stLt RODTS	17:00:00
1068	2023-10-25	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	9	1stLt ROSER	\N	\N
1069	2023-10-25	07:00:00	TR3103	simulator	09:00:00	\N	10	CIV KNIGHT	Capt ROSS	07:30:00
1070	2023-10-25	17:30:00	TR3102	simulator	19:30:00	\N	11	CIV POGUE	LTJG SEEPE	18:00:00
1071	2023-10-25	15:30:00	TR3103	simulator	17:30:00	\N	12	CIV WEBSTER	LTJG WINKLER	16:00:00
1072	2023-10-31	10:00:00	TR3107	simulator	12:00:00	\N	1	CIV HEIMANN	LTJG ASHER	10:30:00
1073	2023-10-31	15:30:00	TR3108	simulator	17:30:00	\N	1	CIV MEACHUM	LTJG ASHER	16:00:00
1074	2023-10-31	10:30:00	TR3107	simulator	12:30:00	\N	2	CIV GIANAKOS	LTJG Domler	11:00:00
1075	2023-10-31	14:00:00	TR3108	simulator	16:00:00	\N	2	CIV POGUE	LTJG Domler	14:30:00
1076	2023-10-31	14:30:00	TR3107	simulator	16:30:00	\N	3	CIV GOODMAN	LTJG FIGUEROA	15:00:00
1077	2023-10-31	20:30:00	TR3108	simulator	22:30:00	\N	3	CIV MEACHUM	LTJG FIGUEROA	21:00:00
1078	2023-10-31	06:00:00	TR3104	simulator	08:00:00	\N	4	CIV HAMMES	LTJG GRAY	06:30:00
1079	2023-10-31	11:30:00	TR3105	simulator	13:30:00	\N	4	CIV STCLAIR	LTJG GRAY	12:00:00
1080	2023-10-31	13:30:00	TR3106	simulator	15:30:00	\N	5	CIV YOSKOVICH	1stLt KENT	14:00:00
1081	2023-10-31	18:00:00	TR3107	simulator	20:00:00	\N	5	CIV MEACHUM	1stLt KENT	18:30:00
1082	2023-10-31	06:30:00	TR3105	simulator	08:30:00	\N	6	CIV STCLAIR	LTJG MARKERT	07:00:00
1083	2023-10-31	10:30:00	TR3106	simulator	12:30:00	\N	6	CIV ROMAN	LTJG MARKERT	11:00:00
1084	2023-10-31	07:00:00	TR3105	simulator	09:00:00	\N	7	CIV GOODMAN	1stLt MEIER	07:30:00
1085	2023-10-31	12:00:00	TR3106	simulator	14:00:00	\N	7	CIV GOODMAN	1stLt MEIER	12:30:00
1086	2023-10-31	16:00:00	TR3107	simulator	18:00:00	\N	8	CIV TAYLOR	1stLt RODTS	16:30:00
1087	2023-10-31	07:30:00	TR3105	simulator	09:30:00	\N	9	CIV HEIMANN	1stLt ROSER	08:00:00
1088	2023-10-31	08:00:00	TR3105	simulator	10:00:00	\N	10	CIV ROMAN	Capt ROSS	08:30:00
1089	2023-10-31	13:00:00	TR3106	simulator	15:00:00	\N	10	CIV MEACHUM	Capt ROSS	13:30:00
1090	2023-10-31	07:00:00	TR3105	simulator	09:00:00	\N	11	CIV DOHERTY	LTJG SEEPE	07:30:00
1091	2023-10-31	11:00:00	TR3106	simulator	13:00:00	\N	11	CIV HAMMES	LTJG SEEPE	11:30:00
1092	2023-10-31	17:30:00	TR3107	simulator	19:30:00	\N	12	CIV RICHARDSON	LTJG WINKLER	18:00:00
1093	2023-11-01	19:30:00	TR3109	simulator	21:30:00	\N	1	CIV MEACHUM	LTJG ASHER	20:00:00
1094	2023-11-01	16:30:00	TR3109	simulator	18:30:00	\N	2	CIV MUELLER	LTJG Domler	17:00:00
1095	2023-11-01	17:30:00	TR3109	simulator	19:30:00	\N	3	CIV CAREY	LTJG FIGUEROA	18:00:00
1096	2023-11-01	06:00:00	TR3106	simulator	08:00:00	\N	4	CIV HAMMES	LTJG GRAY	06:30:00
1097	2023-11-01	10:00:00	TR3107	simulator	12:00:00	\N	4	CIV HANSCHKE	LTJG GRAY	10:30:00
1098	2023-11-01	17:00:00	TR3108	simulator	19:00:00	\N	5	CIV MEACHUM	1stLt KENT	17:30:00
1099	2023-11-01	15:00:00	TR3107	simulator	17:00:00	\N	6	CIV KNIGHT	LTJG MARKERT	15:30:00
1100	2023-11-01	19:00:00	TR3108	simulator	21:00:00	\N	6	CIV MUELLER	LTJG MARKERT	19:30:00
1101	2023-11-01	16:00:00	TR3107	simulator	18:00:00	\N	7	CIV GADDIE	1stLt MEIER	16:30:00
1102	2023-11-01	19:30:00	TR3108	simulator	21:30:00	\N	7	CIV POGUE	1stLt MEIER	20:00:00
1103	2023-11-01	07:30:00	TR3108	simulator	09:30:00	\N	8	CIV HANSCHKE	1stLt RODTS	08:00:00
1104	2023-11-01	07:00:00	TR3106	simulator	09:00:00	\N	9	CIV SANDERS	1stLt ROSER	07:30:00
1105	2023-11-01	12:00:00	TR3107	simulator	14:00:00	\N	9	CIV SANDERS	1stLt ROSER	12:30:00
1106	2023-11-01	08:00:00	TR3107	simulator	10:00:00	\N	10	CIV GOODMAN	Capt ROSS	08:30:00
1107	2023-11-01	14:00:00	TR3108	simulator	16:00:00	\N	10	CIV SIMMONS	Capt ROSS	14:30:00
1108	2023-11-01	09:00:00	TR3107	simulator	11:00:00	\N	11	CIV RAUENHORST	LTJG SEEPE	09:30:00
1109	2023-11-01	14:00:00	TR3108	simulator	16:00:00	\N	11	CIV RAUENHORST	LTJG SEEPE	14:30:00
1110	2023-11-01	18:00:00	TR3108	simulator	20:00:00	\N	12	CIV RICHARDSON	LTJG WINKLER	18:30:00
1111	2023-11-03	09:00:00	TR3204	simulator	11:00:00	\N	1	CIV RAUENHORST	LTJG ASHER	09:30:00
1112	2023-11-03	13:00:00	TR3205	simulator	15:00:00	\N	1	CIV POGUE	LTJG ASHER	13:30:00
1113	2023-11-03	05:30:00	TR3202	simulator	07:30:00	\N	2	CIV SAYLOR	LTJG Domler	06:00:00
1114	2023-11-03	09:30:00	TR3203	simulator	11:30:00	\N	2	CIV CARRIER	LTJG Domler	10:00:00
1115	2023-11-03	06:00:00	TR3202	simulator	08:00:00	\N	3	CIV SANDERS	LTJG FIGUEROA	06:30:00
1116	2023-11-03	10:00:00	TR3203	simulator	12:00:00	\N	3	CIV MUELLER	LTJG FIGUEROA	10:30:00
1117	2023-11-03	08:30:00	TR3201	simulator	10:30:00	\N	4	CIV SIMMONS	LTJG GRAY	09:00:00
1118	2023-11-03	12:00:00	TR3202	simulator	14:00:00	\N	4	CIV CARRIER	LTJG GRAY	12:30:00
1119	2023-11-03	08:00:00	TR3202	simulator	10:00:00	\N	5	CIV SAYLOR	1stLt KENT	08:30:00
1120	2023-11-03	11:30:00	TR3202	simulator	13:30:00	\N	5	CIV YOSKOVICH	1stLt KENT	12:00:00
1121	2023-11-03	11:00:00	TR3202	simulator	13:00:00	\N	6	CIV SIMMONS	LTJG MARKERT	11:30:00
1122	2023-11-03	14:30:00	TR3203	simulator	16:30:00	\N	6	CIV HANSCHKE	LTJG MARKERT	15:00:00
1123	2023-11-03	15:30:00	TR3202	simulator	17:30:00	\N	7	CIV POGUE	1stLt MEIER	16:00:00
1124	2023-11-03	20:30:00	TR3203	simulator	22:30:00	\N	7	CIV POGUE	1stLt MEIER	21:00:00
1125	2023-11-03	07:30:00	TR3202	simulator	09:30:00	\N	8	CIV MUELLER	1stLt RODTS	08:00:00
1126	2023-11-03	12:30:00	TR3203	simulator	14:30:00	\N	8	CIV GADDIE	1stLt RODTS	13:00:00
1127	2023-11-03	13:30:00	TR3201	simulator	15:30:00	\N	9	CIV SIMMONS	1stLt ROSER	14:00:00
1128	2023-11-03	17:30:00	TR3202	simulator	19:30:00	\N	9	CIV ROMAN	1stLt ROSER	18:00:00
1129	2023-11-03	10:30:00	TR3202	simulator	12:30:00	\N	10	CIV HAMMES	Capt ROSS	11:00:00
1130	2023-11-03	14:00:00	TR3203	simulator	16:00:00	\N	10	CIV STCLAIR	Capt ROSS	14:30:00
1131	2023-11-03	20:00:00	TR3108	simulator	22:00:00	\N	11	CIV GADDIE	LTJG SEEPE	20:30:00
1132	2023-11-03	14:00:00	TR3202	simulator	16:00:00	\N	12	CIV YOSKOVICH	LTJG WINKLER	14:30:00
1133	2023-11-03	18:00:00	TR3203	simulator	20:00:00	\N	12	CIV POGUE	LTJG WINKLER	18:30:00
1134	2023-11-06	12:00:00	PM SDO	duty	17:45:00	\N	1	LTJG ASHER	\N	\N
1135	2023-11-06	07:30:00	TR3204	simulator	09:30:00	\N	2	CIV HAY	LTJG DOMLER	08:00:00
1136	2023-11-06	10:00:00	TR3204	simulator	12:00:00	\N	3	CIV HAY	LTJG FIGUEROA	10:30:00
1137	2023-11-06	18:30:00	TR3203	simulator	20:30:00	\N	4	Maj VALKO	LTJG GRAY	19:00:00
1138	2023-11-06	13:00:00	TR3204	simulator	15:00:00	\N	5	CIV ROMAN	1stLt KENT	13:30:00
1139	2023-11-06	13:30:00	TR3204	simulator	15:30:00	\N	6	CIV CAREY	LTJG MARKERT	14:00:00
1140	2023-11-06	17:30:00	TR3205	simulator	19:30:00	\N	6	CIV RAUENHORST	LTJG MARKERT	18:00:00
1141	2023-11-06	14:30:00	TR3204	simulator	16:30:00	\N	7	CIV POGUE	1stLt MEIER	15:00:00
1142	2023-11-06	13:00:00	TR3204	simulator	15:00:00	\N	8	CIV YOSKOVICH	1stLt RODTS	13:30:00
1143	2023-11-06	15:00:00	TR3203	simulator	17:00:00	\N	9	CIV RAUENHORST	1stLt ROSER	15:30:00
1144	2023-11-06	15:30:00	TR3204	simulator	17:30:00	\N	10	CIV ROMAN	Capt ROSS	16:00:00
1145	2023-11-06	12:30:00	TR3109	simulator	14:30:00	\N	11	CIV RAUENHORST	LTJG SEEPE	13:00:00
1146	2023-11-06	16:00:00	TR3201	simulator	18:00:00	\N	11	Maj VALKO	LTJG SEEPE	16:30:00
1147	2023-11-06	12:30:00	TR3204	simulator	14:30:00	\N	12	CIV GADDIE	LTJG WINKLER	13:00:00
1148	2023-11-07	09:30:00	TR3206	simulator	11:30:00	\N	1	CIV TAYLOR	LTJG ASHER	10:00:00
1149	2023-11-07	07:00:00	TR3205	simulator	09:00:00	\N	2	CIV TAYLOR	LTJG Domler	07:30:00
1150	2023-11-07	06:00:00	TR3205	simulator	08:00:00	\N	3	CIV YOSKOVICH	LTJG FIGUEROA	06:30:00
1151	2023-11-07	20:30:00	TR3204	simulator	22:30:00	\N	4	CIV RAUENHORST	LTJG GRAY	21:00:00
1152	2023-11-07	06:30:00	TR3205	simulator	08:30:00	\N	5	CIV SAYLOR	1stLt KENT	07:00:00
1153	2023-11-07	11:30:00	TR3206	simulator	13:30:00	\N	6	CIV SIMMONS	LTJG MARKERT	12:00:00
1154	2023-11-07	15:00:00	TR3205	simulator	17:00:00	\N	7	CIV GOODMAN	1stLt MEIER	15:30:00
1155	2023-11-07	17:30:00	TR3205	simulator	19:30:00	\N	8	CIV GOODMAN	1stLt RODTS	18:00:00
1156	2023-11-07	20:00:00	TR3204	simulator	22:00:00	\N	10	CIV GOODMAN	Capt ROSS	20:30:00
1157	2023-11-07	09:00:00	TR3202	simulator	11:00:00	\N	11	CIV SAYLOR	LTJG SEEPE	09:30:00
1158	2023-11-07	06:00:00	AM SDO	duty	12:30:00	\N	12	LTJG WINKLER	\N	\N
1159	2023-11-08	05:30:00	AM SDO	duty	11:30:00	\N	1	LTJG ASHER	\N	\N
1160	2023-11-08	14:30:00	TR3206	simulator	16:30:00	\N	2	CIV RICHARDSON	LTJG DOMLER	15:00:00
1161	2023-11-08	19:00:00	TR3206	simulator	21:00:00	\N	3	CIV POGUE	LTJG FIGUEROA	19:30:00
1162	2023-11-08	14:00:00	TR3205	simulator	16:00:00	\N	4	CIV WINKLER	LTJG GRAY	14:30:00
1163	2023-11-08	18:00:00	TR3206	simulator	20:00:00	\N	4	CIV GOODMAN	LTJG GRAY	18:30:00
1164	2023-11-08	17:00:00	TR3206	simulator	19:00:00	\N	5	CIV RICHARDSON	1stLt KENT	17:30:00
1165	2023-11-08	11:30:00	PM SDO	duty	18:00:00	\N	6	LTJG MARKERT	\N	\N
1166	2023-11-08	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	7	1stLt MEIER	\N	\N
1167	2023-11-08	10:30:00	TR3206	simulator	12:30:00	\N	8	CIV GIANAKOS	1stLt RODTS	11:00:00
1168	2023-11-08	15:30:00	TR3207	simulator	17:30:00	\N	8	CIV GOODMAN	1stLt RODTS	16:00:00
1169	2023-11-08	09:30:00	TR3204	simulator	11:30:00	\N	9	CIV WEBSTER	1stLt ROSER	10:00:00
1170	2023-11-08	13:30:00	TR3205	simulator	15:30:00	\N	9	CIV GADDIE	1stLt ROSER	14:00:00
1171	2023-11-08	17:30:00	TR3206	simulator	19:30:00	\N	10	CIV SANDERS	Capt ROSS	18:00:00
1172	2023-11-08	09:00:00	TR3204	simulator	11:00:00	\N	11	CIV DOHERTY	LTJG SEEPE	09:30:00
1173	2023-11-08	13:00:00	TR3205	simulator	15:00:00	\N	11	CIV GOODMAN	LTJG SEEPE	13:30:00
1174	2023-11-08	10:00:00	TR3205	simulator	12:00:00	\N	12	CIV YOSKOVICH	LTJG WINKLER	10:30:00
1175	2023-11-09	07:30:00	TR3207	simulator	09:30:00	\N	1	CIV HEIMANN	LTJG ASHER	08:00:00
1176	2023-11-09	11:30:00	TR3208	simulator	13:30:00	\N	1	CIV WINKLER	LTJG ASHER	12:00:00
1177	2023-11-09	08:00:00	TR3207	simulator	10:00:00	\N	2	CIV HAMMES	LTJG DOMLER	08:30:00
1178	2023-11-09	12:00:00	TR3208	simulator	14:00:00	\N	2	CIV CARRIER	LTJG DOMLER	12:30:00
1179	2023-11-09	08:30:00	TR3207	simulator	10:30:00	\N	3	CIV CAREY	LTJG FIGUEROA	09:00:00
1180	2023-11-09	09:00:00	TR3207	simulator	11:00:00	\N	4	CIV WINKLER	LTJG GRAY	09:30:00
1181	2023-11-09	13:30:00	TR3208	simulator	15:30:00	\N	4	CIV ROSS	LTJG GRAY	14:00:00
1182	2023-11-09	14:00:00	TR3207	simulator	16:00:00	\N	5	CIV STCLAIR	1stLt KENT	14:30:00
1183	2023-11-09	19:00:00	TR3208	simulator	21:00:00	\N	5	CIV STCLAIR	1stLt KENT	19:30:00
1184	2023-11-09	16:30:00	TR3207	simulator	18:30:00	\N	6	CIV STCLAIR	LTJG MARKERT	17:00:00
1185	2023-11-09	12:00:00	TR3206	simulator	14:00:00	\N	7	CIV SIMMONS	1stLt MEIER	12:30:00
1186	2023-11-09	15:30:00	TR3207	simulator	17:30:00	\N	7	CIV RAUENHORST	1stLt MEIER	16:00:00
1187	2023-11-09	12:30:00	TR3208	simulator	14:30:00	\N	8	CIV HEIMANN	1stLt RODTS	13:00:00
1188	2023-11-09	10:00:00	TR3207	simulator	12:00:00	\N	9	CIV HEIMANN	1stLt ROSER	10:30:00
1189	2023-11-09	18:00:00	TR3207	simulator	20:00:00	\N	10	CIV RAUENHORST	Capt ROSS	18:30:00
1190	2023-11-09	07:00:00	TR3206	simulator	09:00:00	\N	11	CIV CARRIER	LTJG SEEPE	07:30:00
1191	2023-11-09	11:00:00	TR3207	simulator	13:00:00	\N	11	CIV ROSS	LTJG SEEPE	11:30:00
1192	2023-11-09	09:30:00	TR3206	simulator	11:30:00	\N	12	CIV CARRIER	LTJG WINKLER	10:00:00
1193	2023-11-09	13:00:00	TR3207	simulator	15:00:00	\N	12	CIV RAUENHORST	LTJG WINKLER	13:30:00
1194	2023-11-15	14:00:00	TR3301	simulator	16:00:00	\N	3	CIV RAUENHORST	LTJG FIGUEROA	14:30:00
1195	2023-11-15	14:30:00	TR3301	simulator	16:30:00	\N	4	CIV SIMMONS	LTJG GRAY	15:00:00
1196	2023-11-15	05:30:00	AM SDO	duty	12:30:00	\N	10	Capt ROSS	\N	\N
1197	2023-11-15	13:30:00	TR3301	simulator	15:30:00	\N	11	CIV HANSCHKE	LTJG SEEPE	14:00:00
1198	2023-11-16	13:30:00	TR3301	simulator	15:30:00	\N	1	CIV FARLEY	LTJG ASHER	14:00:00
1199	2023-11-16	15:00:00	TR3301	simulator	17:00:00	\N	2	CIV RAUENHORST	LTJG DOMLER	15:30:00
1200	2023-11-16	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
1201	2023-11-16	14:00:00	TR3301	simulator	16:00:00	\N	7	CIV STCLAIR	1stLt MEIER	14:30:00
1202	2023-11-16	16:00:00	TR3301	simulator	18:00:00	\N	10	CIV GADDIE	Capt ROSS	16:30:00
1203	2023-11-16	05:30:00	AM SDO	duty	12:30:00	\N	11	LTJG SEEPE	\N	\N
1204	2023-11-17	19:00:00	TR3302	simulator	21:00:00	\N	1	CIV CAREY	LTJG ASHER	19:30:00
1205	2023-11-17	20:00:00	TR3302	simulator	22:00:00	\N	2	CIV GOODMAN	LTJG Domler	20:30:00
1206	2023-11-17	19:00:00	TR3301	simulator	21:00:00	\N	3	CIV GADDIE	LTJG FIGUEROA	19:30:00
1207	2023-11-17	05:30:00	AM SDO	duty	12:00:00	\N	7	1stLt MEIER	\N	\N
1208	2023-11-17	09:00:00	TR3301	simulator	11:00:00	\N	8	CIV GIBSON	1stLt RODTS	09:30:00
1209	2023-11-17	10:30:00	TR3301	simulator	12:30:00	\N	9	Maj VALKO	1stLt ROSER	11:00:00
1210	2023-11-17	12:00:00	PM SDO	duty	18:15:00	\N	11	LTJG SEEPE	\N	\N
1211	2023-11-17	18:00:00	TR3301	simulator	20:00:00	\N	12	Maj VALKO	LTJG WINKLER	18:30:00
1212	2023-11-18	08:30:00	TR2101	simulator	10:30:00	BRF 0830	1	CIV STCLAIR	LTJG ASHER	09:00:00
1213	2023-11-18	08:30:00	TR3303	simulator	10:30:00	BRF 0830	2	CIV STCLAIR	LTJG DOMLER	10:30:00
1214	2023-11-18	08:30:00	TR3302	simulator	10:30:00	BRF 0830	3	CIV FARLEY	LTJG FIGUEROA	09:00:00
1215	2023-11-18	08:30:00	TR3303	simulator	10:30:00	BRF 0830	3	CIV FARLEY	LTJG FIGUEROA	10:30:00
1216	2023-11-18	08:30:00	TR3303	simulator	10:30:00	BRF 0830	4	CIV STCLAIR	LTJG GRAY	12:00:00
1217	2023-11-18	12:30:00	TR3302	simulator	14:30:00	BRF 1230	4	CIV SANDERS	LTJG GRAY	13:00:00
1218	2023-11-18	12:30:00	TR3302	simulator	14:30:00	BRF 1230	7	CIV SANDERS	1stLt MEIER	14:30:00
1219	2023-11-18	12:30:00	TR3302	simulator	14:30:00	BRF 1230	8	CIV GOODMAN	1stLt RODTS	13:00:00
1220	2023-11-18	12:30:00	TR3301	simulator	14:30:00	BRF 1230	9	CIV GOODMAN	1stLt ROSER	14:30:00
1221	2023-11-18	12:30:00	TR3302	simulator	14:30:00	BRF 1230	10	CIV GOODMAN	Capt ROSS	16:00:00
1222	2023-11-18	08:30:00	TR3302	simulator	10:30:00	BRF 0830	11	CIV FARLEY	LTJG SEEPE	12:00:00
1223	2023-11-18	12:30:00	TR3302	simulator	14:30:00	BRF 1230	12	CIV SANDERS	LTJG WINKLER	16:00:00
1224	2023-11-20	12:30:00	TR3303	simulator	14:30:00	\N	1	CIV GOODMAN	LTJG ASHER	13:00:00
1225	2023-11-20	15:00:00	TR2102	simulator	17:00:00	\N	1	CIV GOODMAN	LTJG ASHER	15:30:00
1226	2023-11-20	07:00:00	TR2101	simulator	09:00:00	\N	2	CIV AUSBROOKS	LTJG DOMLER	07:30:00
1227	2023-11-20	13:30:00	PM SDO	duty	18:15:00	\N	3	LTJG FIGUEROA	\N	\N
1228	2023-11-20	06:00:00	TR2101	simulator	08:00:00	\N	3	CIV SIMMONS	LTJG FIGUEROA	06:30:00
1229	2023-11-20	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
1230	2023-11-20	19:30:00	TR2101	simulator	21:30:00	\N	4	CIV FARLEY	LTJG GRAY	20:00:00
1231	2023-11-20	07:30:00	TR3301	simulator	09:30:00	\N	5	CIV GOODMAN	1stLt KENT	08:00:00
1232	2023-11-20	07:30:00	TR3301	simulator	09:30:00	\N	6	CIV HEIMANN	LTJG MARKERT	08:00:00
1233	2023-11-20	20:30:00	TR3303	simulator	22:30:00	\N	7	Maj VALKO	1stLt MEIER	21:00:00
1234	2023-11-20	07:00:00	TR3302	simulator	09:00:00	\N	9	CIV CARRIER	1stLt ROSER	07:30:00
1235	2023-11-20	20:00:00	TR3303	simulator	22:00:00	\N	11	CIV RICHARDSON	LTJG SEEPE	20:30:00
1236	2023-11-21	16:00:00	TR3302	simulator	18:00:00	\N	5	CIV RICHARDSON	1stLt KENT	16:30:00
1237	2023-11-21	19:30:00	TR3303	simulator	21:30:00	\N	5	CIV GADDIE	1stLt KENT	20:00:00
1238	2023-11-21	20:00:00	TR3302	simulator	22:00:00	\N	6	CIV CAREY	LTJG MARKERT	20:30:00
1239	2023-11-21	11:30:00	PM SDO	duty	16:15:00	\N	9	1stLt ROSER	\N	\N
1240	2023-11-21	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	12	LTJG WINKLER	\N	\N
1241	2023-11-22	18:30:00	TR3303	simulator	20:30:00	\N	12	Maj VALKO	LTJG WINKLER	19:00:00
1242	2023-11-27	06:30:00	AM SDO	duty	13:30:00	\N	2	LTJG DOMLER	\N	\N
1243	2023-11-27	13:30:00	PM SDO	duty	20:15:00	\N	3	LTJG FIGUEROA	\N	\N
1244	2023-11-27	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
1245	2023-11-27	09:30:00	TR2101	simulator	11:30:00	\N	5	CIV SANDERS	1stLt KENT	10:00:00
1246	2023-11-27	08:30:00	TR3303	simulator	10:30:00	\N	6	CIV KNIGHT	LTJG MARKERT	09:00:00
1247	2023-11-27	15:30:00	TR2101	simulator	17:30:00	\N	7	CIV DOHERTY	1stLt MEIER	16:00:00
1248	2023-11-27	17:30:00	TR2101	simulator	19:30:00	\N	8	CIV GADDIE	1stLt RODTS	18:00:00
1249	2023-11-27	17:00:00	TR3303	simulator	19:00:00	\N	9	CIV MUELLER	1stLt ROSER	17:30:00
1250	2023-11-28	06:00:00	AM SDO	duty	14:15:00	\N	1	LTJG ASHER	\N	\N
1251	2023-11-28	10:00:00	TR2102	simulator	12:00:00	\N	2	CIV KNIGHT	LTJG Domler	10:30:00
1252	2023-11-28	12:30:00	TR2102	simulator	14:30:00	\N	3	CIV KNIGHT	LTJG FIGUEROA	13:00:00
1253	2023-11-28	14:30:00	TR2102	simulator	16:30:00	\N	5	CIV GOODMAN	1stLt KENT	15:00:00
1254	2023-11-28	15:00:00	TR2101	simulator	17:00:00	\N	6	CIV KNIGHT	LTJG MARKERT	15:30:00
1255	2023-11-28	19:00:00	TR2102	simulator	21:00:00	\N	6	CIV CAREY	LTJG MARKERT	19:30:00
1256	2023-11-28	14:30:00	TR2102	simulator	16:30:00	\N	7	CIV SIMMONS	1stLt MEIER	15:00:00
1257	2023-11-28	15:30:00	TR2102	simulator	17:30:00	\N	8	CIV WEBSTER	1stLt RODTS	16:00:00
1258	2023-11-28	20:00:00	TR2102	simulator	22:00:00	\N	9	CIV KNIGHT	1stLt ROSER	20:30:00
1259	2023-11-28	14:00:00	TR2101	simulator	16:00:00	\N	10	CIV CAREY	Capt ROSS	14:30:00
1260	2023-11-28	18:00:00	TR2102	simulator	20:00:00	\N	10	CIV WEBSTER CIV ROMAN	Capt ROSS	18:30:00
1261	2023-11-28	16:00:00	TR2102	simulator	18:00:00	\N	11	CIV POGUE	LTJG SEEPE	16:30:00
1262	2023-11-29	07:30:00	TR3304	simulator	09:30:00	\N	1	CIV GOODMAN	LTJG ASHER	08:00:00
1263	2023-11-29	09:30:00	TR3304	simulator	11:30:00	\N	2	CIV CARRIER	LTJG Domler	10:00:00
1264	2023-11-29	13:30:00	TR3304	simulator	15:30:00	\N	3	CIV RICHARDSON	LTJG FIGUEROA	14:00:00
1265	2023-11-29	11:30:00	TR3304	simulator	13:30:00	\N	4	CIV FARLEY	LTJG GRAY	12:00:00
1266	2023-11-29	06:00:00	AM SDO	duty	14:15:00	\N	5	1stLt KENT	\N	\N
1267	2023-11-29	14:15:00	PM SDO	duty	22:45:00	\N	6	LTJG MARKERT	\N	\N
1268	2023-11-29	16:00:00	TR3304	simulator	18:00:00	\N	7	CIV RICHARDSON	1stLt MEIER	16:30:00
1269	2023-11-29	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	8	1stLt RODTS	\N	\N
1270	2023-11-29	13:30:00	EP2102	simulator	15:30:00	\N	9	CIV POGUE	1stLt ROSER	14:00:00
1271	2023-11-29	19:30:00	TR3304	simulator	21:30:00	\N	10	CIV CAREY CIV KNIGHT	Capt ROSS	20:00:00
1272	2023-11-29	12:30:00	TR3304	simulator	14:30:00	\N	12	CIV ROMAN	LTJG WINKLER	13:00:00
1273	2023-12-01	05:30:00	TR3306	simulator	07:30:00	\N	1	CIV YOSKOVICH	LTJG ASHER	06:00:00
1274	2023-12-01	10:30:00	TR3307	simulator	12:30:00	\N	1	CIV YOSKOVICH	LTJG ASHER	11:00:00
1275	2023-12-01	06:00:00	TR3306	simulator	08:00:00	\N	2	CIV KNIGHT	LTJG Domler	06:30:00
1276	2023-12-01	11:00:00	TR3307	simulator	13:00:00	\N	2	CIV KNIGHT	LTJG Domler	11:30:00
1277	2023-12-01	12:00:00	TR3306	simulator	14:00:00	\N	3	CIV CARRIER	LTJG FIGUEROA	12:30:00
1278	2023-12-01	20:30:00	TR3307	simulator	22:30:00	\N	3	CIV FARLEY	LTJG FIGUEROA	21:00:00
1279	2023-12-01	18:00:00	IWO	duty	06:00:00	\N	4	ENS GRAY	\N	\N
1280	2023-12-01	08:00:00	TR3305	simulator	10:00:00	\N	5	CIV YOSKOVICH	1stLt KENT	08:30:00
1281	2023-12-01	07:00:00	TR3305	simulator	09:00:00	\N	6	CIV CARRIER	LTJG MARKERT	07:30:00
1282	2023-12-01	12:30:00	TR3306	simulator	14:30:00	\N	6	CIV RAUENHORST	LTJG MARKERT	13:00:00
1283	2023-12-01	09:30:00	TR3306	simulator	11:30:00	\N	7	CIV CARRIER	1stLt MEIER	10:00:00
1284	2023-12-01	10:00:00	TR3306	simulator	12:00:00	\N	7	CIV RAUENHORST	1stLt MEIER	10:30:00
1285	2023-12-01	19:30:00	TR3307	simulator	21:30:00	\N	7	CIV WEBSTER	1stLt MEIER	20:00:00
1286	2023-12-01	11:30:00	TR3305	simulator	13:30:00	\N	8	CIV ROMAN	1stLt RODTS	12:00:00
1287	2023-12-01	08:30:00	TR3305	simulator	10:30:00	\N	9	CIV KNIGHT	1stLt ROSER	09:00:00
1288	2023-12-01	18:00:00	TR3306	simulator	20:00:00	\N	9	CIV FARLEY	1stLt ROSER	18:30:00
1289	2023-12-01	06:30:00	TR3306	simulator	08:30:00	\N	10	CIV ROMAN	Capt ROSS	07:00:00
1290	2023-12-01	11:00:00	TR3307	simulator	13:00:00	\N	10	CIV POGUE	Capt ROSS	11:30:00
1291	2023-12-01	07:30:00	TR3306	simulator	09:30:00	\N	11	CIV WINKLER	LTJG SEEPE	08:00:00
1292	2023-12-01	13:00:00	TR3305	simulator	15:00:00	\N	11	CIV FARLEY	LTJG SEEPE	13:30:00
1293	2023-12-03	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	5	1stLt KENT	\N	\N
1294	2023-12-03	06:00:00	AM IWO	duty	18:00:00	\N	6	LTJG MARKERT	\N	\N
1295	2023-12-04	14:00:00	TR3401	simulator	16:00:00	\N	1	CIV GADDIE	LTJG ASHER	14:30:00
1296	2023-12-04	09:00:00	TR3401	simulator	11:00:00	\N	2	CIV GADDIE	LTJG Domler	09:30:00
1297	2023-12-04	13:00:00	TR3402	simulator	15:00:00	\N	2	CIV SIMMONS	LTJG Domler	13:30:00
1298	2023-12-04	09:30:00	TR3401	simulator	11:30:00	\N	3	CIV YOSKOVICH	LTJG FIGUEROA	10:00:00
1299	2023-12-04	20:30:00	TR3306	simulator	22:30:00	\N	4	CIV KNIGHT	LTJG GRAY	21:00:00
1300	2023-12-04	15:30:00	TR3306	simulator	17:30:00	\N	5	CIV KNIGHT	1stLt KENT	16:00:00
1301	2023-12-04	08:30:00	TR3307	simulator	10:30:00	\N	6	CIV WEBSTER	LTJG MARKERT	09:00:00
1302	2023-12-04	07:30:00	TR3401	simulator	09:30:00	\N	7	CIV HEIMANN	1stLt MEIER	08:00:00
1303	2023-12-04	13:00:00	TR3402	simulator	15:00:00	\N	7	CIV KNIGHT	1stLt MEIER	13:30:00
1304	2023-12-04	07:00:00	TR3306	simulator	09:00:00	\N	8	CIV YOSKOVICH	1stLt RODTS	07:30:00
1305	2023-12-04	10:00:00	TR3306	simulator	12:00:00	\N	9	CIV HEIMANN	1stLt ROSER	10:30:00
1306	2023-12-04	11:30:00	TR3403	simulator	13:30:00	\N	10	CIV SANDERS	Capt ROSS	12:00:00
1307	2023-12-04	16:00:00	TR3402	simulator	18:00:00	\N	10	CIV RAUENHORST	Capt ROSS	16:30:00
1308	2023-12-04	06:30:00	TR3307	simulator	08:30:00	\N	11	CIV GADDIE	LTJG SEEPE	07:00:00
1309	2023-12-04	13:30:00	TR3401	simulator	15:30:00	\N	11	CIV WEBSTER	LTJG SEEPE	14:00:00
1310	2023-12-04	14:30:00	TR3306	simulator	16:30:00	\N	12	CIV YOSKOVICH	LTJG WINKLER	15:00:00
1311	2023-12-04	19:30:00	TR3307	simulator	21:30:00	\N	12	CIV STCLAIR	LTJG WINKLER	20:00:00
1312	2023-12-05	10:30:00	TR3402	simulator	12:30:00	\N	1	CIV HAMMES	LTJG ASHER	11:00:00
1313	2023-12-05	14:00:00	TR3403	simulator	16:00:00	\N	1	CIV DOHERTY	LTJG ASHER	14:30:00
1314	2023-12-05	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	2	LTJG DOMLER	\N	\N
1315	2023-12-05	08:00:00	TR3402	simulator	10:00:00	\N	3	CIV HAMMES	LTJG FIGUEROA	08:30:00
1316	2023-12-05	15:30:00	TR3307	simulator	17:30:00	\N	4	CIV GIBSON	LTJG GRAY	16:00:00
1317	2023-12-05	20:30:00	TR3401	simulator	22:30:00	\N	4	CIV SIMMONS	LTJG GRAY	21:00:00
1318	2023-12-05	16:00:00	TR3307	simulator	18:00:00	\N	5	CIV GOODMAN	1stLt KENT	16:30:00
1319	2023-12-05	20:00:00	TR3401	simulator	22:00:00	\N	5	CIV KNIGHT	1stLt KENT	20:30:00
1320	2023-12-05	18:00:00	TR3401	simulator	20:00:00	\N	6	CIV STCLAIR	LTJG MARKERT	18:30:00
1321	2023-12-05	14:00:00	PM SDO	duty	22:15:00	\N	7	1stLt MEIER	\N	\N
1322	2023-12-05	07:30:00	TR3307	simulator	09:30:00	\N	8	CIV TAYLOR	1stLt RODTS	08:00:00
1323	2023-12-05	15:30:00	TR3307	simulator	17:30:00	\N	9	CIV STCLAIR	1stLt ROSER	16:00:00
1324	2023-12-05	20:30:00	TR3401	simulator	22:30:00	\N	9	CIV STCLAIR	1stLt ROSER	21:00:00
1325	2023-12-05	14:00:00	TR3403	simulator	16:00:00	\N	10	CIV YOSKOVICH	Capt ROSS	14:30:00
1326	2023-12-05	20:30:00	TR3402	simulator	22:30:00	\N	11	CIV GIBSON	LTJG SEEPE	21:00:00
1327	2023-12-05	18:00:00	TR3401	simulator	20:00:00	\N	12	CIV GIBSON	LTJG WINKLER	18:30:00
1328	2023-12-06	13:30:00	PM SDO	duty	21:15:00	\N	1	LTJG ASHER	\N	\N
1329	2023-12-06	17:00:00	TR3403	simulator	19:00:00	\N	2	CIV STCLAIR	LTJG DOMLER	17:30:00
1330	2023-12-06	05:30:00	TR3403	simulator	07:30:00	\N	3	CIV HAMMES	LTJG FIGUEROA	06:00:00
1331	2023-12-06	16:00:00	TR3402	simulator	18:00:00	\N	4	CIV DOHERTY	LTJG GRAY	16:30:00
1332	2023-12-06	20:00:00	TR3403	simulator	22:00:00	\N	4	CIV POGUE	LTJG GRAY	20:30:00
1333	2023-12-06	11:00:00	TR3402	simulator	13:00:00	\N	5	Maj VALKO	1stLt KENT	11:30:00
1334	2023-12-06	16:00:00	TR3403	simulator	18:00:00	\N	5	CIV KNIGHT	1stLt KENT	16:30:00
1335	2023-12-06	17:00:00	TR3402	simulator	19:00:00	\N	6	CIV GOODMAN	LTJG MARKERT	17:30:00
1336	2023-12-06	20:30:00	TR3403	simulator	22:30:00	\N	6	CIV GIBSON	LTJG MARKERT	21:00:00
1337	2023-12-06	19:00:00	TR3403	simulator	21:00:00	\N	7	CIV SANDERS	1stLt MEIER	19:30:00
1338	2023-12-06	06:30:00	TR3401	simulator	08:30:00	\N	8	CIV ROMAN	1stLt RODTS	07:00:00
1339	2023-12-06	10:30:00	TR3402	simulator	12:30:00	\N	8	CIV HAMMES	1stLt RODTS	11:00:00
1340	2023-12-06	18:00:00	TR3402	simulator	20:00:00	\N	9	CIV GIBSON	1stLt ROSER	18:30:00
1341	2023-12-06	05:30:00	AM SDO	duty	13:30:00	\N	10	Capt ROSS	\N	\N
1342	2023-12-06	19:30:00	TR3403	simulator	21:30:00	\N	11	CIV GOODMAN	LTJG SEEPE	20:00:00
1343	2023-12-06	14:30:00	TR3402	simulator	16:30:00	\N	12	CIV STCLAIR	LTJG WINKLER	15:00:00
1344	2023-12-07	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	6	LTJG MARKERT	\N	\N
1345	2023-12-07	11:30:00	TR3403	simulator	13:30:00	\N	8	CIV WEBSTER	1stLt RODTS	12:00:00
1346	2023-12-07	08:30:00	TR3403	simulator	10:30:00	\N	9	CIV CAREY	1stLt ROSER	09:00:00
1347	2023-12-07	07:00:00	TR3403	simulator	09:00:00	\N	12	CIV RAUENHORST	LTJG WINKLER	07:30:00
1348	2023-12-08	12:00:00	TR6101	simulator	14:00:00	\N	1	LTJG ASHER	\N	12:30:00
1349	2023-12-08	12:00:00	TR6101	simulator	14:00:00	\N	2	LTJG DOMLER	\N	12:30:00
1350	2023-12-08	12:00:00	TR6101	simulator	14:00:00	\N	3	LTJG FIGUEROA	\N	12:30:00
1351	2023-12-08	12:00:00	TR6101	simulator	14:00:00	\N	4	LTJG GRAY	\N	12:30:00
1352	2023-12-08	12:00:00	TR6101	simulator	14:00:00	\N	5	1stLt KENT	\N	12:30:00
1353	2023-12-08	11:45:00	TR4101	flight	14:57:00	2HR BRIEF	6	CIV STAGNER	LTJG MARKERT	13:45:00
1354	2023-12-08	06:15:00	TR4101	flight	09:27:00	2HR BRIEF	7	LCDR RIGGS	1stLt MEIER	08:15:00
1355	2023-12-08	08:45:00	TR4101	flight	11:57:00	2HR BRIEF	8	CIV HUDOCK	1stLt RODTS	10:45:00
1356	2023-12-08	09:15:00	TR4101	flight	12:27:00	2HR BRIEF	9	LTJG ROSSIELLO	Capt ROSER	11:15:00
1357	2023-12-08	07:15:00	TR4101	flight	10:27:00	2HR BRIEF	10	CIV STAGNER	Capt ROSS	09:15:00
1358	2023-12-08	05:15:00	TR4101	flight	08:27:00	2HR BRIEF	11	CDR CLAY	LTJG SEEPE	07:15:00
1359	2023-12-08	18:00:00	IWO	duty	06:00:00	\N	12	LTJG WINKLER	\N	\N
1360	2023-12-11	13:00:00	TR4102	flight	15:57:00	\N	1	LCDR TAYLOR	LTJG ASHER	14:45:00
1361	2023-12-11	10:30:00	TR4102	flight	13:27:00	\N	2	CIV HUDOCK	LTJG DOMLER	12:15:00
1362	2023-12-11	10:00:00	TR4102	flight	12:57:00	\N	3	CIV BRUCE	LTJG FIGUEROA	11:45:00
1363	2023-12-11	10:00:00	TR4102	flight	12:57:00	\N	4	LCDR JOHNSON	LTJG GRAY	11:45:00
1364	2023-12-11	09:00:00	TR4102	flight	11:57:00	\N	5	CDR WALKER	1stLt KENT	10:45:00
1365	2023-12-11	11:30:00	TR6101	simulator	13:30:00	\N	6	LTJG MARKERT	\N	12:00:00
1366	2023-12-11	11:30:00	TR6101	simulator	13:30:00	\N	7	1stLt MEIER	\N	12:00:00
1367	2023-12-11	11:30:00	TR6101	simulator	13:30:00	\N	8	1stLt RODTS	\N	12:00:00
1368	2023-12-11	11:30:00	TR6101	simulator	13:30:00	\N	9	Capt ROSER	\N	12:00:00
1369	2023-12-11	07:00:00	TR4102	flight	09:57:00	\N	10	LCDR TAYLOR	Capt ROSS	08:45:00
1370	2023-12-11	13:00:00	TR4102	flight	15:57:00	\N	12	LTJG SMITH	LTJG WINKLER	14:45:00
1371	2023-12-12	11:30:00	TR4103	flight	14:27:00	\N	1	LCDR TAYLOR	LTJG ASHER	13:15:00
1372	2023-12-12	10:30:00	TR4103	flight	13:27:00	\N	2	CIV BRUCE	LTJG DOMLER	12:15:00
1373	2023-12-12	05:30:00	TR4103	flight	08:27:00	\N	3	CIV BRUCE	LTJG FIGUEROA	07:15:00
1374	2023-12-12	09:00:00	TR4103	flight	11:57:00	\N	4	Maj LINDHOLM	LTJG GRAY	10:45:00
1375	2023-12-12	07:30:00	TR4103	flight	10:27:00	\N	5	CIV RAY	1stLt KENT	09:15:00
1376	2023-12-12	12:30:00	TR4102	flight	15:27:00	\N	6	CIV HUDOCK	LTJG MARKERT	14:15:00
1377	2023-12-12	09:00:00	TR4102	flight	11:57:00	\N	7	Capt SEVY	1stLt MEIER	10:45:00
1378	2023-12-12	10:00:00	TR4102	flight	12:57:00	\N	8	CIV STAGNER	1stLt RODTS	11:45:00
1379	2023-12-12	06:30:00	TR4102	flight	09:27:00	\N	9	LCDR TAYLOR	Capt ROSER	08:15:00
1380	2023-12-12	15:30:00	TR6101	simulator	17:30:00	\N	10	Capt ROSS	\N	16:00:00
1381	2023-12-12	15:30:00	TR6101	simulator	17:30:00	\N	11	LTJG SEEPE	\N	16:00:00
1382	2023-12-12	15:30:00	TR6101	simulator	17:30:00	\N	12	LTJG WINKLER	\N	16:00:00
1383	2023-12-13	09:30:00	TR4104	flight	12:27:00	\N	1	LCDR WALLACE	LTJG ASHER	11:15:00
1384	2023-12-13	10:30:00	TR4103	flight	13:27:00	\N	2	LtCol MINICK	LTJG DOMLER	12:15:00
1385	2023-12-13	11:30:00	TR4104	flight	14:27:00	\N	3	CIV VOHDEN	LTJG FIGUEROA	13:15:00
1386	2023-12-13	11:30:00	TR4104	flight	14:27:00	\N	4	CIV BRUCE	LTJG GRAY	13:15:00
1387	2023-12-13	07:30:00	TR4104	flight	10:27:00	\N	5	CDR SCOTT	1stLt KENT	09:15:00
1388	2023-12-13	11:30:00	TR4103	flight	14:27:00	\N	6	CIV PANKHURST	LTJG MARKERT	13:15:00
1389	2023-12-13	07:00:00	TR4103	flight	09:57:00	\N	7	LT WILLIAMS	1stLt MEIER	08:45:00
1390	2023-12-13	06:00:00	TR4103	flight	08:57:00	\N	8	LCDR JOHNSON	1stLt RODTS	07:45:00
1391	2023-12-13	13:00:00	TR4103	flight	15:57:00	\N	9	CIV FINCH	Capt ROSER	14:45:00
1392	2023-12-13	09:00:00	TR4103	flight	11:57:00	\N	10	Capt SEVY	Capt ROSS	10:45:00
1393	2023-12-13	11:00:00	TR4102	flight	13:57:00	\N	11	LCDR JOHNSON	LTJG SEEPE	12:45:00
1394	2023-12-13	09:00:00	TR4103	flight	11:57:00	\N	12	Maj HOLSEY	LTJG WINKLER	10:45:00
1395	2023-12-14	06:00:00	TR4105	flight	08:57:00	MASS BRIEF W/ GRAY	1	LCDR BOLSTAD	LTJG ASHER	07:45:00
1396	2023-12-14	06:30:00	TR4104	flight	09:27:00	MASS BRIEF W/ FIGUEROA	2	LCDR JOHNSON	LTJG DOMLER	08:15:00
1397	2023-12-14	11:30:00	TR4104	flight	14:27:00	MASS BRIEF W/ DOMLER 0630	3	LCDR JOHNSON	LTJG FIGUEROA	13:15:00
1398	2023-12-14	10:30:00	TR4105	flight	13:27:00	MASS BRIEF W/ ASHER 0600	4	LCDR BOLSTAD	LTJG GRAY	12:15:00
1399	2023-12-14	11:30:00	TR4105	flight	14:27:00	\N	5	Capt SEVY	1stLt KENT	13:15:00
1400	2023-12-14	09:00:00	TR4104	flight	11:57:00	\N	6	LTJG ROSSIELLO	LTJG MARKERT	10:45:00
1401	2023-12-14	08:30:00	TR4104	flight	11:27:00	\N	7	CDR SCOTT	1stLt MEIER	10:15:00
1402	2023-12-14	12:00:00	TR4104	flight	14:57:00	\N	8	CDR PARSONS	1stLt RODTS	13:45:00
1403	2023-12-14	08:00:00	TR4104	flight	10:57:00	\N	9	LT KLEVEN	Capt ROSER	09:45:00
1404	2023-12-14	11:00:00	TR4104	flight	13:57:00	\N	10	ENS PIZZUTI	Capt ROSS	12:45:00
1405	2023-12-14	11:30:00	TR4103	flight	14:27:00	\N	11	CIV VOHDEN	LTJG SEEPE	13:15:00
1406	2023-12-14	11:00:00	TR4104	flight	13:57:00	\N	12	CIV PANKHURST	LTJG WINKLER	12:45:00
1407	2023-12-15	07:30:00	TR4106	flight	10:27:00	MB SEVY	1	Capt SEVY	LTJG ASHER	09:15:00
1408	2023-12-15	08:30:00	TR4105	flight	11:27:00	\N	2	CIV PANKHURST	LTJG DOMLER	10:15:00
1409	2023-12-15	07:30:00	TR4105	flight	10:27:00	MB SEVY	3	LTJG ROSSIELLO	LTJG FIGUEROA	09:15:00
1410	2023-12-15	11:30:00	TR4106	flight	14:27:00	\N	4	LTJG SMITH	LTJG GRAY	13:15:00
1411	2023-12-15	13:00:00	TR4106	flight	15:57:00	\N	5	CIV PANKHURST	1stLt KENT	14:45:00
1412	2023-12-15	12:30:00	TR4105	flight	15:27:00	\N	6	LtCol MINICK	LTJG MARKERT	14:15:00
1413	2023-12-15	13:00:00	TR4105	flight	15:57:00	\N	7	CDR CARMICHAEL	1stLt MEIER	14:45:00
1414	2023-12-15	06:00:00	TR4105	flight	08:57:00	\N	8	LTJG SMITH	1stLt RODTS	07:45:00
1415	2023-12-15	05:30:00	TR4104	flight	08:33:00	\N	9	Maj OEHLMAN	Capt ROSER	07:15:00
1416	2023-12-15	07:00:00	TR4105	flight	09:57:00	\N	10	CDR POLSON	Capt ROSS	08:45:00
1417	2023-12-15	12:00:00	TR4104	flight	14:57:00	\N	11	ENS PIZZUTI	LTJG SEEPE	13:45:00
1418	2023-12-15	12:00:00	TR4105	flight	14:57:00	\N	12	LTJG ROSSIELLO	LTJG WINKLER	13:45:00
1419	2023-12-17	10:30:00	TR4106	flight	15:57:00	MASS BRIEF	8	Maj CORBETT	1stLt RODTS	14:45:00
1420	2023-12-17	10:30:00	TR4105	flight	13:27:00	MASS BRIEF	11	Maj CORBETT	LTJG SEEPE	12:15:00
1421	2023-12-18	12:00:00	TR4107	flight	14:57:00	\N	1	LT KLEVEN	LTJG ASHER	13:45:00
1422	2023-12-18	06:00:00	TR4106	flight	08:57:00	\N	2	LCDR JARVIS	LTJG DOMLER	07:45:00
1423	2023-12-18	11:00:00	TR4107	flight	13:57:00	\N	2	LTJG ROSSIELLO	LTJG DOMLER	12:45:00
1424	2023-12-18	07:30:00	TR4106	flight	10:27:00	\N	3	LCDR DORMONT	LTJG FIGUEROA	09:15:00
1425	2023-12-18	13:00:00	TR4107	flight	15:57:00	\N	3	ENS PIZZUTI	LTJG FIGUEROA	14:45:00
1426	2023-12-18	10:30:00	TR4107	flight	13:27:00	\N	4	Capt SEVY	LTJG GRAY	12:15:00
1427	2023-12-18	06:00:00	TR4107	flight	08:57:00	\N	5	CDR ESTRADA	1stLt KENT	07:45:00
1428	2023-12-18	11:30:00	TR4108	flight	14:27:00	\N	5	LCDR JARVIS	1stLt KENT	13:15:00
1429	2023-12-18	08:30:00	TR4106	flight	11:27:00	\N	6	CDR WALKER	LTJG MARKERT	10:15:00
1430	2023-12-18	13:30:00	TR4107	flight	16:27:00	\N	6	LCDR SCHRAUD	LTJG MARKERT	15:15:00
1431	2023-12-18	06:00:00	TR4106	flight	08:57:00	\N	7	Capt SEVY	1stLt MEIER	07:45:00
1432	2023-12-18	11:00:00	TR4107	flight	13:57:00	\N	7	LTJG SMITH	1stLt MEIER	12:45:00
1433	2023-12-18	12:00:00	TR4106	flight	14:57:00	\N	8	LCDR DORMONT	1stLt RODTS	13:45:00
1434	2023-12-18	08:30:00	TR4105	flight	11:27:00	\N	9	LCDR STEINACKER	Capt ROSER	10:15:00
1435	2023-12-18	13:30:00	TR4106	flight	16:27:00	\N	9	LtCol MINICK	Capt ROSER	15:15:00
1436	2023-12-18	07:30:00	TR4106	flight	10:27:00	\N	10	LtCol WIDMAYER	Capt ROSS	09:15:00
1437	2023-12-18	12:30:00	TR4107	flight	15:27:00	\N	10	Maj HOLSEY	Capt ROSS	14:15:00
1438	2023-12-18	12:00:00	TR4105	flight	14:57:00	\N	11	Capt HINKAMP	LTJG SEEPE	13:45:00
1439	2023-12-18	13:00:00	TR4106	flight	15:57:00	\N	12	LtCol WIDMAYER	LTJG WINKLER	14:45:00
1440	2023-12-19	05:30:00	TR4108	flight	08:27:00	O/I	1	CIV PANKHURST	LTJG ASHER	07:15:00
1441	2023-12-19	08:30:00	TR4109	flight	11:27:00	RTB	1	CIV PANKHURST	LTJG ASHER	10:15:00
1442	2023-12-19	11:00:00	TR4108	flight	13:57:00	\N	2	Capt SEVY	LTJG DOMLER	12:45:00
1443	2023-12-19	09:00:00	TR4106	flight	11:57:00	O/I	3	LtCol WIDMAYER	LTJG FIGUEROA	10:45:00
1444	2023-12-19	12:00:00	TR4107	flight	14:57:00	RTB	3	LtCol WIDMAYER	LTJG FIGUEROA	13:45:00
1445	2023-12-19	11:00:00	TR4108	flight	13:57:00	\N	4	LTJG ROSSIELLO	LTJG GRAY	12:45:00
1446	2023-12-19	22:15:00	IWO	duty	06:00:00	\N	5	1stLt KENT	\N	\N
1447	2023-12-19	11:00:00	TR4108	flight	13:57:00	\N	6	Maj HOLSEY	LTJG MARKERT	12:45:00
1448	2023-12-19	13:00:00	TR4108	flight	15:57:00	\N	7	LCDR DORMONT	1stLt MEIER	14:45:00
1449	2023-12-19	11:30:00	TR4108	flight	14:27:00	\N	8	ENS PIZZUTI	1stLt RODTS	13:15:00
1450	2023-12-19	08:30:00	TR4107	flight	11:27:00	O/I	9	LTJG SMITH	Capt ROSER	10:15:00
1451	2023-12-19	11:30:00	TR4108	flight	14:27:00	RTB	9	LTJG SMITH	Capt ROSER	13:15:00
1452	2023-12-19	10:00:00	TR4108	flight	12:57:00	O/I	10	LCDR RIGGS	Capt ROSS	11:45:00
1453	2023-12-19	12:30:00	TR4109	flight	15:27:00	RTB	10	LCDR RIGGS	Capt ROSS	14:15:00
1454	2023-12-19	12:00:00	TR4107	flight	14:57:00	\N	11	CDR CARMICHAEL	LTJG SEEPE	13:45:00
1455	2023-12-19	11:00:00	TR4107	flight	13:57:00	\N	12	LCDR CRAFT	LTJG WINKLER	12:45:00
1456	2023-12-21	16:30:00	TR2201	simulator	18:30:00	\N	1	LT LOUDERBACK	LTJG ASHER	17:00:00
1457	2023-12-21	08:00:00	TR4110	flight	10:57:00	\N	2	LTJG ROSSIELLO	LTJG DOMLER	09:45:00
1458	2023-12-21	19:30:00	TR2201	simulator	21:30:00	\N	3	CIV FARLEY	LTJG FIGUEROA	20:00:00
1459	2023-12-21	09:00:00	TR4110	flight	11:57:00	\N	4	CDR CARMICHAEL	LTJG GRAY	10:45:00
1460	2023-12-21	07:00:00	TR4109	flight	09:57:00	\N	5	LCDR RIGGS	1stLt KENT	08:45:00
1461	2023-12-21	08:30:00	TR4110	flight	11:27:00	\N	6	LT O'SULLIVAN	LTJG MARKERT	10:15:00
1462	2023-12-21	08:30:00	TR4110	flight	11:27:00	\N	8	LtCol MINICK	1stLt RODTS	10:15:00
1463	2023-12-21	08:00:00	TR4110	flight	10:57:00	\N	9	Capt LEPICK	Capt ROSER	09:45:00
1464	2023-12-21	08:30:00	TR4110	flight	11:27:00	\N	10	LCDR CRAFT	Capt ROSS	10:15:00
1465	2023-12-21	08:30:00	TR4109	flight	11:27:00	\N	11	LTJG SMITH	LTJG SEEPE	10:15:00
1466	2023-12-21	07:30:00	TR4110	flight	10:27:00	\N	12	ENS PIZZUTI	LTJG WINKLER	09:15:00
1467	2023-12-27	13:30:00	TR2201	simulator	15:30:00	\N	7	CIV FARLEY	1stLt MEIER	15:30:00
1468	2023-12-27	13:30:00	TR2201	simulator	15:30:00	\N	10	CIV FARLEY	Capt ROSS	14:00:00
1469	2023-12-28	13:30:00	OCF3101	simulator	15:30:00	\N	10	CIV AUSBROOKS	Capt ROSS	14:00:00
1470	2024-01-03	13:30:00	TR4112	flight	16:27:00	\N	1	Maj HOLSEY	LTJG ASHER	15:15:00
1471	2024-01-03	09:30:00	TR4112	flight	12:27:00	\N	2	LCDR RIGGS	LTJG DOMLER	11:15:00
1472	2024-01-03	13:30:00	TR4112	flight	16:27:00	\N	3	LT O'SULLIVAN	LTJG FIGUEROA	15:15:00
1473	2024-01-03	06:00:00	TR2201	simulator	08:00:00	\N	4	CIV HAMMES	LTJG GRAY	06:30:00
1474	2024-01-03	06:30:00	TR2201	simulator	08:30:00	\N	5	CIV TAYLOR	1stLt KENT	07:00:00
1475	2024-01-03	07:30:00	TR2201	simulator	09:30:00	\N	6	CIV FARLEY	LTJG MARKERT	08:00:00
1476	2024-01-03	15:00:00	TR2201	simulator	17:00:00	\N	8	CIV FARLEY	1stLt RODTS	15:30:00
1477	2024-01-03	13:30:00	TR4110	flight	16:27:00	\N	9	CIV VOHDEN	Capt ROSER	15:15:00
1478	2024-01-03	13:30:00	TR4112	flight	16:27:00	\N	10	LCDR RIGGS	Capt ROSS	15:15:00
1479	2024-01-03	15:30:00	TR2201	simulator	17:30:00	\N	11	CIV GADDIE	LTJG SEEPE	16:00:00
1480	2024-01-03	16:00:00	TR2201	simulator	18:00:00	\N	12	CIV RICHARDSON	LTJG WINKLER	16:30:00
1481	2024-01-04	05:30:00	OCF3101	simulator	07:30:00	\N	1	CIV FARLEY	LTJG ASHER	06:00:00
1482	2024-01-04	10:00:00	OCF4101	flight	12:57:00	MB W/ POLSON; HS/SD	1	CDR POLSON	LTJG ASHER	12:15:00
1483	2024-01-04	16:00:00	OCF3101	simulator	18:00:00	\N	2	CIV MUELLER	LTJG DOMLER	16:30:00
1484	2024-01-04	08:00:00	OCF3101	simulator	10:00:00	\N	3	CIV GIANAKOS	LTJG FIGUEROA	08:30:00
1485	2024-01-04	13:30:00	OCF4101	flight	15:57:00	MB	3	CDR POLSON	LTJG FIGUEROA	15:15:00
1486	2024-01-04	07:00:00	OCF3101	simulator	09:00:00	\N	4	CIV HAMMES	LTJG GRAY	07:30:00
1487	2024-01-04	10:00:00	OCF4101	flight	12:27:00	MB; CS/HS	4	CDR POLSON	LTJG GRAY	11:45:00
1488	2024-01-04	09:30:00	OCF3101	simulator	11:30:00	\N	5	CIV HAMMES	1stLt KENT	10:00:00
1489	2024-01-04	10:30:00	OCF3101	simulator	12:30:00	\N	6	CIV GIANAKOS	LTJG MARKERT	11:00:00
1490	2024-01-04	13:30:00	OCF4101	flight	15:57:00	MB W/ POLSON	6	CIV ROREX	LTJG MARKERT	15:15:00
1491	2024-01-04	06:30:00	TR4109	flight	09:27:00	O/I	7	LCDR CRAFT	1stLt MEIER	08:15:00
1492	2024-01-04	09:30:00	TR4110	flight	12:27:00	RTB	7	LCDR CRAFT	1stLt MEIER	11:15:00
1493	2024-01-04	20:30:00	OCF3101	simulator	22:30:00	\N	8	CIV MUELLER	1stLt RODTS	21:00:00
1494	2024-01-04	15:00:00	OCF3101	simulator	17:00:00	\N	9	CIV WEBSTER	Capt ROSER	15:30:00
1495	2024-01-04	12:30:00	OCF3186	simulator	14:30:00	\N	10	CIV ROMAN	Capt ROSS	13:00:00
1496	2024-01-04	19:30:00	OCF3101	simulator	21:30:00	\N	11	CIV POGUE	LTJG SEEPE	20:00:00
1497	2024-01-04	17:30:00	OCF3101	simulator	19:30:00	\N	12	CIV WEBSTER	LTJG WINKLER	18:00:00
1498	2024-01-05	13:00:00	TR4113	flight	15:57:00	\N	1	CDR DOWDELL	LTJG ASHER	14:45:00
1499	2024-01-05	07:00:00	TR2201	simulator	09:00:00	\N	2	CIV ROSS	LTJG DOMLER	07:30:00
1500	2024-01-05	12:30:00	OCF4101	flight	14:57:00	MB; CS/HS	2	CDR POLSON	LTJG DOMLER	14:15:00
1501	2024-01-05	13:00:00	OCF4101	flight	15:57:00	MB; HS/SD	3	Maj LINDHOLM	LTJG FIGUEROA	15:15:00
1502	2024-01-05	13:30:00	TR4112	flight	16:27:00	\N	4	LCDR SCHRAUD	LTJG GRAY	15:15:00
1503	2024-01-05	08:00:00	OCF4101	flight	10:57:00	MB; HS/SD	5	CDR POLSON	1stLt KENT	10:15:00
1504	2024-01-05	13:30:00	TR4112	flight	16:27:00	\N	5	LT O'SULLIVAN	1stLt KENT	15:15:00
1505	2024-01-05	13:00:00	OCF4101	flight	15:27:00	MB; CS/HS	6	Maj LINDHOLM	LTJG MARKERT	14:45:00
1506	2024-01-05	06:00:00	OCF3101	simulator	08:00:00	\N	7	CIV HAMMES	1stLt MEIER	06:30:00
1507	2024-01-05	13:00:00	OCF4101	flight	15:27:00	MB; HS/SD	7	CDR POLSON	1stLt MEIER	14:45:00
1508	2024-01-05	11:00:00	OCF4101	flight	13:27:00	MB; CS/HS	8	CDR VONDERHEIDE 	1stLt RODTS	12:45:00
1509	2024-01-05	06:30:00	TR4110(2)	flight	09:27:00	\N	9	Capt LEPICK	Capt ROSER	08:15:00
1510	2024-01-05	11:00:00	OCF4101	flight	13:27:00	MB W/ VONDERHEIDE; CS/HS	9	CDR ESTRADA	Capt ROSER	12:45:00
1511	2024-01-05	08:00:00	OCF4101	flight	10:27:00	MB; CS/HS	10	CDR POLSON	Capt ROSS	09:45:00
1512	2024-01-05	13:30:00	TR4112	flight	16:27:00	\N	10	LT CROWELL	Capt ROSS	15:15:00
1513	2024-01-05	16:30:00	TR2201	simulator	18:30:00	\N	11	CIV GADDIE	LTJG SEEPE	17:00:00
1514	2024-01-05	11:00:00	OCF4101	flight	13:57:00	MB; HS/SD	11	CDR VONDERHEIDE	LTJG SEEPE	13:15:00
1515	2024-01-05	11:00:00	OCF4101	flight	13:57:00	MB W/ VONDERHEIDE; HS/SD	12	CDR ESTRADA	LTJG WINKLER	13:15:00
1516	2024-01-08	09:30:00	TR4290	flight	12:27:00	\N	1	CDR MCLAUGHLIN	LTJG ASHER	11:15:00
1517	2024-01-08	13:30:00	TR43S1	flight	16:27:00	BRF W/ODO	1	LTJG ASHER	\N	15:15:00
1518	2024-01-08	13:30:00	TR4113	flight	16:27:00	\N	2	LCDR LANGFERMAN	LTJG DOMLER	15:15:00
1519	2024-01-08	12:00:00	TR4113	flight	14:57:00	\N	3	LT O'SULLIVAN	LTJG FIGUEROA	13:45:00
1520	2024-01-08	10:30:00	TR4112	flight	13:27:00	O/I	4	CIV HUDOCK	LTJG GRAY	12:15:00
1521	2024-01-08	13:30:00	TR4113	flight	16:27:00	RTB	4	CIV HUDOCK	LTJG GRAY	15:15:00
1522	2024-01-08	13:30:00	TR4112	flight	16:27:00	\N	5	LT MACGRIFF	1stLt KENT	15:15:00
1523	2024-01-08	08:30:00	OCF4101	flight	11:07:00	MB; CS/HS	6	CDR POLSON	LTJG MARKERT	10:15:00
1524	2024-01-08	13:00:00	TR4113(2)	flight	15:57:00	\N	6	CDR SILVA	LTJG MARKERT	14:45:00
1525	2024-01-08	10:00:00	TR4111	flight	12:57:00	O/I	7	Maj HOLSEY	1stLt MEIER	11:45:00
1526	2024-01-08	13:00:00	TR4112	flight	15:57:00	RTB	7	Maj HOLSEY	1stLt MEIER	14:45:00
1527	2024-01-08	08:30:00	TR4112	flight	11:27:00	\N	8	Capt LEPICK	1stLt RODTS	10:15:00
1528	2024-01-08	06:30:00	TR2201	simulator	08:30:00	\N	9	CIV STCLAIR	Capt ROSER	07:00:00
1529	2024-01-08	12:00:00	TR4111	flight	14:57:00	\N	9	LtCol MINICK	Capt ROSER	13:45:00
1530	2024-01-08	08:30:00	OCF4101	flight	11:27:00	MB; HS/SD	11	CDR POLSON	LTJG SEEPE	10:45:00
1531	2024-01-08	13:30:00	TR4113	flight	16:27:00	\N	12	CDR MCLAUGHLIN	LTJG WINKLER	15:15:00
1532	2024-01-09	05:30:00	TR43S1	flight	08:27:00	BRF W/ ODO; WX SLIDE IF REQ	1	LTJG ASHER	\N	07:15:00
1533	2024-01-09	06:30:00	OCF4101	flight	08:57:00	MB; CS/HS	2	CDR POLSON	LTJG DOMLER	08:15:00
1534	2024-01-09	06:30:00	OCF4101	flight	09:27:00	MB; HS/SD	3	CDR POLSON	LTJG FIGUEROA	08:45:00
1535	2024-01-09	12:00:00	TR4113	flight	14:57:00	\N	3	LT O'SULLIVAN	LTJG FIGUEROA	13:45:00
1536	2024-01-09	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
1537	2024-01-09	14:15:00	PM SDO	duty	22:45:00	\N	5	1stLt KENT	\N	\N
1538	2024-01-09	06:30:00	OCF4101	flight	08:57:00	MB; CS/HS	6	CDR VONDERHEIDE	LTJG MARKERT	08:15:00
1539	2024-01-09	08:00:00	TR4112	flight	10:57:00	\N	6	LT O'SULLIVAN	LTJG MARKERT	09:45:00
1540	2024-01-09	06:30:00	OCF4101(2)	flight	09:27:00	MB; CS/SD	7	CDR VONDERHEIDE 	1stLt MEIER	08:45:00
1541	2024-01-09	12:00:00	TR4111(2)	flight	14:57:00	\N	7	CIV RAY	1stLt MEIER	13:45:00
1542	2024-01-09	14:00:00	TR4112	flight	16:57:00	\N	8	LCDR LANGFERMAN	1stLt RODTS	15:45:00
1543	2024-01-09	07:30:00	TR4111	flight	10:27:00	\N	9	Capt RINE	Capt ROSER	09:15:00
1544	2024-01-09	06:30:00	TR4113	flight	09:27:00	\N	10	Capt LEPICK	Capt ROSS	08:15:00
1545	2024-01-09	08:00:00	OCF4101	flight	10:27:00	\N	11	Maj OEHLMAN	LTJG SEEPE	09:45:00
1546	2024-01-09	13:00:00	TR4112	flight	15:57:00	\N	11	LtCol MINICK	LTJG SEEPE	14:45:00
1547	2024-01-09	10:30:00	TR4113	flight	13:27:00	\N	12	LCDR STEINACKER	LTJG WINKLER	12:15:00
1548	2024-01-10	13:00:00	TR43S1	flight	15:57:00	\N	1	LTJG ASHER	\N	14:45:00
1549	2024-01-10	06:30:00	OCF4101	flight	08:57:00	CS/HS; MB VONDERHEIDE	2	CDR FOSTER	LTJG DOMLER	08:15:00
1550	2024-01-10	06:30:00	OCF4101	flight	09:27:00	HS/SD; MB VONDERHEIDE	3	CDR FOSTER	LTJG FIGUEROA	08:45:00
1551	2024-01-10	13:00:00	TR4112	flight	15:57:00	\N	4	CDR CARMICHAEL	LTJG GRAY	14:45:00
1552	2024-01-10	07:30:00	TR4113	flight	10:27:00	\N	5	LTJG ROSSIELLO	1stLt KENT	09:15:00
1553	2024-01-10	06:30:00	OCF4101	flight	08:57:00	CS/HS; MB VONDERHEIDE	6	CDR VONDERHEIDE	LTJG MARKERT	08:15:00
1554	2024-01-10	06:30:00	OCF4101	flight	09:27:00	HS/SD; MB VONDERHEIDE	7	CDR VONDERHEIDE 	1stLt MEIER	08:45:00
1555	2024-01-10	07:30:00	TR4113	flight	10:27:00	\N	8	Maj LINDHOLM	1stLt RODTS	09:15:00
1556	2024-01-10	07:00:00	TR4111	flight	09:57:00	\N	9	LCDR LANGFERMAN	Capt ROSER	08:45:00
1557	2024-01-10	13:30:00	TR4112	flight	16:27:00	\N	10	LCDR SCHRAUD	Capt ROSS	15:15:00
1558	2024-01-10	13:30:00	TR4113	flight	16:27:00	\N	12	CIV ROREX	LTJG WINKLER	15:15:00
1559	2024-01-11	08:00:00	IR3101	simulator	10:00:00	\N	1	CIV GIANAKOS	LTJG ASHER	08:30:00
1560	2024-01-11	11:30:00	IR3102	simulator	13:30:00	\N	1	CIV RAUENHORST	LTJG ASHER	12:00:00
1561	2024-01-11	13:00:00	TR4113	flight	15:57:00	\N	2	Maj NASSER	LTJG DOMLER	14:45:00
1562	2024-01-11	13:00:00	TR4290	flight	15:57:00	\N	4	LCDR HANSOM	LTJG GRAY	14:45:00
1563	2024-01-11	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	5	1stLt KENT	\N	\N
1564	2024-01-11	13:30:00	TR4111 (2)	flight	16:27:00	\N	7	CDR CARMICHAEL	1stLt MEIER	15:15:00
1565	2024-01-11	06:00:00	AM SDO	duty	14:15:00	\N	9	Capt ROSER	\N	\N
1566	2024-01-11	14:15:00	PM SDO	duty	22:15:00	\N	11	LTJG SEEPE	\N	\N
1567	2024-01-11	11:00:00	TR4290	flight	13:57:00	\N	12	CIV RAY	LTJG WINKLER	12:45:00
1568	2024-01-12	07:30:00	TR4112	flight	10:27:00	\N	7	CDR POLSON	1stLt MEIER	09:15:00
1569	2024-01-12	07:30:00	TR4112	flight	10:27:00	\N	10	LT HADEL	Capt ROSS	09:15:00
1570	2024-01-16	07:30:00	IR3104	simulator	09:30:00	\N	1	CIV WINKLER	LTJG ASHER	08:00:00
1571	2024-01-16	12:30:00	IR3105	simulator	14:30:00	\N	1	CIV WINKLER	LTJG ASHER	13:00:00
1572	2024-01-16	06:00:00	TR4290	flight	08:57:00	\N	2	CDR SILVA	LTJG DOMLER	07:45:00
1573	2024-01-16	13:00:00	TR43S1	flight	15:57:00	\N	2	LTJG DOMLER	\N	14:45:00
1574	2024-01-16	07:30:00	TR4290 (2)	flight	10:27:00	\N	4	CDR ROY	LTJG GRAY	09:15:00
1575	2024-01-16	13:30:00	TR43S1	flight	16:27:00	\N	4	LTJG GRAY	\N	15:15:00
1576	2024-01-16	13:00:00	TR4113	flight	15:57:00	\N	5	CDR CARMICHAEL	1stLt KENT	14:45:00
1577	2024-01-16	06:00:00	AM SDO	duty	14:00:00	\N	7	1stLt MEIER	\N	\N
1578	2024-01-16	13:00:00	TR4113	flight	15:57:00	\N	8	CDR PARSONS	1stLt RODTS	14:45:00
1579	2024-01-16	14:00:00	PM SDO	duty	21:45:00	\N	9	Capt ROSER	\N	\N
1580	2024-01-16	06:30:00	TR4112 (2)	flight	09:27:00	\N	10	CDR POLSON	Capt ROSS	08:15:00
1581	2024-01-16	09:30:00	TR4113	flight	12:27:00	\N	11	CDR DOWDELL	LTJG SEEPE	11:15:00
1582	2024-01-16	07:30:00	TR4290	flight	10:27:00	\N	12	LtCol JONES	LTJG WINKLER	09:15:00
1583	2024-01-16	13:30:00	TR43S1	flight	16:27:00	\N	12	LTJG WINKLER	\N	15:15:00
1584	2024-01-17	08:00:00	AM SDO	duty	15:00:00	\N	1	LTJG ASHER	\N	\N
1585	2024-01-17	12:30:00	TR4113	flight	15:27:00	\N	3	CDR WALKER	LTJG FIGUEROA	14:15:00
1586	2024-01-17	10:30:00	TR4112	flight	13:27:00	\N	5	LCDR KROLL	1stLt KENT	12:15:00
1587	2024-01-17	15:00:00	PM SDO	duty	21:45:00	\N	6	LTJG MARKERT	\N	\N
1588	2024-01-17	08:00:00	TR4112	flight	10:57:00	\N	7	LCDR CRAFT	1stLt MEIER	09:45:00
1589	2024-01-17	13:00:00	TR4113	flight	15:57:00	\N	8	CDR LOWERY	1stLt RODTS	14:45:00
1590	2024-01-17	13:00:00	TR4112	flight	15:57:00	\N	9	CDR FOSTER	Capt ROSER	14:45:00
1591	2024-01-17	13:00:00	TR4112	flight	15:57:00	\N	10	CDR PARSONS	Capt ROSS	14:45:00
1592	2024-01-17	12:30:00	TR4112	flight	15:27:00	\N	11	LCDR CRAFT	LTJG SEEPE	14:15:00
1593	2024-01-18	06:00:00	IR3105	simulator	08:00:00	\N	1	CIV HAY	LTJG ASHER	06:30:00
1594	2024-01-18	11:30:00	IR3106	simulator	13:30:00	\N	1	CIV POGUE	LTJG ASHER	12:00:00
1595	2024-01-18	06:00:00	TR4290	flight	08:57:00	HP/HS W/LINE 924	2	LT WALLACE	LTJG DOMLER	07:45:00
1596	2024-01-18	05:30:00	AM SDO	duty	13:45:00	\N	3	LTJG FIGUEROA	\N	\N
1597	2024-01-18	08:30:00	IR3102	simulator	10:30:00	\N	4	CIV HAY	LTJG GRAY	09:00:00
1598	2024-01-18	11:30:00	TR4290	flight	14:27:00	\N	4	CDR POLSON	LTJG GRAY	13:15:00
1599	2024-01-18	12:00:00	TR4112	flight	14:57:00	\N	5	ENS PIZZUTI	1stLt KENT	13:45:00
1600	2024-01-18	13:30:00	TR4113	flight	16:27:00	\N	6	Capt RINE	LTJG MARKERT	15:15:00
1601	2024-01-18	07:30:00	TR4112	flight	10:27:00	HS/SD W/LINE 903	7	CDR CARMICHAEL	1stLt MEIER	09:15:00
1602	2024-01-18	17:30:00	IR3101	simulator	19:30:00	\N	8	CIV GADDIE	1stLt RODTS	18:00:00
1603	2024-01-18	12:30:00	TR4290	flight	15:27:00	\N	8	CDR FOSTER	1stLt RODTS	14:15:00
1604	2024-01-18	12:00:00	TR4113	flight	14:57:00	\N	9	CDR CARMICHAEL	Capt ROSER	13:45:00
1605	2024-01-18	06:30:00	TR4113	flight	09:27:00	\N	10	ENS PIZZUTI	Capt ROSS	08:15:00
1606	2024-01-18	16:30:00	IR3101	simulator	18:30:00	\N	11	LT LOUDERBACK	LTJG SEEPE	17:00:00
1607	2024-01-18	08:00:00	TR4113	flight	10:57:00	\N	11	LtCol MINICK	LTJG SEEPE	09:45:00
1608	2024-01-18	06:00:00	TR4290	flight	08:57:00	\N	12	CDR POLSON	LTJG WINKLER	07:45:00
1609	2024-01-18	10:30:00	TR43S1	flight	13:27:00	\N	12	LTJG WINKLER	\N	12:15:00
1610	2024-01-19	07:00:00	IR3201	simulator	09:00:00	\N	1	CIV SIMMONS	LTJG ASHER	07:30:00
1611	2024-01-19	13:30:00	IR3101	simulator	15:30:00	\N	2	CIV SANDERS	LTJG DOMLER	14:00:00
1612	2024-01-19	05:30:00	TR43S1	flight	08:27:00	CS/HP/HS; BRF W/ODO, BRF HS PROC	2	LTJG DOMLER	\N	07:15:00
1613	2024-01-19	13:00:00	TR4113	flight	15:57:00	STAGE MEI	3	LCDR TAYLOR	LTJG FIGUEROA	14:45:00
1614	2024-01-19	07:00:00	TR4290	flight	09:57:00	\N	4	LtCol JONES	LTJG GRAY	08:45:00
1615	2024-01-19	08:30:00	TR4113	flight	11:27:00	\N	5	CDR LOWERY	1stLt KENT	10:15:00
1616	2024-01-19	13:30:00	TR4113	flight	16:27:00	\N	6	ENS PIZZUTI	LTJG MARKERT	15:15:00
1617	2024-01-19	13:00:00	TR4113	flight	15:57:00	\N	7	Capt LEPICK	1stLt MEIER	14:45:00
1618	2024-01-19	13:00:00	TR4112	flight	15:57:00	STAGE MEI	9	CDR LOWERY	Capt ROSER	14:45:00
1619	2024-01-19	07:30:00	TR4113	flight	10:27:00	\N	10	LCDR TAYLOR	Capt ROSS	09:15:00
1620	2024-01-19	12:00:00	IR3101	simulator	14:00:00	\N	12	CIV AUSBROOKS	LTJG WINKLER	12:30:00
1621	2024-01-19	05:30:00	TR43S1	flight	10:27:00	HS W/LINE 900/SD; MB W/ODO/DOM	12	LTJG WINKLER	\N	09:15:00
1622	2024-01-22	05:30:00	IR3202	simulator	07:30:00	\N	1	CIV HAMMES	LTJG ASHER	06:00:00
1623	2024-01-22	09:00:00	IR3203	simulator	11:00:00	\N	1	CIV WEBSTER	LTJG ASHER	09:30:00
1624	2024-01-22	06:00:00	IR3102	simulator	08:00:00	\N	2	CIV ROSS	LTJG DOMLER	06:30:00
1625	2024-01-22	07:45:00	TR4290	flight	11:57:00	MB W/ROSS	3	CIV HUDOCK	LTJG FIGUEROA	10:45:00
1626	2024-01-22	12:30:00	TR43S1	flight	15:27:00	BRF W/ODO	3	LTJG FIGUEROA	\N	14:15:00
1627	2024-01-22	05:30:00	AM SDO	duty	12:30:00	\N	4	LTJG GRAY	\N	\N
1628	2024-01-22	06:30:00	TR4113	flight	09:27:00	\N	5	Capt LEPICK	1stLt KENT	08:15:00
1629	2024-01-22	07:00:00	TR4290	flight	09:57:00	\N	7	LtCol JONES	1stLt MEIER	08:45:00
1630	2024-01-22	10:30:00	TR43S1	flight	13:27:00	BRF W/ODO	7	1stLt MEIER	\N	12:15:00
1631	2024-01-22	05:30:00	TR4290	flight	08:27:00	MB W/SEEPE	8	LCDR CRAFT	1stLt RODTS	07:15:00
1632	2024-01-22	09:00:00	TR43S1	flight	11:57:00	BRF W/ODO	8	1stLt RODTS	\N	10:45:00
1633	2024-01-22	07:00:00	TR4113	flight	09:57:00	MEI-NMM	9	LCDR SCHRAUD	Capt ROSER	08:45:00
1634	2024-01-22	06:00:00	TR4290	flight	08:57:00	MB W/FIGUEROA	10	CIV HUDOCK	Capt ROSS	07:45:00
1635	2024-01-22	09:30:00	TR43S1	flight	12:27:00	BRF W/ODO	10	Capt ROSS	\N	11:15:00
1636	2024-01-22	05:30:00	TR4290	flight	11:27:00	MB W/RODTS	11	LCDR CRAFT	LTJG SEEPE	10:15:00
1637	2024-01-22	12:00:00	TR43S1	flight	14:57:00	BRF W/ODO	11	LTJG SEEPE	\N	13:45:00
1638	2024-01-22	12:30:00	IR3102	simulator	14:30:00	\N	12	CIV FARLEY	LTJG WINKLER	13:00:00
1639	2024-01-23	05:30:00	IR2101	simulator	07:30:00	\N	1	CIV GIANAKOS	LTJG ASHER	06:00:00
1640	2024-01-23	06:00:00	IR3103	simulator	08:00:00	\N	2	CIV HAMMES	LTJG DOMLER	06:30:00
1641	2024-01-23	06:30:00	IR3101	simulator	08:30:00	\N	3	CIV FARLEY	LTJG FIGUEROA	07:00:00
1642	2024-01-23	10:30:00	TR43S1	flight	13:27:00	CS/HP/HS W/LINE 984; BRF W/ODO HS PROC	3	LTJG FIGUEROA	\N	12:15:00
1643	2024-01-23	09:30:00	TR4290	flight	12:27:00	\N	4	LCDR THYBERG	LTJG GRAY	11:15:00
1644	2024-01-23	12:30:00	TR43S1	flight	15:57:00	HS W/LINE969; SD; BRF W/ODO HS PROC	4	LTJG GRAY	\N	14:45:00
1645	2024-01-23	07:00:00	TR4290	flight	09:57:00	\N	5	CIV RAY	1stLt KENT	08:45:00
1646	2024-01-23	10:30:00	TR43S1	flight	13:27:00	CS/HP/HS W/LINE 985; BRF W/ODO HS PROC	5	1stLt KENT	\N	12:15:00
1647	2024-01-23	09:00:00	TR4290	flight	11:57:00	\N	6	LtCol JONES	LTJG MARKERT	10:45:00
1648	2024-01-23	12:30:00	TR43S1	flight	15:27:00	HS W/LINE961; SD; BRF W/ODO HS PROC	6	LTJG MARKERT	\N	14:15:00
1649	2024-01-23	07:00:00	IR3101	simulator	09:00:00	\N	7	CIV CARRIER	1stLt MEIER	07:30:00
1650	2024-01-23	10:30:00	TR43S1	flight	13:57:00	CS/HP/HS W/LINE 990; BRF W/ODO HS PROC	7	1stLt MEIER	\N	12:45:00
1651	2024-01-23	10:30:00	IR3102	simulator	12:30:00	\N	8	CIV GIANAKOS	1stLt RODTS	11:00:00
1652	2024-01-23	05:30:00	TR43S1	flight	08:27:00	BRF W/ODO	8	1stLt RODTS	\N	07:15:00
1653	2024-01-23	11:30:00	TR4290	flight	14:27:00	\N	9	LT BALLATO	Capt ROSER	13:15:00
1654	2024-01-23	08:00:00	IR3101	simulator	10:00:00	\N	10	CIV GIANAKOS	Capt ROSS	08:30:00
1655	2024-01-23	11:30:00	TR43S1	flight	14:27:00	\N	10	Capt ROSS	\N	13:15:00
1656	2024-01-23	08:30:00	IR3102	simulator	10:30:00	\N	11	CIV GOODMAN	LTJG SEEPE	09:00:00
1657	2024-01-23	12:30:00	TR43S1	flight	15:27:00	HS W/LINE962; SD; BRF W/ODO HS PROC	11	LTJG SEEPE	\N	14:15:00
1658	2024-01-23	09:00:00	IR3103	simulator	11:00:00	\N	12	CIV FARLEY	LTJG WINKLER	09:30:00
1659	2024-01-24	06:30:00	IR3204	simulator	08:30:00	\N	1	CIV GADDIE	LTJG ASHER	07:00:00
1660	2024-01-24	14:00:00	IR3104	flight	17:15:00	O/I	2	ENS PIZZUTI	LTJG DOMLER	15:45:00
1661	2024-01-24	17:00:00	IR3105	flight	20:15:00	RTB	2	ENS PIZZUTI	LTJG DOMLER	18:45:00
1662	2024-01-24	08:30:00	IR3103	simulator	10:30:00	\N	4	CIV SAYLOR	LTJG GRAY	09:00:00
1663	2024-01-24	12:30:00	TR4290	flight	15:27:00	\N	4	LCDR CRAFT	LTJG GRAY	14:15:00
1664	2024-01-24	06:30:00	TR4290	flight	09:27:00	\N	5	LtCol JONES	1stLt KENT	08:15:00
1665	2024-01-24	12:00:00	TR43S1	flight	14:57:00	MASS BRF W/ ODO	5	1stLt KENT	\N	13:45:00
1666	2024-01-24	06:30:00	TR4290	flight	09:27:00	\N	6	LCDR CRAFT	LTJG MARKERT	08:15:00
1667	2024-01-24	12:00:00	TR43S1	flight	14:57:00	MASS BRF W/ ODO	6	LTJG MARKERT	\N	13:45:00
1668	2024-01-24	12:00:00	TR43S1	flight	14:57:00	MASS BRF W/ ODO	7	1stLt MEIER	\N	13:45:00
1669	2024-01-24	12:00:00	TR43S1	flight	14:57:00	MASS BRF W/ ODO	8	1stLt RODTS	\N	13:45:00
1670	2024-01-24	19:30:00	IR3101	simulator	21:30:00	\N	9	CIV POGUE	Capt ROSER	20:00:00
1671	2024-01-24	13:30:00	TR4290	flight	16:27:00	\N	9	LT BALLATO	Capt ROSER	15:15:00
1672	2024-01-24	15:30:00	IR3102	simulator	17:30:00	\N	10	CIV STCLAIR	Capt ROSS	16:00:00
1673	2024-01-24	20:00:00	IR3103	simulator	22:00:00	\N	10	CIV SANDERS	Capt ROSS	20:30:00
1674	2024-01-24	11:30:00	IR3103	simulator	13:30:00	\N	11	CIV GADDIE	LTJG SEEPE	12:00:00
1675	2024-01-24	06:00:00	TR43S1	flight	08:57:00	\N	11	LTJG SEEPE	\N	07:45:00
1676	2024-01-24	08:30:00	IR3104	simulator	10:30:00	\N	12	CIV WEBSTER	LTJG WINKLER	09:00:00
1677	2024-01-24	12:00:00	IR3105	simulator	14:00:00	\N	12	CIV CAREY	LTJG WINKLER	12:30:00
1678	2024-01-25	20:00:00	IR3205	simulator	22:00:00	\N	1	CIV POGUE	LTJG ASHER	20:30:00
1679	2024-01-25	06:00:00	FRM LEAD	flight	09:03:00	FSL	3	LT KLEVEN	LTJG FIGUEROA	07:45:00
1680	2024-01-25	11:00:00	TR43S1	flight	13:57:00	MB W/ ODO	3	LTJG FIGUEROA	\N	12:45:00
1681	2024-01-25	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
1682	2024-01-25	09:30:00	TR4290	flight	12:27:00	\N	5	LtCol JONES	1stLt KENT	11:15:00
1683	2024-01-25	13:00:00	TR43S1	flight	15:57:00	MB W/ ODO	5	1stLt KENT	\N	14:45:00
1684	2024-01-25	05:30:00	TR4290	flight	08:27:00	\N	6	Maj LINDHOLM	LTJG MARKERT	07:15:00
1685	2024-01-25	11:00:00	TR43S1	flight	13:57:00	MB W/ ODO	6	LTJG MARKERT	\N	12:45:00
1686	2024-01-25	06:30:00	FRM LEAD	flight	09:33:00	\N	7	Capt HINKAMP	1stLt MEIER	08:15:00
1687	2024-01-25	11:00:00	TR43S1	flight	13:57:00	MB W/ ODO	7	1stLt MEIER	\N	12:45:00
1688	2024-01-25	20:30:00	IR3103	simulator	22:30:00	\N	8	CIV DOHERTY	1stLt RODTS	21:00:00
1689	2024-01-25	13:00:00	TR43S1	flight	15:57:00	MB W/ ODO	8	1stLt RODTS	\N	14:45:00
1690	2024-01-25	12:00:00	PM SDO	duty	19:15:00	\N	9	Capt ROSER	\N	\N
1691	2024-01-25	12:00:00	IR3102	flight	15:15:00	O/I	10	Capt SEVY	Capt ROSS	13:45:00
1692	2024-01-25	15:00:00	IR3103	flight	18:15:00	RTB	10	Capt SEVY	Capt ROSS	16:45:00
1693	2024-01-25	08:00:00	FRM LEAD	flight	11:03:00	FSL	11	CDR DOWDELL	LTJG SEEPE	09:45:00
1694	2024-01-25	13:00:00	TR43S1	flight	15:57:00	MB W/ ODO	11	LTJG SEEPE	\N	14:45:00
1695	2024-01-25	05:30:00	AM SDO	duty	12:00:00	\N	12	LTJG WINKLER	\N	\N
1696	2024-01-26	10:30:00	IR4101	flight	13:45:00	XC; NMM-TYS; BLVT	1	CDR CARMICHAEL	LTJG ASHER	12:15:00
1697	2024-01-26	15:30:00	IR4102	flight	18:45:00	XC; TYS-ADN	1	CDR CARMICHAEL	LTJG ASHER	17:15:00
1698	2024-01-26	06:30:00	AM SDO	duty	12:45:00	\N	2	LTJG DOMLER	\N	\N
1699	2024-01-26	07:30:00	TR4290	flight	10:27:00	\N	5	CIV HUDOCK	1stLt KENT	09:15:00
1700	2024-01-26	11:00:00	TR43S1 (2)	flight	13:57:00	\N	5	1stLt KENT	\N	12:45:00
1701	2024-01-26	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	6	LTJG MARKERT	\N	\N
1702	2024-01-26	11:30:00	TR43S1	flight	14:27:00	\N	7	1stLt MEIER	\N	13:15:00
1703	2024-01-26	12:45:00	PM SDO	duty	18:45:00	\N	8	1stLt RODTS	\N	\N
1704	2024-01-26	13:30:00	TR43S1	flight	16:27:00	BRF W/ ODO	11	LTJG SEEPE	\N	15:15:00
1705	2024-01-27	06:30:00	IR3101	simulator	08:30:00	\N	3	CIV HEIMANN	LTJG FIGUEROA	07:00:00
1706	2024-01-27	09:30:00	IR3102	simulator	11:30:00	\N	3	CIV RAUENHORST	LTJG FIGUEROA	10:00:00
1707	2024-01-27	06:30:00	IR3101	simulator	08:30:00	\N	5	CIV HEIMANN	1stLt KENT	08:30:00
1708	2024-01-27	12:30:00	IR3102	simulator	14:30:00	\N	5	Maj VALKO	1stLt KENT	13:00:00
1709	2024-01-27	12:30:00	IR3101	simulator	14:30:00	\N	6	CIV SIMMONS	LTJG MARKERT	13:00:00
1710	2024-01-27	09:30:00	IR3102	simulator	11:30:00	\N	7	CIV RAUENHORST	1stLt MEIER	11:30:00
1711	2024-01-27	14:00:00	IR3103	simulator	16:00:00	\N	7	Maj VALKO	1stLt MEIER	14:30:00
1712	2024-01-27	09:30:00	IR3102	simulator	11:30:00	\N	9	CIV GADDIE	Capt ROSER	10:00:00
1713	2024-01-27	12:30:00	IR3103	simulator	14:30:00	\N	9	CIV SIMMONS	Capt ROSER	14:30:00
1714	2024-01-27	06:30:00	IR3104	simulator	08:30:00	\N	10	CIV HAMMES	Capt ROSS	07:00:00
1715	2024-01-27	06:30:00	IR3106	simulator	08:30:00	\N	12	CIV HAMMES	LTJG WINKLER	08:30:00
1716	2024-01-27	11:00:00	IR3201	simulator	13:00:00	\N	12	CIV GADDIE	LTJG WINKLER	11:30:00
1717	2024-01-28	07:30:00	IR4103	flight	10:45:00	X/C; ADW-LEX	1	CDR CARMICHAEL	LTJG ASHER	09:15:00
1718	2024-01-28	10:30:00	IR4104	flight	13:45:00	X/C; LEX-RYY	1	CDR CARMICHAEL	LTJG ASHER	12:15:00
1719	2024-01-28	13:30:00	IR4105	flight	16:45:00	X/C; RYY-NMM	1	CDR CARMICHAEL	LTJG ASHER	15:15:00
1720	2024-01-29	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	3	LTJG FIGUEROA	\N	\N
1721	2024-01-29	14:00:00	TR4290 (2)	flight	16:57:00	\N	4	CIV HUDOCK	LTJG GRAY	15:45:00
1722	2024-01-29	09:00:00	TR4290	flight	11:57:00	\N	5	LtCol JONES	1stLt KENT	10:45:00
1723	2024-01-29	13:30:00	TR43S1	flight	16:27:00	BRF W/ ODO	5	1stLt KENT	\N	15:15:00
1724	2024-01-29	13:30:00	TR4290	flight	16:27:00	\N	6	CDR POLSON	LTJG MARKERT	15:15:00
1725	2024-01-29	08:00:00	IR3104	flight	11:15:00	O/I	7	Capt LEPICK	1stLt MEIER	09:45:00
1726	2024-01-29	11:00:00	IR3105	flight	14:15:00	RTB	7	Capt LEPICK	1stLt MEIER	12:45:00
1727	2024-01-29	12:45:00	PM SDO	duty	19:15:00	\N	8	1stLt RODTS	\N	\N
1728	2024-01-29	12:00:00	TR4290	flight	14:57:00	\N	9	CDR CLAY	Capt ROSER	13:45:00
1729	2024-01-29	08:00:00	IR3104	flight	11:15:00	O/I	11	Capt SEVY	LTJG SEEPE	09:45:00
1730	2024-01-29	11:00:00	IR3105	flight	14:15:00	RTB	11	Capt SEVY	LTJG SEEPE	12:45:00
1731	2024-01-30	05:30:00	IR4105	flight	08:45:00	\N	1	ENS PIZZUTI	LTJG ASHER	07:15:00
1732	2024-01-30	18:30:00	IR3104	simulator	20:30:00	\N	2	CIV KNIGHT	LTJG DOMLER	19:00:00
1733	2024-01-30	12:00:00	TR4290 (2)	flight	14:57:00	\N	3	LT BALLATO	LTJG FIGUEROA	13:45:00
1734	2024-01-30	19:00:00	IR3104	simulator	21:00:00	\N	4	CIV GOODMAN	LTJG GRAY	19:30:00
1735	2024-01-30	13:00:00	TR43S1	flight	15:57:00	MB W/ODO	4	LTJG GRAY	\N	14:45:00
1736	2024-01-30	20:00:00	IR3103	simulator	22:00:00	\N	5	CIV POGUE	1stLt KENT	20:30:00
1737	2024-01-30	07:30:00	TR43S1	flight	10:27:00	BRF W/ODO	6	LTJG MARKERT	\N	09:15:00
1738	2024-01-30	09:30:00	TR4290(2)	flight	12:27:00	\N	7	CDR SILVA	1stLt MEIER	11:15:00
1739	2024-01-30	13:00:00	TR43S1	flight	15:57:00	MB W/ODO	7	1stLt MEIER	\N	14:45:00
1740	2024-01-30	07:00:00	TR4290 (2)	flight	09:57:00	\N	8	LtCol JONES	1stLt RODTS	08:45:00
1741	2024-01-30	10:30:00	TR43S1	flight	13:27:00	MB W/ODO	8	1stLt RODTS	\N	12:15:00
1742	2024-01-30	19:30:00	IR3104	simulator	21:30:00	\N	9	CIV STCLAIR	Capt ROSER	20:00:00
1743	2024-01-30	13:00:00	TR43S1	flight	15:57:00	MB W/ODO	9	Capt ROSER	\N	14:45:00
1744	2024-01-30	08:00:00	IR3105	simulator	10:00:00	\N	10	CIV GIANAKOS	Capt ROSS	08:30:00
1745	2024-01-30	07:00:00	TR4290 (2)	flight	09:57:00	\N	11	CIV RAY	LTJG SEEPE	08:45:00
1746	2024-01-30	10:30:00	TR43S1	flight	13:27:00	MB W/ODO	11	LTJG SEEPE	\N	12:15:00
1747	2024-01-30	20:30:00	IR3202	simulator	22:30:00	\N	12	CIV SANDERS	LTJG WINKLER	21:00:00
1748	2024-01-31	20:00:00	IR3301	simulator	22:00:00	\N	1	CIV RAUENHORST	LTJG ASHER	20:30:00
1749	2024-01-31	13:00:00	IR3105	simulator	15:00:00	\N	2	CIV TAYLOR	LTJG DOMLER	13:30:00
1750	2024-01-31	15:00:00	IR3103	simulator	17:00:00	\N	3	CIV RAUENHORST	LTJG FIGUEROA	15:30:00
1751	2024-01-31	18:00:00	IR3105	simulator	20:00:00	\N	4	CIV DOHERTY	LTJG GRAY	18:30:00
1752	2024-01-31	12:30:00	PM SDO	duty	19:15:00	\N	5	1stLt KENT	\N	\N
1753	2024-01-31	13:00:00	IR3102	flight	16:15:00	O/I	6	Maj HOLSEY	LTJG MARKERT	14:45:00
1754	2024-01-31	16:00:00	IR3103	flight	19:15:00	RTB	6	Maj HOLSEY	LTJG MARKERT	17:45:00
1755	2024-01-31	05:30:00	IR3106	simulator	07:30:00	\N	7	CIV GIANAKOS	1stLt MEIER	06:00:00
1756	2024-01-31	10:00:00	TR43S1 (2)	flight	12:57:00	BRF W/ ODO	8	1stLt RODTS	\N	11:45:00
1757	2024-01-31	12:30:00	IR3105	simulator	14:30:00	\N	9	CIV CAREY	Capt ROSER	13:00:00
1758	2024-01-31	07:00:00	IR3106	simulator	09:00:00	\N	10	CIV CARRIER	Capt ROSS	07:30:00
1759	2024-01-31	17:30:00	IR3106	simulator	19:30:00	\N	11	CIV RAUENHORST	LTJG SEEPE	18:00:00
1760	2024-01-31	13:00:00	IR3203	flight	16:15:00	\N	12	Maj CORBETT	LTJG WINKLER	14:45:00
1761	2024-02-01	11:45:00	PM SDO	duty	18:00:00	\N	1	LTJG ASHER	\N	\N
1762	2024-02-01	10:30:00	IR3106	simulator	12:30:00	\N	2	CIV ROSS	LTJG DOMLER	11:00:00
1763	2024-02-01	14:30:00	IR3201	simulator	16:30:00	\N	2	CIV STCLAIR	LTJG DOMLER	15:00:00
1764	2024-02-01	07:30:00	TR4290 (2)	flight	10:27:00	\N	3	LCDR DORMONT	LTJG FIGUEROA	09:15:00
1765	2024-02-01	11:00:00	TR43S1	flight	13:57:00	BRF W/ODO	3	LTJG FIGUEROA	\N	12:45:00
1766	2024-02-01	14:00:00	IR3106	simulator	16:00:00	\N	4	CIV KNIGHT	LTJG GRAY	14:30:00
1767	2024-02-01	11:00:00	IR3104	simulator	13:00:00	\N	5	CIV CAREY	1stLt KENT	11:30:00
1768	2024-02-01	11:30:00	IR3102	simulator	13:30:00	\N	6	CIV WEBSTER	LTJG MARKERT	12:00:00
1769	2024-02-01	08:30:00	IR3201	simulator	10:30:00	\N	7	CIV GOODMAN	1stLt MEIER	09:00:00
1770	2024-02-01	11:30:00	IR3202	simulator	13:30:00	\N	7	CIV HANSCHKE	1stLt MEIER	12:00:00
1771	2024-02-01	15:00:00	IR3104	simulator	17:00:00	\N	8	CIV ROMAN	1stLt RODTS	15:30:00
1772	2024-02-01	19:00:00	IR3105	simulator	21:00:00	\N	8	CIV KNIGHT	1stLt RODTS	19:30:00
1773	2024-02-01	12:30:00	IR3106	simulator	14:30:00	\N	9	CIV ROMAN	Capt ROSER	13:00:00
1774	2024-02-01	09:00:00	IR3106	simulator	11:00:00	\N	10	CIV WEBSTER	Capt ROSS	09:30:00
1775	2024-02-01	13:00:00	IR3201	simulator	15:00:00	\N	10	CIV ROSS	Capt ROSS	13:30:00
1776	2024-02-01	13:30:00	IR3201	simulator	15:30:00	\N	11	CIV FARLEY	LTJG SEEPE	14:00:00
1777	2024-02-01	13:30:00	IR3203	simulator	15:30:00	\N	12	CIV STERLING	LTJG WINKLER	14:00:00
1778	2024-02-01	18:30:00	IR3204	simulator	20:30:00	\N	12	CIV STERLING	LTJG WINKLER	19:00:00
1779	2024-02-02	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	1	LTJG ASHER	\N	\N
1780	2024-02-02	09:00:00	IR3202	flight	12:15:00	O/I	2	LCDR HANSOM	LTJG DOMLER	10:45:00
1781	2024-02-02	12:00:00	IR3203	flight	15:15:00	RTB	2	LCDR HANSOM	LTJG DOMLER	13:45:00
1782	2024-02-02	07:00:00	IR3104	simulator	09:00:00	\N	3	CIV STERLING	LTJG FIGUEROA	07:30:00
1783	2024-02-02	11:00:00	IR3105	simulator	13:00:00	\N	3	Maj VALKO	LTJG FIGUEROA	11:30:00
1784	2024-02-02	18:00:00	IWO	duty	05:30:00	\N	4	LTJG GRAY	\N	\N
1785	2024-02-02	10:00:00	IR3105	simulator	12:00:00	\N	5	CIV MUELLER	1stLt KENT	10:30:00
1786	2024-02-02	10:30:00	IR3106	simulator	12:30:00	\N	6	CIV GOODMAN	LTJG MARKERT	11:00:00
1787	2024-02-02	14:00:00	IR3105	simulator	16:00:00	\N	6	CIV POGUE	LTJG MARKERT	14:30:00
1788	2024-02-02	05:30:00	AM SDO	duty	11:45:00	\N	7	1stLt MEIER	\N	\N
1789	2024-02-02	09:30:00	IR3106	simulator	11:30:00	\N	8	CIV STERLING	1stLt RODTS	10:00:00
1790	2024-02-02	07:30:00	IR3201	simulator	09:30:00	\N	9	CIV MUELLER	Capt ROSER	08:00:00
1791	2024-02-02	10:30:00	IR3202	flight	13:45:00	O/I	10	LCDR SCHRAUD	Capt ROSS	12:15:00
1792	2024-02-02	14:00:00	IR3203	flight	17:00:00	RTB	10	LCDR SCHRAUD	Capt ROSS	15:45:00
1793	2024-02-02	08:30:00	IR3201	simulator	10:30:00	\N	11	Maj VALKO	LTJG SEEPE	09:00:00
1794	2024-02-02	11:45:00	PM SDO	duty	18:00:00	\N	12	LTJG WINKLER	\N	\N
1795	2024-02-03	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	10	Capt ROSS	\N	\N
1796	2024-02-04	18:00:00	PM IWO	duty	06:00:00	\N	2	LTJG DOMLER	\N	\N
1797	2024-02-05	19:00:00	IR3302	simulator	21:00:00	\N	1	CIV KNIGHT	LTJG ASHER	19:30:00
1798	2024-02-05	16:00:00	IR3106	simulator	18:00:00	\N	3	CIV SIMMONS	LTJG FIGUEROA	16:30:00
1799	2024-02-05	10:00:00	IR3201	simulator	12:00:00	\N	4	CIV AUSBROOKS	LTJG GRAY	10:30:00
1800	2024-02-05	16:30:00	IR3106	simulator	18:30:00	\N	5	CIV KNIGHT	1stLt KENT	17:00:00
1801	2024-02-05	17:00:00	IR3201	simulator	19:00:00	\N	6	CIV CAREY	LTJG MARKERT	17:30:00
1802	2024-02-05	17:30:00	IR3203	simulator	19:30:00	\N	7	CIV GADDIE	1stLt MEIER	18:00:00
1803	2024-02-05	08:30:00	IR3201	simulator	10:30:00	\N	8	CIV HAMMES	1stLt RODTS	09:00:00
1804	2024-02-05	20:30:00	IR3202	simulator	22:30:00	\N	9	CIV GIBSON	Capt ROSER	21:00:00
1805	2024-02-05	11:30:00	PM SDO	duty	17:30:00	\N	10	Capt ROSS	\N	\N
1806	2024-02-05	18:30:00	IR3202	simulator	20:30:00	\N	10	CIV SIMMONS	Capt ROSS	19:00:00
1807	2024-02-05	18:00:00	IR3202	simulator	20:00:00	\N	11	CIV GIBSON	LTJG SEEPE	18:30:00
1808	2024-02-05	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	12	LTJG WINKLER	\N	\N
1809	2024-02-06	18:00:00	IWO	duty	05:30:00	\N	1	LTJG ASHER	\N	\N
1810	2024-02-06	07:30:00	IR2101	simulator	09:30:00	\N	2	CIV RAUENHORST	LTJG DOMLER	08:00:00
1811	2024-02-06	06:30:00	IR3202	simulator	08:30:00	\N	3	CIV HAMMES	LTJG FIGUEROA	07:00:00
1812	2024-02-06	08:00:00	IR3203	simulator	10:00:00	\N	4	CIV ROMAN	LTJG GRAY	08:30:00
1813	2024-02-06	08:30:00	IR3202	simulator	10:30:00	\N	5	CIV GOODMAN	1stLt KENT	09:00:00
1814	2024-02-06	10:30:00	IR3202	flight	13:45:00	O/I	6	Capt THROCKMORTON	LTJG MARKERT	12:15:00
1815	2024-02-06	13:30:00	IR3203	flight	16:45:00	RTB	6	Capt THROCKMORTON	LTJG MARKERT	15:15:00
1816	2024-02-06	09:30:00	IR3204	simulator	11:30:00	\N	7	CIV FARLEY	1stLt MEIER	10:00:00
1817	2024-02-06	06:00:00	IR3202	flight	09:15:00	O/I	8	LCDR RIGGS	1stLt RODTS	07:45:00
1818	2024-02-06	09:00:00	IR3203	flight	12:15:00	RTB	8	LCDR RIGGS	1stLt RODTS	10:45:00
1819	2024-02-06	17:00:00	IR3203	simulator	19:00:00	\N	9	CIV SIMMONS	Capt ROSER	17:30:00
1820	2024-02-06	10:30:00	IR3204	simulator	12:30:00	\N	10	CIV ROMAN	Capt ROSS	11:00:00
1821	2024-02-06	09:00:00	IR3203	simulator	11:00:00	\N	11	CIV HAMMES	LTJG SEEPE	09:30:00
1822	2024-02-06	13:00:00	IR2101	simulator	15:00:00	\N	12	CIV GIBSON	LTJG WINKLER	13:30:00
1823	2024-02-07	06:00:00	IR3204	simulator	08:00:00	\N	2	CIV HAMMES	LTJG DOMLER	06:30:00
1824	2024-02-07	07:00:00	IR3203	simulator	09:00:00	\N	3	CIV HEIMANN	LTJG FIGUEROA	07:30:00
1825	2024-02-07	11:00:00	IR2101	simulator	13:00:00	\N	3	CIV HAMMES	LTJG FIGUEROA	11:30:00
1826	2024-02-07	08:30:00	IR2101	simulator	10:30:00	\N	4	CIV HAMMES	LTJG GRAY	09:00:00
1827	2024-02-07	12:30:00	IR3204	simulator	14:30:00	\N	4	CIV SANDERS	LTJG GRAY	13:00:00
1828	2024-02-07	09:00:00	IR3203	simulator	11:00:00	\N	5	CIV RAUENHORST	1stLt KENT	09:30:00
1829	2024-02-07	13:00:00	IR2101	simulator	15:00:00	\N	5	CIV YOSKOVICH	1stLt KENT	13:30:00
1830	2024-02-07	16:00:00	IR2101	simulator	18:00:00	\N	6	CIV GOODMAN	LTJG MARKERT	16:30:00
1831	2024-02-07	20:00:00	IR3204	simulator	22:00:00	\N	6	CIV POGUE	LTJG MARKERT	20:30:00
1832	2024-02-07	13:30:00	IR2101	simulator	15:30:00	\N	7	CIV CAREY	1stLt MEIER	14:00:00
1833	2024-02-07	10:30:00	IR2101	simulator	12:30:00	\N	8	CIV ROMAN	1stLt RODTS	11:00:00
1834	2024-02-07	16:30:00	IR3204	simulator	18:30:00	\N	8	CIV MUELLER	1stLt RODTS	17:00:00
1835	2024-02-07	08:00:00	IR2101	simulator	10:00:00	\N	9	CIV ROMAN	Capt ROSER	08:30:00
1836	2024-02-07	11:30:00	IR3204	simulator	13:30:00	\N	9	CIV RAUENHORST	Capt ROSER	12:00:00
1837	2024-02-07	05:30:00	AM SDO	duty	11:30:00	\N	10	Capt ROSS	\N	\N
1838	2024-02-07	17:00:00	IR3205	simulator	19:00:00	\N	10	CIV RICHARDSON	Capt ROSS	17:30:00
1839	2024-02-07	05:30:00	IR2101	simulator	07:30:00	\N	11	CIV ROMAN	LTJG SEEPE	06:00:00
1840	2024-02-07	09:30:00	IR3204	simulator	11:30:00	\N	11	CIV HEIMANN	LTJG SEEPE	10:00:00
1841	2024-02-07	11:30:00	PM SDO	duty	17:30:00	\N	12	LTJG WINKLER	\N	\N
1842	2024-02-09	08:30:00	IR4101	flight	11:45:00	X/C; NMM-CLL; BLVT	2	LT BAKER	LTJG DOMLER	10:15:00
1843	2024-02-09	12:30:00	IR4102	flight	15:45:00	X/C; CLL-LBB	2	LT BAKER	LTJG DOMLER	14:15:00
1844	2024-02-09	16:30:00	IR4103	flight	19:45:00	X/C; LBB-SAF	2	LT BAKER	LTJG DOMLER	18:15:00
1845	2024-02-09	08:00:00	IR4101	flight	11:15:00	X/C; NMM-CWF	3	LT O'SULLIVAN	LTJG FIGUEROA	09:45:00
1846	2024-02-09	12:30:00	IR4102	flight	15:45:00	X/C; CWF-EFD	3	LT O'SULLIVAN	LTJG FIGUEROA	14:15:00
1847	2024-02-09	16:30:00	IR4103	flight	19:45:00	X/C; EFD-AUS	3	LT O'SULLIVAN	LTJG FIGUEROA	18:15:00
1848	2024-02-09	08:30:00	IR4101	flight	11:45:00	X/C; NMM-CLL; BLVT	4	LT CORBETT	LTJG GRAY	10:15:00
1849	2024-02-09	12:30:00	IR4102	flight	15:45:00	X/C; CLL-LBB	4	LT CORBETT	LTJG GRAY	14:15:00
1850	2024-02-09	16:30:00	IR4103	flight	19:45:00	X/C; LBB-SAF	4	LT CORBETT	LTJG GRAY	18:15:00
1851	2024-02-09	09:30:00	IR4101	flight	12:45:00	X/C; NMM-CLL	5	ENS PIZZUTI	1stLt KENT	11:15:00
1852	2024-02-09	13:30:00	IR4102	flight	16:45:00	X/C; CLL-LBB	5	ENS PIZZUTI	1stLt KENT	15:15:00
1853	2024-02-09	17:30:00	IR4103	flight	20:45:00	X/C; LBB-SAF	5	ENS PIZZUTI	1stLt KENT	19:15:00
1854	2024-02-09	09:00:00	IR4101	flight	12:15:00	X/C; NMM-CLL; BLVT	6	LTJG SMITH	LTJG MARKERT	10:45:00
1855	2024-02-09	13:00:00	IR4102	flight	16:15:00	X/C; CLL-LBB	6	LTJG SMITH	LTJG MARKERT	14:45:00
1856	2024-02-09	17:00:00	IR4103	flight	20:15:00	X/C; LBB-SAF	6	LTJG SMITH	LTJG MARKERT	18:45:00
1857	2024-02-09	10:30:00	IR4101	flight	13:45:00	X/C; NMM-CLL; BLVT	7	Capt HINKAMP	1stLt MEIER	12:15:00
1858	2024-02-09	14:30:00	IR4102	flight	17:45:00	X/C; CLL-LBB	7	Capt HINKAMP	1stLt MEIER	16:15:00
1859	2024-02-09	18:30:00	IR4103	flight	21:45:00	X/C; LBB-SAF	7	Capt HINKAMP	1stLt MEIER	20:15:00
1860	2024-02-09	09:00:00	IR4101	flight	12:15:00	X/C; NMM-TYS	8	LT MACGRIFF	1stLt RODTS	10:45:00
1861	2024-02-09	13:00:00	IR4102	flight	16:15:00	X/C; TYS-NPA	8	LT MACGRIFF	1stLt RODTS	14:45:00
1862	2024-02-09	09:30:00	IR4101	flight	12:45:00	X/C; NMM-CLL	9	LTJG ROSSIELLO	Capt ROSER	11:15:00
1863	2024-02-09	13:30:00	IR4102	flight	16:45:00	X/C; PWA-COS	9	LTJG ROSSIELLO	Capt ROSER	15:15:00
1864	2024-02-09	17:30:00	IR4103	flight	20:45:00	X/C; LBB-SAF	9	LTJG ROSSIELLO	Capt ROSER	19:15:00
1865	2024-02-09	08:00:00	IR4101	flight	11:15:00	X/C; NMM-MEI	10	LT CROWELL	Capt ROSS	09:45:00
1866	2024-02-09	12:00:00	IR4102	flight	15:15:00	X/C; MEI-RYY	10	LT CROWELL	Capt ROSS	13:45:00
1867	2024-02-09	16:00:00	IR4103	flight	19:15:00	X/C; RYY-RDU	10	LT CROWELL	Capt ROSS	17:45:00
1868	2024-02-09	07:30:00	IR4101	flight	10:45:00	X/C; NMM-CWF; BLVT	11	CDR ESTRADA	LTJG SEEPE	09:15:00
1869	2024-02-09	11:30:00	IR4102	flight	14:45:00	X/C; CWF-EFD	11	CDR ESTRADA	LTJG SEEPE	13:15:00
1870	2024-02-09	15:30:00	IR4103	flight	18:45:00	X/C; EFD-AUS	11	CDR ESTRADA	LTJG SEEPE	17:15:00
1871	2024-02-09	06:00:00	IR4102	flight	09:15:00	X/C; LFT-ARA	12	CDR ROREX	LTJG WINKLER	07:45:00
1872	2024-02-09	10:00:00	IR4103	flight	13:15:00	X/C; ARA-LFT	12	CDR ROREX	LTJG WINKLER	11:45:00
1873	2024-02-11	05:30:00	IR4104	flight	08:45:00	X/C RTB; SLC-COS	2	LT BAKER	LTJG DOMLER	07:15:00
1874	2024-02-11	09:00:00	IR4105	flight	12:15:00	X/C RTB; COS-PWA	2	LT BAKER	LTJG DOMLER	10:45:00
1875	2024-02-11	13:00:00	LOG	flight	16:15:00	X/C RTB; PWA-NMM	2	LT BAKER	LTJG DOMLER	14:45:00
1876	2024-02-11	08:30:00	IR4104	flight	11:45:00	X/C RTB; AUS-AEX	3	LT O'SULLIVAN	LTJG FIGUEROA	10:15:00
1877	2024-02-11	12:30:00	IR4105	flight	15:45:00	X/C RTB; AEX-NMM	3	LT O'SULLIVAN	LTJG FIGUEROA	14:15:00
1878	2024-02-11	05:30:00	IR4104	flight	08:45:00	X/C RTB; SLC-COS	4	LT CORBETT	LTJG GRAY	07:15:00
1879	2024-02-11	09:30:00	IR4105	flight	12:45:00	X/C RTB; COS-PWA	4	LT CORBETT	LTJG GRAY	11:15:00
1880	2024-02-11	13:30:00	LOG	flight	16:45:00	X/C RTB; PWA-NMM	4	Maj CORBETT	LTJG GRAY	15:15:00
1881	2024-02-11	05:30:00	IR4104	flight	08:45:00	X/C RTB; SLC-COS	5	ENS PIZZUTI	1stLt KENT	07:15:00
1882	2024-02-11	08:30:00	IR4105	flight	11:45:00	XC/RTB; COS-PWA	5	ENS PIZZUTI	1stLt KENT	10:15:00
1883	2024-02-11	13:00:00	LOG	flight	16:15:00	X/C RTB; PWA-NMM	5	ENS PIZZUTI	1stLt KENT	14:45:00
1884	2024-02-11	06:00:00	IR4104	flight	09:15:00	X/C RTB; SLC-COS	6	LTJG SMITH	LTJG MARKERT	07:45:00
1885	2024-02-11	10:00:00	IR4105	flight	13:15:00	X/C RTB; COS-PWA	6	LTJG SMITH	LTJG MARKERT	11:45:00
1886	2024-02-11	14:00:00	LOG	flight	17:00:00	X/C RTB; PWA-NMM	6	LTJG SMITH	LTJG MARKERT	15:45:00
1887	2024-02-11	05:30:00	IR4104	flight	08:45:00	X/C RTB; SLC-COS	7	Capt HINKAMP	1stLt MEIER	07:15:00
1888	2024-02-11	09:30:00	IR4105	flight	12:45:00	X/C RTB; COS-PWA	7	Capt HINKAMP	1stLt MEIER	11:15:00
1889	2024-02-11	10:00:00	IR4103	flight	13:15:00	X/C RTB; NPA-CWF	8	LT MACGRIFF	1stLt RODTS	11:45:00
1890	2024-02-11	14:00:00	IR4104	flight	17:00:00	X/C RTB; CWF-NMM	8	LT MACGRIFF	1stLt RODTS	15:45:00
1891	2024-02-11	05:30:00	IR4104	flight	08:45:00	X/C RTB; SLC-COS	9	LTJG ROSSIELLO	Capt ROSER	07:15:00
1892	2024-02-11	09:00:00	IR4105	flight	12:15:00	X/C RTB; COS-PWA	9	LTJG ROSSIELLO	Capt ROSER	10:45:00
1893	2024-02-11	13:00:00	LOG	flight	16:15:00	X/C RTB; PWA-NMM	9	LTJG ROSSIELLO	Capt ROSER	14:45:00
1894	2024-02-11	09:30:00	IR4104	flight	12:45:00	X/C RTB; RDU-TYS	10	LT CROWELL	Capt ROSS	11:15:00
1895	2024-02-11	13:30:00	IR4105	flight	16:45:00	X/C RTB; TYS-NMM	10	LT CROWELL	Capt ROSS	15:15:00
1896	2024-02-11	08:30:00	IR4104	flight	11:45:00	X/C RTB; AUS-AEX	11	CDR ESTRADA	LTJG SEEPE	10:15:00
1897	2024-02-11	12:30:00	IR4105	flight	15:45:00	X/C RTB; AEX-NMM	11	CDR ESTRADA	LTJG SEEPE	14:15:00
1898	2024-02-11	13:30:00	LOG	flight	16:45:00	X/C RTB; PWA-NMM	11	Capt HINKAMP	LTJG SEEPE	15:15:00
1899	2024-02-11	09:00:00	IR4104	flight	12:15:00	X/C RTB; LFT-MEI	12	CIV ROREX	LTJG WINKLER	10:45:00
1900	2024-02-11	13:00:00	IR4105	flight	16:15:00	X/C RTB; MEI-NMM	12	CIV ROREX	LTJG WINKLER	14:45:00
1901	2024-02-12	08:30:00	IR3303 (2)	simulator	10:30:00	\N	1	CIV GOODMAN	LTJG ASHER	09:00:00
1902	2024-02-12	15:00:00	IR3301	simulator	17:00:00	\N	2	CIV WINKLER	LTJG DOMLER	15:30:00
1903	2024-02-12	17:30:00	IR3301	simulator	19:30:00	\N	10	CIV WINKLER	Capt ROSS	18:00:00
1904	2024-02-12	20:00:00	IR3301	simulator	22:00:00	\N	12	CIV WINKLER	LTJG WINKLER	20:30:00
1905	2024-02-13	18:00:00	IWO	duty	06:00:00	\N	1	LTJG ASHER	\N	\N
1906	2024-02-13	18:00:00	IR3301	simulator	20:00:00	\N	2	CIV WEBSTER	LTJG DOMLER	18:30:00
1907	2024-02-13	17:30:00	IR3301	simulator	19:30:00	\N	3	CIV WINKLER	LTJG FIGUEROA	18:00:00
1908	2024-02-13	13:00:00	IR4104	flight	16:15:00	O/I	8	Maj CYLKOWSKI	1stLt RODTS	14:45:00
1909	2024-02-13	16:00:00	IR4105	flight	19:15:00	RTB	8	Maj CYLKOWSKI	1stLt RODTS	17:45:00
1910	2024-02-13	08:00:00	IR3301	simulator	10:00:00	\N	11	CIV HAMMES	LTJG SEEPE	08:30:00
1911	2024-02-13	12:30:00	IR3302	simulator	14:30:00	\N	11	CIV WINKLER	LTJG SEEPE	13:00:00
1912	2024-02-13	11:30:00	IR3302	simulator	13:30:00	\N	12	CIV FARLEY	LTJG WINKLER	12:00:00
1913	2024-02-15	13:00:00	IR3490	simulator	15:00:00	\N	1	CIV AUSBROOKS	LTJG ASHER	13:30:00
1914	2024-02-15	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	2	LTJG DOMLER	\N	\N
1915	2024-02-15	18:00:00	IR3490	simulator	20:00:00	\N	3	CIV GADDIE	LTJG FIGUEROA	18:30:00
1916	2024-02-15	11:30:00	IR3301	simulator	13:30:00	\N	4	CIV HAY	LTJG GRAY	12:00:00
1917	2024-02-15	15:30:00	IR3302	simulator	17:30:00	\N	4	CIV GADDIE	LTJG GRAY	16:00:00
1918	2024-02-15	12:00:00	IR3301	simulator	14:00:00	\N	5	CIV CARRIER	1stLt KENT	12:30:00
1919	2024-02-15	07:00:00	IR4105	flight	10:15:00	\N	5	CAPT ASHLOCK	1stLt KENT	08:45:00
1920	2024-02-15	08:30:00	IR4104	flight	11:45:00	O/I	6	Capt SEVY	LTJG MARKERT	10:15:00
1921	2024-02-15	11:30:00	IR4105	flight	14:45:00	RTB	6	Capt SEVY	LTJG MARKERT	13:15:00
1922	2024-02-15	17:00:00	IR3303	simulator	19:00:00	\N	7	CIV ROMAN	1stLt MEIER	17:30:00
1923	2024-02-15	20:30:00	IR3490	simulator	22:30:00	\N	7	CIV GADDIE	1stLt MEIER	21:00:00
1924	2024-02-15	12:30:00	IR3303	simulator	14:30:00	\N	8	CIV POGUE	1stLt RODTS	13:00:00
1925	2024-02-15	17:30:00	IR3490	simulator	19:30:00	\N	8	CIV GOODMAN	1stLt RODTS	18:00:00
1926	2024-02-15	16:00:00	IR3303	simulator	18:00:00	\N	9	CIV SIMMONS	Capt ROSER	16:30:00
1927	2024-02-15	19:30:00	IR3490	simulator	21:30:00	\N	9	CIV ROMAN	Capt ROSER	20:00:00
1928	2024-02-15	15:00:00	IR3302	simulator	17:00:00	\N	10	CIV GOODMAN	Capt ROSS	15:30:00
1929	2024-02-15	20:30:00	IR3303	simulator	22:30:00	\N	10	CIV SIMMONS	Capt ROSS	21:00:00
1930	2024-02-15	06:00:00	AM SDO	duty	14:00:00	\N	11	LTJG SEEPE	\N	\N
1931	2024-02-15	14:00:00	PM SDO	duty	22:00:00	\N	12	LTJG WINKLER	\N	\N
1932	2024-02-16	15:30:00	IR3302	simulator	17:30:00	\N	5	CIV ROMAN	1stLt KENT	16:00:00
1933	2024-02-16	15:00:00	IR3301	simulator	17:00:00	\N	6	CIV FARLEY	LTJG MARKERT	15:30:00
1934	2024-02-20	14:00:00	NTR3101	simulator	16:00:00	\N	1	CIV FARLEY	LTJG ASHER	14:30:00
1935	2024-02-20	18:00:00	NTR2101	simulator	20:00:00	\N	1	CIV STCLAIR	LTJG ASHER	18:30:00
1936	2024-02-20	15:30:00	NTR3101	simulator	17:30:00	\N	2	CIV STCLAIR	LTJG DOMLER	16:00:00
1937	2024-02-20	19:30:00	NTR2101	simulator	21:30:00	\N	2	CIV RAUENHORST	LTJG DOMLER	20:00:00
1938	2024-02-20	16:00:00	NTR3101	simulator	18:00:00	\N	3	CIV RICHARDSON	LTJG FIGUEROA	16:30:00
1939	2024-02-20	11:00:00	IR3303	simulator	13:00:00	\N	4	CIV RICHARDSON	LTJG GRAY	11:30:00
1940	2024-02-20	15:00:00	IR3490	simulator	17:00:00	\N	4	CIV YOSKOVICH	LTJG GRAY	15:30:00
1941	2024-02-20	07:30:00	IR3303	simulator	09:30:00	\N	5	CIV YOSKOVICH	1stLt KENT	08:00:00
1942	2024-02-20	11:30:00	IR3490	simulator	13:30:00	\N	5	CIV FARLEY	1stLt KENT	12:00:00
1943	2024-02-20	06:00:00	IR3302	simulator	08:00:00	\N	6	CIV ROSS	LTJG MARKERT	06:30:00
1944	2024-02-20	10:00:00	IR3303	simulator	12:00:00	\N	6	CIV YOSKOVICH	LTJG MARKERT	10:30:00
1945	2024-02-20	06:30:00	NTR3101	simulator	08:30:00	\N	7	CIV FARLEY	1stLt MEIER	07:00:00
1946	2024-02-20	09:00:00	NTR3101	simulator	11:00:00	\N	9	CIV FARLEY	Capt ROSER	09:30:00
1947	2024-02-20	09:30:00	IR3490	simulator	11:30:00	\N	10	CIV GADDIE	Capt ROSS	10:00:00
1948	2024-02-20	13:30:00	NTR3101	simulator	15:30:00	\N	10	CIV RICHARDSON	Capt ROSS	14:00:00
1949	2024-02-20	07:00:00	NTR3101	simulator	09:00:00	\N	11	CIV GADDIE	LTJG SEEPE	07:30:00
1950	2024-02-20	05:30:00	NTR3101	simulator	07:30:00	\N	12	CIV GIANAKOS	LTJG WINKLER	06:00:00
1951	2024-02-21	12:00:00	NTR2101	simulator	14:00:00	\N	1	CIV SAYLOR	LTJG ASHER	12:30:00
1952	2024-02-21	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	2	LTJG DOMLER	\N	\N
1953	2024-02-21	19:00:00	NTR2101	simulator	21:00:00	\N	3	CIV SIMMONS	LTJG FIGUEROA	19:30:00
1954	2024-02-21	05:30:00	NTR3101	simulator	07:30:00	\N	4	CIV GIANAKOS	LTJG GRAY	06:00:00
1955	2024-02-21	09:30:00	NTR2101	simulator	11:30:00	\N	4	CIV CAREY	LTJG GRAY	10:00:00
1956	2024-02-21	06:00:00	NTR3101	simulator	08:00:00	\N	5	CIV YOSKOVICH	1stLt KENT	06:30:00
1957	2024-02-21	10:00:00	NTR2101	simulator	12:00:00	\N	5	CIV CARRIER	1stLt KENT	10:30:00
1958	2024-02-21	17:00:00	IR3490	simulator	19:00:00	\N	6	CIV POGUE	LTJG MARKERT	17:30:00
1959	2024-02-21	20:30:00	IR3490	simulator	22:30:00	\N	6	CIV DOHERTY	LTJG MARKERT	21:00:00
1960	2024-02-21	10:30:00	NTR2101	simulator	12:30:00	\N	7	CIV GADDIE	1stLt MEIER	11:00:00
1961	2024-02-21	12:30:00	NTR3101	simulator	14:30:00	\N	8	CIV CARRIER	1stLt RODTS	13:00:00
1962	2024-02-21	17:30:00	NTR2101	simulator	19:30:00	\N	9	CIV SANDERS	Capt ROSER	18:00:00
1963	2024-02-21	16:00:00	NTR2101	simulator	18:00:00	\N	10	CIV RAUENHORST	Capt ROSS	16:30:00
1964	2024-02-21	20:00:00	NTR2101	simulator	22:00:00	\N	11	CIV SANDERS	LTJG SEEPE	20:30:00
1965	2024-02-21	13:00:00	NTR2101	simulator	15:00:00	\N	12	CIV GADDIE	LTJG WINKLER	13:30:00
1966	2024-02-22	16:30:00	NTR4101	flight	19:33:00	\N	1	Maj HOLSEY	LTJG ASHER	18:15:00
1967	2024-02-22	16:30:00	NTR4101	flight	19:33:00	\N	2	Capt SEVY	LTJG DOMLER	18:15:00
1968	2024-02-22	13:30:00	PM SDO	duty	21:30:00	\N	3	LTJG FIGUEROA	\N	\N
1969	2024-02-22	19:30:00	NTR4101	flight	22:27:00	\N	4	LTJG SMITH	LTJG GRAY	21:15:00
1970	2024-02-22	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	5	1stLt KENT	\N	\N
1971	2024-02-22	15:00:00	NTR3101	simulator	17:00:00	\N	6	CIV RICHARDSON	LTJG MARKERT	15:30:00
1972	2024-02-22	19:00:00	NTR2101	simulator	21:00:00	\N	6	CIV RAUENHORST	LTJG MARKERT	19:30:00
1973	2024-02-22	05:30:00	AM SDO	duty	13:30:00	\N	7	1stLt MEIER	\N	\N
1974	2024-02-22	11:00:00	NTR2101	simulator	13:00:00	\N	8	CIV HANSCHKE	1stLt RODTS	11:30:00
1975	2024-02-22	21:30:00	IWO	duty	05:30:00	\N	9	Capt ROSER	\N	\N
1976	2024-02-22	17:30:00	NTR4101	flight	20:33:00	MB W/ SEEPE	10	CIV FINCH	Capt ROSS	19:15:00
1977	2024-02-22	17:00:00	NTR4101	flight	20:03:00	MB	11	LtCol MINICK	LTJG SEEPE	18:45:00
1978	2024-02-23	13:30:00	PM SDO	duty	21:30:00	\N	6	LTJG MARKERT	\N	\N
1979	2024-02-23	21:30:00	IWO	duty	05:30:00	\N	8	1stLt RODTS	\N	\N
1980	2024-02-23	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	10	Capt ROSS	\N	\N
1981	2024-02-25	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
1982	2024-02-27	17:00:00	NTR4101	flight	20:03:00	\N	3	Maj KOT	LTJG FIGUEROA	18:45:00
1983	2024-02-27	16:30:00	NTR4101	flight	19:33:00	O/I; FCLP’S BOTH LEGS	5	LTJG ROSSIELLO 	1stLt KENT	18:15:00
1984	2024-02-27	19:30:00	NTR4102	flight	22:33:00	RTB; FCLP’S BOTH LEGS	5	LTJG ROSSIELLO	1stLt KENT	21:15:00
1985	2024-02-27	16:30:00	NTR4101	flight	19:33:00	O/I; FCLP’S BOTH LEGS	6	CIV PANKHURST	LTJG MARKERT	18:15:00
1986	2024-02-27	19:30:00	NTR4102	flight	22:33:00	RTB; FCLP’S BOTH LEGS	6	CIV PANKHURST	LTJG MARKERT	21:15:00
1987	2024-02-27	16:30:00	NTR4101	flight	19:33:00	O/I; FCLP’S BOTH LEGS	9	LTJG SMITH	Capt ROSER	18:15:00
1988	2024-02-27	19:30:00	NTR4102	flight	22:33:00	RTB; FCLP’S BOTH LEGS	9	LTJG SMITH	Capt ROSER	21:15:00
1989	2024-02-27	16:30:00	NTR4101	flight	19:33:00	\N	12	Capt LEPICK	LTJG WINKLER	18:15:00
1990	2024-02-28	17:00:00	NTR4102	flight	20:03:00	\N	1	LtCol MINICK	LTJG ASHER	18:45:00
1991	2024-02-28	16:30:00	NTR4102	flight	19:33:00	\N	2	Capt LEPICK	LTJG DOMLER	18:15:00
1992	2024-02-28	16:30:00	NTR4102	flight	22:33:00	MB W/ROSS	3	Maj CORBETT	LTJG FIGUEROA	21:15:00
1993	2024-02-28	17:30:00	NTR42S1	flight	20:33:00	MB W/SMITH	5	1stLt KENT	\N	19:15:00
1994	2024-02-28	17:30:00	NTR42S1	flight	20:33:00	MB W/SMITH	6	LTJG MARKERT	\N	19:15:00
1995	2024-02-28	16:30:00	NTR4102	flight	19:33:00	\N	7	LT JACKSON	1stLt MEIER	18:15:00
1996	2024-02-28	16:30:00	NTR4101	flight	19:33:00	O/I	8	CIV FINCH	1stLt RODTS	18:15:00
1997	2024-02-28	19:30:00	NTR4102	flight	22:33:00	RTB	8	CIV FINCH	1stLt RODTS	21:15:00
1998	2024-02-28	17:30:00	NTR42S1	flight	20:33:00	MB W/SMITH	9	Capt ROSER	\N	19:15:00
1999	2024-02-28	16:30:00	NTR4102	flight	19:33:00	MB W/FIGUEROA	10	Maj CORBETT	Capt ROSS	18:15:00
2000	2024-02-28	06:30:00	AM SDO	duty	14:30:00	\N	11	LTJG SEEPE	\N	\N
2001	2024-02-28	14:30:00	PM SDO	duty	22:30:00	\N	12	LTJG WINKLER	\N	\N
2002	2024-02-29	10:00:00	FRM3101	simulator	12:00:00	\N	1	CIV AUSBROOKS	LTJG ASHER	10:30:00
2003	2024-02-29	16:30:00	NTR42S1	flight	19:33:00	\N	1	LTJG ASHER	\N	18:15:00
2004	2024-02-29	10:30:00	FRM3101	simulator	12:30:00	\N	2	CIV HAMMES	LTJG DOMLER	11:00:00
2005	2024-02-29	16:30:00	NTR42S1	flight	19:33:00	\N	2	LTJG DOMLER	\N	18:15:00
2006	2024-02-29	16:30:00	NTR42S1	flight	19:33:00	\N	3	LTJG FIGUEROA	\N	18:15:00
2007	2024-02-29	16:30:00	NTR4102	flight	19:33:00	CHASE NTR SOLOS	4	CIV VOHDEN	LTJG GRAY	18:15:00
2008	2024-02-29	12:30:00	FRM3101	simulator	14:30:00	\N	5	CIV ROMAN	1stLt KENT	13:00:00
2009	2024-02-29	17:00:00	NTR42S2	flight	20:03:00	\N	5	1stLt KENT	\N	18:45:00
2010	2024-02-29	13:00:00	FRM3101	simulator	15:00:00	\N	6	CIV POGUE	LTJG MARKERT	13:30:00
2011	2024-02-29	17:00:00	NTR42S2	flight	20:03:00	\N	6	LTJG MARKERT	\N	18:45:00
2012	2024-02-29	14:00:00	FRM3101	simulator	16:00:00	\N	7	CIV GOODMAN	1stLt MEIER	14:30:00
2013	2024-02-29	17:30:00	NTR4102	flight	20:33:00	CHASE NTR SOLO	7	Capt LEPICK	1stLt MEIER	19:15:00
2014	2024-02-29	12:00:00	FRM3101	simulator	14:00:00	\N	8	CIV CARRIER	1stLt RODTS	12:30:00
2015	2024-02-29	17:30:00	NTR42S1	flight	20:33:00	\N	8	1stLt RODTS	\N	19:15:00
2016	2024-02-29	13:30:00	FRM3101	simulator	15:30:00	\N	9	CIV CAREY	Capt ROSER	14:00:00
2017	2024-02-29	17:00:00	NTR42S2	flight	20:03:00	\N	9	Capt ROSER	\N	18:45:00
2018	2024-02-29	11:30:00	FRM3101	simulator	13:30:00	\N	10	CIV GOODMAN	Capt ROSS	12:00:00
2019	2024-02-29	17:00:00	NTR42S1	flight	20:03:00	\N	10	Capt ROSS	\N	18:45:00
2020	2024-02-29	17:00:00	NTR4102	flight	20:03:00	CHASE NTR SOLOS	11	CIV FINCH	LTJG SEEPE	18:45:00
2021	2024-03-01	12:30:00	NTR4186	flight	15:33:00	FSL; STAGE MEI	1	LCDR PANG	LTJG ASHER	14:15:00
2022	2024-03-01	13:30:00	NTR4186	flight	16:33:00	HS/SD; FSL MB W/RODTS	2	LT PRUITT	LTJG DOMLER	15:15:00
2023	2024-03-01	13:30:00	NTR4186	flight	16:03:00	CS/HS; FSL	3	LTJG ROSSIELLO	LTJG FIGUEROA	14:45:00
2024	2024-03-01	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
2025	2024-03-01	09:30:00	RDO	duty	11:30:00	\N	5	1stLt KENT	\N	\N
2026	2024-03-01	14:30:00	FRM3102	simulator	16:30:00	\N	6	CIV POGUE	LTJG MARKERT	15:00:00
2027	2024-03-01	11:15:00	PM SDO	duty	16:45:00	\N	7	1stLt MEIER	\N	\N
2028	2024-03-01	13:30:00	NTR4186	flight	16:03:00	CS/HS; FSL	8	LT PRUITT	1stLt RODTS	14:45:00
2029	2024-03-01	05:30:00	AM SDO	duty	11:15:00	\N	9	Capt ROSER	\N	\N
2030	2024-03-01	13:30:00	NTR4186	flight	16:33:00	HS/SD; FSL MB W/FIGUEROA	10	LTJG ROSSIELLO	Capt ROSS	15:15:00
2031	2024-03-01	15:30:00	FRM3101	simulator	17:30:00	\N	11	CIV SANDERS	LTJG SEEPE	16:00:00
2032	2024-03-01	16:00:00	FRM3101	simulator	18:00:00	\N	12	CIV RAUENHORST	LTJG WINKLER	16:30:00
2033	2024-03-04	16:30:00	NTR42S2	flight	19:33:00	\N	1	LTJG ASHER	\N	18:15:00
2034	2024-03-04	16:30:00	NTR42S2	flight	19:33:00	\N	2	LTJG DOMLER	\N	18:15:00
2035	2024-03-04	17:00:00	NTR42S2	flight	20:03:00	\N	3	LTJG FIGUEROA	\N	18:45:00
2036	2024-03-04	16:30:00	NTR4102	flight	19:33:00	CHASE NTR SOLOS	4	LCDR THYBERG	LTJG GRAY	18:15:00
2037	2024-03-04	13:00:00	FRM3102	simulator	15:00:00	\N	5	CIV SAYLOR	1stLt KENT	13:30:00
2038	2024-03-04	12:30:00	FRM3103	simulator	14:30:00	\N	6	CIV SANDERS	LTJG MARKERT	13:00:00
2039	2024-03-04	13:00:00	NTR4186	flight	16:03:00	FSL; MB W/SEEPE	7	LCDR OBOYLE	1stLt MEIER	14:45:00
2040	2024-03-04	17:00:00	NTR42S1	flight	20:03:00	\N	7	1stLt MEIER	\N	18:45:00
2041	2024-03-04	17:00:00	NTR42S2	flight	20:03:00	\N	8	1stLt RODTS	\N	18:45:00
2042	2024-03-04	14:00:00	FRM3102	simulator	16:00:00	\N	9	CIV KNIGHT	Capt ROSER	14:30:00
2043	2024-03-04	16:30:00	NTR42S2	flight	19:33:00	\N	10	Capt ROSS	\N	18:15:00
2044	2024-03-04	13:00:00	NTR4186	flight	17:03:00	FSL; MB W/MEIER	11	LCDR OBOYLE	LTJG SEEPE	15:45:00
2045	2024-03-04	17:00:00	NTR42S1	flight	20:03:00	\N	11	LTJG SEEPE	\N	18:45:00
2046	2024-03-04	17:00:00	NTR4102	flight	20:03:00	\N	12	LT WALLACE	LTJG WINKLER	18:45:00
2047	2024-03-05	13:30:00	RDO	duty	16:45:00	\N	1	LTJG ASHER	\N	\N
2048	2024-03-05	18:00:00	FRM3102	simulator	20:00:00	\N	2	CIV POGUE	LTJG DOMLER	18:30:00
2049	2024-03-05	13:00:00	FRM3101	simulator	15:00:00	\N	3	CIV POGUE	LTJG FIGUEROA	13:30:00
2050	2024-03-05	16:30:00	NTR42S1	flight	19:33:00	\N	4	LTJG GRAY	\N	18:15:00
2051	2024-03-05	11:00:00	FRM3103	simulator	13:00:00	\N	5	CIV SAYLOR	1stLt KENT	11:30:00
2052	2024-03-05	10:00:00	FRM6101	simulator	12:00:00	\N	6	LTJG MARKERT	\N	10:30:00
2053	2024-03-05	16:30:00	NTR42S2	flight	19:33:00	\N	7	1stLt MEIER	\N	18:15:00
2054	2024-03-05	20:30:00	FRM3102	simulator	22:30:00	\N	8	CIV CAREY	1stLt RODTS	21:00:00
2055	2024-03-05	12:00:00	FRM3103	simulator	14:00:00	\N	9	CIV CARRIER	Capt ROSER	12:30:00
2056	2024-03-05	18:30:00	FRM3101	simulator	20:30:00	\N	10	CIV CAREY	Capt ROSS	19:00:00
2057	2024-03-05	16:30:00	NTR42S2	flight	19:33:00	\N	11	LTJG SEEPE	\N	18:15:00
2058	2024-03-05	16:30:00	NTR42S1	flight	19:33:00	\N	12	LTJG WINKLER	\N	18:15:00
2059	2024-03-06	17:30:00	NTR42S2	flight	20:33:00	\N	1	LTJG ASHER	\N	19:15:00
2060	2024-03-06	10:30:00	FRM3103	simulator	12:30:00	\N	2	CIV GIANAKOS	LTJG DOMLER	11:00:00
2061	2024-03-06	17:30:00	NTR42S2	flight	20:33:00	\N	2	LTJG DOMLER	\N	19:15:00
2062	2024-03-06	11:00:00	FRM3102	simulator	13:00:00	\N	3	CIV HANSCHKE	LTJG FIGUEROA	11:30:00
2063	2024-03-06	17:00:00	NTR42S2	flight	20:03:00	\N	3	LTJG FIGUEROA	\N	18:45:00
2064	2024-03-06	14:00:00	FRM3101	simulator	16:00:00	\N	4	CIV CAREY	LTJG GRAY	14:30:00
2065	2024-03-06	17:30:00	NTR42S1	flight	20:33:00	\N	4	LTJG GRAY	\N	19:15:00
2066	2024-03-06	11:00:00	FRM6101	simulator	13:00:00	\N	5	1stLt KENT	\N	11:30:00
2067	2024-03-06	14:00:00	FRM6102	simulator	16:00:00	\N	6	LTJG MARKERT	\N	14:30:00
2068	2024-03-06	13:30:00	AN3102	simulator	15:30:00	\N	7	CIV YOSKOVICH	1stLt MEIER	14:00:00
2069	2024-03-06	17:00:00	NTR42S2	flight	20:03:00	\N	7	1stLt MEIER	\N	18:45:00
2070	2024-03-06	11:30:00	FRM3103	simulator	13:30:00	\N	8	CIV ROMAN	1stLt RODTS	12:00:00
2071	2024-03-06	17:00:00	NTR42S2	flight	20:03:00	\N	8	1stLt RODTS	\N	18:45:00
2072	2024-03-06	11:00:00	FRM6101	simulator	13:00:00	\N	9	Capt ROSER	\N	11:30:00
2073	2024-03-06	12:00:00	FRM3103	simulator	14:00:00	\N	10	CIV EPPS	Capt ROSS	12:30:00
2074	2024-03-06	17:30:00	NTR42S2	flight	20:33:00	\N	10	Capt ROSS	\N	19:15:00
2075	2024-03-06	10:00:00	FRM3102	simulator	12:00:00	\N	11	CIV SANDERS	LTJG SEEPE	10:30:00
2076	2024-03-06	17:00:00	NTR42S2	flight	20:03:00	\N	11	LTJG SEEPE	\N	18:45:00
2077	2024-03-06	17:00:00	NTR42S1	flight	20:03:00	\N	12	LTJG WINKLER	\N	18:45:00
2078	2024-03-07	10:00:00	FRM3102	simulator	12:00:00	\N	1	CIV SANDERS	LTJG ASHER	10:30:00
2079	2024-03-07	14:00:00	FRM3103	simulator	16:00:00	\N	1	CIV KNIGHT	LTJG ASHER	14:30:00
2080	2024-03-07	10:00:00	FRM6101	simulator	12:00:00	\N	2	LTJG DOMLER	\N	10:30:00
2081	2024-03-07	09:30:00	FRM3103	simulator	11:30:00	\N	3	CIV HEIMANN	LTJG FIGUEROA	10:00:00
2082	2024-03-07	13:00:00	FRM3102	simulator	15:00:00	\N	4	CIV STERLING	LTJG GRAY	13:30:00
2083	2024-03-07	17:00:00	NTR42S2	flight	20:03:00	\N	4	LTJG GRAY	\N	18:45:00
2084	2024-03-07	08:00:00	FRM6102	simulator	10:00:00	\N	5	1stLt KENT	\N	08:30:00
2085	2024-03-07	11:30:00	FRM2101	simulator	13:30:00	\N	5	CIV RAUENHORST	1stLt KENT	12:00:00
2086	2024-03-07	09:00:00	FRM2101	simulator	11:00:00	\N	6	CIV RAUENHORST	LTJG MARKERT	09:30:00
2087	2024-03-07	10:30:00	FRM3103	simulator	12:30:00	\N	7	CIV CAREY	1stLt MEIER	11:00:00
2088	2024-03-07	17:00:00	NTR42S2	flight	20:03:00	\N	7	1stLt MEIER	\N	18:45:00
2089	2024-03-07	10:00:00	FRM6101	simulator	12:00:00	\N	8	1stLt RODTS	\N	10:30:00
2090	2024-03-07	08:00:00	FRM6102	simulator	10:00:00	\N	9	Capt ROSER	\N	08:30:00
2091	2024-03-07	12:00:00	FRM2101	simulator	14:00:00	\N	9	CIV RICHARDSON	Capt ROSER	12:30:00
2092	2024-03-07	10:00:00	FRM6101	simulator	12:00:00	\N	10	Capt ROSS	\N	10:30:00
2093	2024-03-07	17:00:00	NTR42S2	flight	20:03:00	\N	11	LTJG SEEPE	\N	18:45:00
2094	2024-03-07	13:30:00	FRM3102	simulator	15:30:00	\N	12	CIV CARRIER	LTJG WINKLER	14:00:00
2095	2024-03-07	17:00:00	NTR42S2	flight	20:03:00	\N	12	LTJG WINKLER	\N	18:45:00
2096	2024-02-14	06:30:00	IR4104	flight	09:45:00	O/I	4	LT CROWELL	LTJG GRAY	08:15:00
2097	2024-02-14	07:00:00	IR4105	flight	10:15:00	\N	10	Capt SHARBER	Capt ROSS	08:45:00
2098	2024-02-14	09:30:00	IR4105	flight	12:45:00	RTB	4	LT CROWELL	LTJG GRAY	11:15:00
2099	2024-02-14	10:00:00	IR4105	flight	13:15:00	\N	5	CAPT ASHLOCK	1stLt KENT	11:45:00
2100	2024-02-14	05:30:00	IR3303	simulator	07:30:00	\N	12	CIV HAMMES	LTJG WINKLER	06:00:00
2101	2024-02-14	06:00:00	IR3301	simulator	08:00:00	\N	7	CIV FARLEY	1stLt Meier	06:30:00
2102	2024-02-14	06:30:00	IR3303	simulator	08:30:00	\N	11	CIV RAUENHORST	LTJG SEEPE	07:00:00
2103	2024-02-14	09:30:00	IR3490	simulator	11:30:00	\N	12	CIV TAYLOR	LTJG WINKLER	10:00:00
2104	2024-02-14	10:00:00	IR3302	simulator	12:00:00	\N	7	CIV MEULLER	1stLt MEIER	10:30:00
2105	2024-02-14	10:30:00	IR3302	simulator	12:30:00	\N	3	CIV HAMMES	LTJG FIGUEROA	11:00:00
2106	2024-02-14	11:00:00	IR3490	simulator	13:00:00	\N	11	CIV STCLAIR	LTJG SEEPE	11:30:00
2107	2024-02-14	11:30:00	IR3301	simulator	13:30:00	\N	8	CIV SIMMONS	1stLt RODTS	12:00:00
2108	2024-02-14	12:00:00	IR3301	simulator	14:00:00	\N	9	CIV TAYLOR	Capt ROSER	12:30:00
2109	2024-02-14	13:30:00	IR3301	simulator	15:30:00	\N	10	CIV GADDIE	Capt ROSS	14:00:00
2110	2024-02-14	14:00:00	IR3303	simulator	16:00:00	\N	2	CIV RAUENHORST	LTJG DOMLER	14:30:00
2111	2024-02-14	14:30:00	IR3303	simulator	16:30:00	\N	3	CIV DOHERTY	LTJG FIGUEROA	15:00:00
2112	2024-02-14	15:30:00	IR3302	simulator	17:30:00	\N	8	CIV POGUE	1stLt RODTS	16:00:00
2113	2024-02-14	17:00:00	IR3302	simulator	19:00:00	\N	9	CIV DOHERTY	Capt ROSER	17:30:00
2114	2024-02-14	19:30:00	IR3490	simulator	21:30:00	\N	2	CIV DOHERTY	LTJG DOMLER	20:00:00
2115	2024-03-13	15:30:00	FRM4102	flight	18:33:00	\N	3	Maj CYLKOWSKI	LTJG FIGUEROA	17:15:00
2116	2024-03-13	08:15:00	FRM LEAD	flight	11:33:00	O/I	4	Maj KOT	LTJG GRAY	10:15:00
2117	2024-03-13	11:15:00	FRM4101	flight	14:33:00	RTB	4	ENS PIZZUTI	LTJG GRAY	13:15:00
2118	2024-03-13	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	6	LTJG MARKERT	\N	\N
2119	2024-03-13	09:30:00	FRM4102	flight	12:33:00	\N	7	CIV BRUCE	1stLt MEIER	11:15:00
2120	2024-03-13	08:15:00	FRM4101	flight	11:33:00	O/I	11	ENS PIZZUTI	LTJG SEEPE	10:15:00
2121	2024-03-13	11:15:00	FRM LEAD	flight	14:33:00	RTB	11	Maj KOT	LTJG SEEPE	13:15:00
2122	2024-03-13	10:15:00	FRM4101	flight	13:33:00	\N	12	Capt WATT	LTJG WINKLER	12:15:00
2123	2024-03-12	09:45:00	FRM LEAD	flight	13:03:00	O/I	1	Capt SEVY	LTJG ASHER	11:45:00
2124	2024-03-12	12:45:00	FRM4101	flight	16:03:00	RTB; MB	1	Capt WATT	LTJG ASHER	14:45:00
2125	2024-03-12	12:30:00	FRM4102	flight	15:33:00	O/I	2	LT BAKER	LTJG DOMLER	14:15:00
2126	2024-03-12	15:30:00	FRM LEAD	flight	18:33:00	RTB	2	LT BAKER	LTJG DOMLER	17:15:00
2127	2024-03-12	09:45:00	FRM4101	flight	13:03:00	O/I; 2HR BRF	3	Capt WATT	LTJG FIGUEROA	11:45:00
2128	2024-03-12	13:00:00	FRM LEAD	flight	16:03:00	RTB	3	Capt SEVY	LTJG FIGUEROA	14:45:00
2129	2024-03-12	14:00:00	FRM3103	simulator	16:00:00	\N	4	CIV STCLAIR	LTJG GRAY	14:30:00
2130	2024-03-12	18:00:00	FRM2101	simulator	20:00:00	\N	4	CIV CAREY	LTJG GRAY	18:30:00
2131	2024-03-12	12:30:00	FRM LEAD	flight	15:33:00	O/I	5	Capt LEPICK	1stLt KENT	14:15:00
2132	2024-03-12	15:30:00	FRM4102	flight	18:33:00	RTB	5	Capt LEPICK	1stLt KENT	17:15:00
2133	2024-03-12	13:00:00	FRM4102	flight	16:03:00	\N	6	Maj CYLKOWSKI	LTJG MARKERT	14:45:00
2134	2024-03-12	12:15:00	FRM4101	flight	15:33:00	2HR BRF	7	CIV VOHDEN	1stLt MEIER	14:15:00
2135	2024-03-12	12:30:00	FRM4102	flight	15:45:00	\N	8	LTJG ROSSIELLO	1stLt RODTS	14:15:00
2136	2024-03-12	08:30:00	FRM LEAD	flight	11:33:00	O/I	9	LT BALLATO	Capt ROSER	10:15:00
2137	2024-03-12	11:30:00	FRM4102	flight	14:33:00	RTB	9	LT BALLATO	Capt ROSER	13:15:00
2138	2024-03-12	08:30:00	FRM4102	flight	11:33:00	O/I	10	CDR WALKER	Capt ROSS	10:15:00
2139	2024-03-12	11:30:00	FRM LEAD	flight	14:33:00	RTB	10	CDR WALKER	Capt ROSS	13:15:00
2140	2024-03-12	08:00:00	FRM2101	simulator	10:00:00	\N	11	CIV GIANAKOS	LTJG SEEPE	08:30:00
2141	2024-03-12	15:30:00	FRM3103	simulator	17:30:00	\N	12	CIV CAREY	LTJG WINKLER	16:00:00
2142	2024-03-12	20:30:00	FRM2101	simulator	22:30:00	\N	12	CIV SIMMONS	LTJG WINKLER	21:00:00
2143	2023-10-26	20:00:00	IWO	duty	06:00:00	\N	4	LTJG GRAY	\N	\N
2145	2024-01-27	07:00:00	DUTY DRIVER (ON CALL)	duty	17:00:00	\N	4	LTJG GRAY	\N	\N
2166	2024-03-14	14:00:00	PM SDO	duty	21:15:00	\N	3	LTJG FIGUEROA	\N	\N
2167	2024-03-14	07:30:00	FRM4102	flight	10:33:00	\N	1	CIV RAY	LTJG ASHER	09:15:00
2168	2024-03-14	07:00:00	FRM4103	flight	10:03:00	\N	2	ENS PIZZUTI	LTJG DOMLER	08:45:00
2169	2024-03-14	00:00:00	DUTY DRIVER (ON CALL)	duty	23:59:00	\N	4	LTJG GRAY	\N	\N
2170	2024-03-14	15:45:00	RDO	duty	17:45:00	\N	10	Capt ROSS	\N	\N
2171	2024-03-14	09:00:00	FRM LEAD	flight	12:03:00	O/I	11	Maj OEHLMAN	LTJG SEEPE	10:45:00
2172	2024-03-14	12:00:00	FRM4102	flight	15:03:00	RTB	11	Maj CYLKOWSKI	LTJG SEEPE	13:45:00
2173	2024-03-14	09:00:00	FRM4102	flight	12:03:00	O/I	12	Maj CYLKOWSKI	LTJG WINKLER	10:45:00
2174	2024-03-14	12:00:00	FRM LEAD	flight	15:03:00	RTB	12	Capt OEHLMAN	LTJG WINKLER	13:45:00
\.


--
-- Data for Name: home_sna; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.home_sna (id, name, rank) FROM stdin;
1	Asher	LTJG
2	Domler	LTJG
3	Figueroa	LTJG
4	Gray	LTJG
5	Kent	1stLt
6	Markert	LTJG
7	Meier	1stLt
8	Rodts	1stLt
9	Roser	1stLt
10	Ross	Capt
11	Seepe	LTJG
12	Winkler	LTJG
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: home_ezskedevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.home_ezskedevent_id_seq', 2174, true);


--
-- Name: home_sna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.home_sna_id_seq', 12, true);


--
-- Name: django_migrations idx_16387_django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT idx_16387_django_migrations_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions idx_16394_auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT idx_16394_auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups idx_16399_auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT idx_16399_auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions idx_16404_auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT idx_16404_auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log idx_16409_django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT idx_16409_django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type idx_16416_django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT idx_16416_django_content_type_pkey PRIMARY KEY (id);


--
-- Name: auth_permission idx_16423_auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT idx_16423_auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_group idx_16430_auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_16430_auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_user idx_16437_auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_16437_auth_user_pkey PRIMARY KEY (id);


--
-- Name: django_session idx_16443_sqlite_autoindex_django_session_1; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_16443_sqlite_autoindex_django_session_1 PRIMARY KEY (session_key);


--
-- Name: home_sna idx_16449_home_sna_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.home_sna
    ADD CONSTRAINT idx_16449_home_sna_pkey PRIMARY KEY (id);


--
-- Name: home_ezskedevent idx_16456_home_ezskedevent_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.home_ezskedevent
    ADD CONSTRAINT idx_16456_home_ezskedevent_pkey PRIMARY KEY (id);


--
-- Name: idx_16394_auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16394_auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: idx_16394_auth_group_permissions_group_id_permission_id_0cd325b; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX idx_16394_auth_group_permissions_group_id_permission_id_0cd325b ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: idx_16394_auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16394_auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: idx_16399_auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16399_auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: idx_16399_auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16399_auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: idx_16399_auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX idx_16399_auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: idx_16404_auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16404_auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: idx_16404_auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16404_auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: idx_16404_auth_user_user_permissions_user_id_permission_id_14a6; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX idx_16404_auth_user_user_permissions_user_id_permission_id_14a6 ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: idx_16409_django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16409_django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: idx_16409_django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16409_django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: idx_16416_django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX idx_16416_django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: idx_16423_auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16423_auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: idx_16423_auth_permission_content_type_id_codename_01ab375a_uni; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX idx_16423_auth_permission_content_type_id_codename_01ab375a_uni ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: idx_16430_sqlite_autoindex_auth_group_1; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX idx_16430_sqlite_autoindex_auth_group_1 ON public.auth_group USING btree (name);


--
-- Name: idx_16437_sqlite_autoindex_auth_user_1; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX idx_16437_sqlite_autoindex_auth_user_1 ON public.auth_user USING btree (username);


--
-- Name: idx_16443_django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16443_django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_16456_home_ezskedevent_sna_id_af4ea35f; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX idx_16456_home_ezskedevent_sna_id_af4ea35f ON public.home_ezskedevent USING btree (sna_id);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_permission auth_permission_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_user_groups auth_user_groups_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: home_ezskedevent home_ezskedevent_sna_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.home_ezskedevent
    ADD CONSTRAINT home_ezskedevent_sna_id_fkey FOREIGN KEY (sna_id) REFERENCES public.home_sna(id);


--
-- PostgreSQL database dump complete
--

