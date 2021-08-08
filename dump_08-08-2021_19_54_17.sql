--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE post;




--
-- Drop roles
--

DROP ROLE post;


--
-- Roles
--

CREATE ROLE post;
ALTER ROLE post WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md57f3504a67662ee6f264bde4235063e08';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: post
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO post;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: post
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: post
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: post
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "post" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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

--
-- Name: post; Type: DATABASE; Schema: -; Owner: post
--

CREATE DATABASE post WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE post OWNER TO post;

\connect post

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO post;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO post;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO post;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO post;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO post;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO post;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO post;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO post;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO post;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO post;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO post;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO post;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO post;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO post;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO post;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: electroplace_benefits; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_benefits (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    "desc" text NOT NULL
);


ALTER TABLE public.electroplace_benefits OWNER TO post;

--
-- Name: electroplace_benefits_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.electroplace_benefits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.electroplace_benefits_id_seq OWNER TO post;

--
-- Name: electroplace_benefits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.electroplace_benefits_id_seq OWNED BY public.electroplace_benefits.id;


--
-- Name: electroplace_brandlistpage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_brandlistpage (
    basepage_ptr_id integer NOT NULL
);


ALTER TABLE public.electroplace_brandlistpage OWNER TO post;

--
-- Name: electroplace_brandpage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_brandpage (
    basepage_ptr_id integer NOT NULL,
    name character varying(32) NOT NULL,
    desc_brands text NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.electroplace_brandpage OWNER TO post;

--
-- Name: electroplace_catalogpage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_catalogpage (
    basepage_ptr_id integer NOT NULL
);


ALTER TABLE public.electroplace_catalogpage OWNER TO post;

--
-- Name: electroplace_contactpage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_contactpage (
    basepage_ptr_id integer NOT NULL,
    city character varying(250) NOT NULL,
    address character varying(250) NOT NULL,
    address_ru character varying(250),
    phone character varying(30) NOT NULL,
    email character varying(100) NOT NULL,
    tabletime character varying(100) NOT NULL
);


ALTER TABLE public.electroplace_contactpage OWNER TO post;

--
-- Name: electroplace_homepage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_homepage (
    basepage_ptr_id integer NOT NULL
);


ALTER TABLE public.electroplace_homepage OWNER TO post;

--
-- Name: electroplace_newslistpage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_newslistpage (
    basepage_ptr_id integer NOT NULL
);


ALTER TABLE public.electroplace_newslistpage OWNER TO post;

--
-- Name: electroplace_newspage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_newspage (
    basepage_ptr_id integer NOT NULL,
    title_news character varying(128) NOT NULL,
    subtitle character varying(128) NOT NULL,
    text text NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.electroplace_newspage OWNER TO post;

--
-- Name: electroplace_productpage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_productpage (
    basepage_ptr_id integer NOT NULL,
    name character varying(128) NOT NULL,
    image character varying(100) NOT NULL,
    price numeric(8,2) NOT NULL,
    old_price numeric(8,2) NOT NULL,
    screen numeric(3,2) NOT NULL,
    sim integer NOT NULL,
    storage integer NOT NULL,
    color character varying(128) NOT NULL,
    quantity integer NOT NULL,
    is_stock boolean NOT NULL,
    is_new boolean NOT NULL,
    brand_id integer NOT NULL,
    CONSTRAINT electroplace_productpage_quantity_check CHECK ((quantity >= 0)),
    CONSTRAINT electroplace_productpage_sim_check CHECK ((sim >= 0)),
    CONSTRAINT electroplace_productpage_storage_check CHECK ((storage >= 0))
);


ALTER TABLE public.electroplace_productpage OWNER TO post;

--
-- Name: electroplace_productscategorypage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_productscategorypage (
    basepage_ptr_id integer NOT NULL,
    name character varying(32) NOT NULL,
    desc_category text NOT NULL
);


ALTER TABLE public.electroplace_productscategorypage OWNER TO post;

--
-- Name: electroplace_promoslider; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.electroplace_promoslider (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    sort_desc character varying(256) NOT NULL,
    image character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    public_date timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    brand_id integer NOT NULL
);


ALTER TABLE public.electroplace_promoslider OWNER TO post;

--
-- Name: electroplace_promoslider_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.electroplace_promoslider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.electroplace_promoslider_id_seq OWNER TO post;

--
-- Name: electroplace_promoslider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.electroplace_promoslider_id_seq OWNED BY public.electroplace_promoslider.id;


--
-- Name: fcm_django_fcmdevice; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.fcm_django_fcmdevice (
    id integer NOT NULL,
    name character varying(255),
    active boolean NOT NULL,
    date_created timestamp with time zone,
    device_id character varying(150),
    registration_id text NOT NULL,
    type character varying(10) NOT NULL,
    user_id integer
);


ALTER TABLE public.fcm_django_fcmdevice OWNER TO post;

--
-- Name: fcm_django_fcmdevice_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.fcm_django_fcmdevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fcm_django_fcmdevice_id_seq OWNER TO post;

--
-- Name: fcm_django_fcmdevice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.fcm_django_fcmdevice_id_seq OWNED BY public.fcm_django_fcmdevice.id;


--
-- Name: garpix_menu_menuitem; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_menu_menuitem (
    id integer NOT NULL,
    title_for_admin character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    title_ru character varying(100),
    menu_type character varying(100) NOT NULL,
    url character varying(1000),
    is_active boolean NOT NULL,
    target_blank boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    sort integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    page_id integer,
    parent_id integer,
    CONSTRAINT garpix_menu_menuitem_level_check CHECK ((level >= 0)),
    CONSTRAINT garpix_menu_menuitem_lft_check CHECK ((lft >= 0)),
    CONSTRAINT garpix_menu_menuitem_rght_check CHECK ((rght >= 0)),
    CONSTRAINT garpix_menu_menuitem_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.garpix_menu_menuitem OWNER TO post;

--
-- Name: garpix_menu_menuitem_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_menu_menuitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_menu_menuitem_id_seq OWNER TO post;

--
-- Name: garpix_menu_menuitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_menu_menuitem_id_seq OWNED BY public.garpix_menu_menuitem.id;


--
-- Name: garpix_notify_notify; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notify (
    id integer NOT NULL,
    phone character varying(30) NOT NULL,
    telegram_chat_id character varying(200) NOT NULL,
    viber_chat_id character varying(200) NOT NULL,
    viber_secret_key character varying(200) NOT NULL,
    subject character varying(255) NOT NULL,
    text text NOT NULL,
    html text NOT NULL,
    email character varying(255),
    sender_email character varying(255),
    type integer NOT NULL,
    state integer NOT NULL,
    event integer,
    is_read boolean NOT NULL,
    data_json text,
    created_at timestamp with time zone NOT NULL,
    send_at timestamp with time zone,
    sent_at timestamp with time zone,
    category_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.garpix_notify_notify OWNER TO post;

--
-- Name: garpix_notify_notify_files; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notify_files (
    id integer NOT NULL,
    notify_id integer NOT NULL,
    notifyfile_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notify_files OWNER TO post;

--
-- Name: garpix_notify_notify_files_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notify_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notify_files_id_seq OWNER TO post;

--
-- Name: garpix_notify_notify_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notify_files_id_seq OWNED BY public.garpix_notify_notify_files.id;


--
-- Name: garpix_notify_notify_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notify_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notify_id_seq OWNER TO post;

--
-- Name: garpix_notify_notify_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notify_id_seq OWNED BY public.garpix_notify_notify.id;


--
-- Name: garpix_notify_notifycategory; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifycategory (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    template text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.garpix_notify_notifycategory OWNER TO post;

--
-- Name: garpix_notify_notifycategory_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifycategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifycategory_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifycategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifycategory_id_seq OWNED BY public.garpix_notify_notifycategory.id;


--
-- Name: garpix_notify_notifyconfig; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifyconfig (
    id integer NOT NULL,
    periodic integer NOT NULL,
    email_max_day_limit integer NOT NULL,
    email_max_hour_limit integer NOT NULL,
    sms_url character varying(255) NOT NULL,
    sms_api_id character varying(255) NOT NULL,
    sms_from character varying(255) NOT NULL,
    telegram_api_key character varying(255) NOT NULL,
    viber_api_key character varying(255) NOT NULL,
    viber_bot_name character varying(255) NOT NULL,
    is_email_enabled boolean NOT NULL,
    is_sms_enabled boolean NOT NULL,
    is_push_enabled boolean NOT NULL,
    is_telegram_enabled boolean NOT NULL,
    is_viber_enabled boolean NOT NULL,
    viber_success_added_text text NOT NULL,
    viber_failed_added_text text NOT NULL,
    viber_text_for_new_sub text NOT NULL,
    viber_welcome_text text NOT NULL
);


ALTER TABLE public.garpix_notify_notifyconfig OWNER TO post;

--
-- Name: garpix_notify_notifyconfig_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifyconfig_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyconfig_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifyconfig_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifyconfig_id_seq OWNED BY public.garpix_notify_notifyconfig.id;


--
-- Name: garpix_notify_notifyerrorlog; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifyerrorlog (
    id integer NOT NULL,
    error text,
    created_at timestamp with time zone NOT NULL,
    notify_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notifyerrorlog OWNER TO post;

--
-- Name: garpix_notify_notifyerrorlog_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifyerrorlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyerrorlog_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifyerrorlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifyerrorlog_id_seq OWNED BY public.garpix_notify_notifyerrorlog.id;


--
-- Name: garpix_notify_notifyfile; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifyfile (
    id integer NOT NULL,
    file character varying(1000) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.garpix_notify_notifyfile OWNER TO post;

--
-- Name: garpix_notify_notifyfile_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifyfile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyfile_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifyfile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifyfile_id_seq OWNED BY public.garpix_notify_notifyfile.id;


--
-- Name: garpix_notify_notifytemplate; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifytemplate (
    id integer NOT NULL,
    phone character varying(30) NOT NULL,
    telegram_chat_id character varying(200) NOT NULL,
    viber_chat_id character varying(200) NOT NULL,
    viber_secret_key character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    text text NOT NULL,
    html text NOT NULL,
    email character varying(255),
    type integer NOT NULL,
    event integer,
    created_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    send_at timestamp with time zone,
    category_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.garpix_notify_notifytemplate OWNER TO post;

--
-- Name: garpix_notify_notifytemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifytemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifytemplate_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifytemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifytemplate_id_seq OWNED BY public.garpix_notify_notifytemplate.id;


--
-- Name: garpix_notify_notifytemplate_user_lists; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifytemplate_user_lists (
    id integer NOT NULL,
    notifytemplate_id integer NOT NULL,
    notifyuserlist_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notifytemplate_user_lists OWNER TO post;

--
-- Name: garpix_notify_notifytemplate_user_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifytemplate_user_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifytemplate_user_lists_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifytemplate_user_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifytemplate_user_lists_id_seq OWNED BY public.garpix_notify_notifytemplate_user_lists.id;


--
-- Name: garpix_notify_notifyuserlist; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifyuserlist (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    mail_to_all boolean NOT NULL
);


ALTER TABLE public.garpix_notify_notifyuserlist OWNER TO post;

--
-- Name: garpix_notify_notifyuserlist_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifyuserlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyuserlist_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifyuserlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifyuserlist_id_seq OWNED BY public.garpix_notify_notifyuserlist.id;


--
-- Name: garpix_notify_notifyuserlist_user_groups; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifyuserlist_user_groups (
    id integer NOT NULL,
    notifyuserlist_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notifyuserlist_user_groups OWNER TO post;

--
-- Name: garpix_notify_notifyuserlist_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifyuserlist_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyuserlist_user_groups_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifyuserlist_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifyuserlist_user_groups_id_seq OWNED BY public.garpix_notify_notifyuserlist_user_groups.id;


--
-- Name: garpix_notify_notifyuserlistparticipant; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_notifyuserlistparticipant (
    id integer NOT NULL,
    phone character varying(30) NOT NULL,
    telegram_chat_id character varying(200) NOT NULL,
    viber_chat_id character varying(200) NOT NULL,
    viber_secret_key character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    email character varying(255),
    user_id integer,
    user_list_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notifyuserlistparticipant OWNER TO post;

--
-- Name: garpix_notify_notifyuserlistparticipant_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_notifyuserlistparticipant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyuserlistparticipant_id_seq OWNER TO post;

--
-- Name: garpix_notify_notifyuserlistparticipant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_notifyuserlistparticipant_id_seq OWNED BY public.garpix_notify_notifyuserlistparticipant.id;


--
-- Name: garpix_notify_smtpaccount; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_notify_smtpaccount (
    id integer NOT NULL,
    host character varying(255) NOT NULL,
    port integer NOT NULL,
    is_use_tls boolean NOT NULL,
    is_use_ssl boolean NOT NULL,
    sender character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    timeout integer NOT NULL,
    is_active boolean NOT NULL,
    email_hour_used_times integer NOT NULL,
    email_day_used_times integer NOT NULL,
    email_hour_used_date timestamp with time zone NOT NULL,
    email_day_used_date timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_smtpaccount OWNER TO post;

--
-- Name: garpix_notify_smtpaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_notify_smtpaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_smtpaccount_id_seq OWNER TO post;

--
-- Name: garpix_notify_smtpaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_notify_smtpaccount_id_seq OWNED BY public.garpix_notify_smtpaccount.id;


--
-- Name: garpix_page_basepage; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_page_basepage (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    title_ru character varying(255),
    is_active boolean NOT NULL,
    display_on_sitemap boolean NOT NULL,
    slug character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    seo_title character varying(250) NOT NULL,
    seo_title_ru character varying(250),
    seo_keywords character varying(250) NOT NULL,
    seo_keywords_ru character varying(250),
    seo_description text NOT NULL,
    seo_description_ru text,
    seo_author character varying(250) NOT NULL,
    seo_author_ru character varying(250),
    seo_og_type character varying(250) NOT NULL,
    seo_image character varying(100),
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    polymorphic_ctype_id integer,
    CONSTRAINT garpix_page_basepage_level_check CHECK ((level >= 0)),
    CONSTRAINT garpix_page_basepage_lft_check CHECK ((lft >= 0)),
    CONSTRAINT garpix_page_basepage_rght_check CHECK ((rght >= 0)),
    CONSTRAINT garpix_page_basepage_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.garpix_page_basepage OWNER TO post;

--
-- Name: garpix_page_basepage_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_page_basepage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_page_basepage_id_seq OWNER TO post;

--
-- Name: garpix_page_basepage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_page_basepage_id_seq OWNED BY public.garpix_page_basepage.id;


--
-- Name: garpix_page_basepage_sites; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpix_page_basepage_sites (
    id integer NOT NULL,
    basepage_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.garpix_page_basepage_sites OWNER TO post;

--
-- Name: garpix_page_basepage_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.garpix_page_basepage_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_page_basepage_sites_id_seq OWNER TO post;

--
-- Name: garpix_page_basepage_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.garpix_page_basepage_sites_id_seq OWNED BY public.garpix_page_basepage_sites.id;


--
-- Name: garpixcms_page; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.garpixcms_page (
    basepage_ptr_id integer NOT NULL,
    content text NOT NULL,
    content_ru text
);


ALTER TABLE public.garpixcms_page OWNER TO post;

--
-- Name: user_user; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.user_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    phone character varying(30) NOT NULL,
    telegram_chat_id character varying(200) NOT NULL,
    viber_chat_id character varying(200) NOT NULL,
    viber_secret_key character varying(200) NOT NULL
);


ALTER TABLE public.user_user OWNER TO post;

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.user_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO post;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.user_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_groups_id_seq OWNER TO post;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO post;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;


--
-- Name: user_user_user_permissions; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.user_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_user_permissions OWNER TO post;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.user_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_user_permissions_id_seq OWNER TO post;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: electroplace_benefits id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_benefits ALTER COLUMN id SET DEFAULT nextval('public.electroplace_benefits_id_seq'::regclass);


--
-- Name: electroplace_promoslider id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_promoslider ALTER COLUMN id SET DEFAULT nextval('public.electroplace_promoslider_id_seq'::regclass);


--
-- Name: fcm_django_fcmdevice id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.fcm_django_fcmdevice ALTER COLUMN id SET DEFAULT nextval('public.fcm_django_fcmdevice_id_seq'::regclass);


--
-- Name: garpix_menu_menuitem id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_menu_menuitem ALTER COLUMN id SET DEFAULT nextval('public.garpix_menu_menuitem_id_seq'::regclass);


--
-- Name: garpix_notify_notify id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notify_id_seq'::regclass);


--
-- Name: garpix_notify_notify_files id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify_files ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notify_files_id_seq'::regclass);


--
-- Name: garpix_notify_notifycategory id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifycategory ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifycategory_id_seq'::regclass);


--
-- Name: garpix_notify_notifyconfig id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyconfig ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyconfig_id_seq'::regclass);


--
-- Name: garpix_notify_notifyerrorlog id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyerrorlog ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyerrorlog_id_seq'::regclass);


--
-- Name: garpix_notify_notifyfile id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyfile ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyfile_id_seq'::regclass);


--
-- Name: garpix_notify_notifytemplate id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifytemplate_id_seq'::regclass);


--
-- Name: garpix_notify_notifytemplate_user_lists id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifytemplate_user_lists_id_seq'::regclass);


--
-- Name: garpix_notify_notifyuserlist id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyuserlist_id_seq'::regclass);


--
-- Name: garpix_notify_notifyuserlist_user_groups id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist_user_groups ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyuserlist_user_groups_id_seq'::regclass);


--
-- Name: garpix_notify_notifyuserlistparticipant id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyuserlistparticipant_id_seq'::regclass);


--
-- Name: garpix_notify_smtpaccount id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_smtpaccount ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_smtpaccount_id_seq'::regclass);


--
-- Name: garpix_page_basepage id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage ALTER COLUMN id SET DEFAULT nextval('public.garpix_page_basepage_id_seq'::regclass);


--
-- Name: garpix_page_basepage_sites id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage_sites ALTER COLUMN id SET DEFAULT nextval('public.garpix_page_basepage_sites_id_seq'::regclass);


--
-- Name: user_user id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Name: user_user_groups id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);


--
-- Name: user_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add site	6	add_site
22	Can change site	6	change_site
23	Can delete site	6	delete_site
24	Can view site	6	view_site
25	Can add FCM device	7	add_fcmdevice
26	Can change FCM device	7	change_fcmdevice
27	Can delete FCM device	7	delete_fcmdevice
28	Can view FCM device	7	view_fcmdevice
29	Can add Структура страниц	8	add_basepage
30	Can change Структура страниц	8	change_basepage
31	Can delete Структура страниц	8	delete_basepage
32	Can view Структура страниц	8	view_basepage
33	Can add Пункт меню	9	add_menuitem
34	Can change Пункт меню	9	change_menuitem
35	Can delete Пункт меню	9	delete_menuitem
36	Can view Пункт меню	9	view_menuitem
37	Can add Уведомление	10	add_notify
38	Can change Уведомление	10	change_notify
39	Can delete Уведомление	10	delete_notify
40	Can view Уведомление	10	view_notify
41	Can add Категория	11	add_notifycategory
42	Can change Категория	11	change_notifycategory
43	Can delete Категория	11	delete_notifycategory
44	Can view Категория	11	view_notifycategory
45	Can add Настройка	12	add_notifyconfig
46	Can change Настройка	12	change_notifyconfig
47	Can delete Настройка	12	delete_notifyconfig
48	Can view Настройка	12	view_notifyconfig
49	Can add Ошибка отправки уведомления	13	add_notifyerrorlog
50	Can change Ошибка отправки уведомления	13	change_notifyerrorlog
51	Can delete Ошибка отправки уведомления	13	delete_notifyerrorlog
52	Can view Ошибка отправки уведомления	13	view_notifyerrorlog
53	Can add Файл	14	add_notifyfile
54	Can change Файл	14	change_notifyfile
55	Can delete Файл	14	delete_notifyfile
56	Can view Файл	14	view_notifyfile
57	Can add Шаблон	15	add_notifytemplate
58	Can change Шаблон	15	change_notifytemplate
59	Can delete Шаблон	15	delete_notifytemplate
60	Can view Шаблон	15	view_notifytemplate
61	Can add Список пользователей для рассылки	16	add_notifyuserlist
62	Can change Список пользователей для рассылки	16	change_notifyuserlist
63	Can delete Список пользователей для рассылки	16	delete_notifyuserlist
64	Can view Список пользователей для рассылки	16	view_notifyuserlist
65	Can add Участник списка пользователей	17	add_notifyuserlistparticipant
66	Can change Участник списка пользователей	17	change_notifyuserlistparticipant
67	Can delete Участник списка пользователей	17	delete_notifyuserlistparticipant
68	Can view Участник списка пользователей	17	view_notifyuserlistparticipant
69	Can add FCM аккаунт	18	add_notifydevice
70	Can change FCM аккаунт	18	change_notifydevice
71	Can delete FCM аккаунт	18	delete_notifydevice
72	Can view FCM аккаунт	18	view_notifydevice
73	Can add SMTP аккаунт	19	add_smtpaccount
74	Can change SMTP аккаунт	19	change_smtpaccount
75	Can delete SMTP аккаунт	19	delete_smtpaccount
76	Can view SMTP аккаунт	19	view_smtpaccount
77	Can add Страница	20	add_page
78	Can change Страница	20	change_page
79	Can delete Страница	20	delete_page
80	Can view Страница	20	view_page
81	Can add Пользователь	21	add_user
82	Can change Пользователь	21	change_user
83	Can delete Пользователь	21	delete_user
84	Can view Пользователь	21	view_user
85	Can add Главная	22	add_homepage
86	Can change Главная	22	change_homepage
87	Can delete Главная	22	delete_homepage
88	Can view Главная	22	view_homepage
89	Can add Каталог	23	add_catalogpage
90	Can change Каталог	23	change_catalogpage
91	Can delete Каталог	23	delete_catalogpage
92	Can view Каталог	23	view_catalogpage
93	Can add Контакт	24	add_contactpage
94	Can change Контакт	24	change_contactpage
95	Can delete Контакт	24	delete_contactpage
96	Can view Контакт	24	view_contactpage
97	Can add Бренд	25	add_brandspage
98	Can change Бренд	25	change_brandspage
99	Can delete Бренд	25	delete_brandspage
100	Can view Бренд	25	view_brandspage
101	Can add Категория	26	add_productscategory
102	Can change Категория	26	change_productscategory
103	Can delete Категория	26	delete_productscategory
104	Can view Категория	26	view_productscategory
105	Can add Товар	27	add_productpage
106	Can change Товар	27	change_productpage
107	Can delete Товар	27	delete_productpage
108	Can view Товар	27	view_productpage
109	Can add Контакт	28	add_contacts
110	Can change Контакт	28	change_contacts
111	Can delete Контакт	28	delete_contacts
112	Can view Контакт	28	view_contacts
113	Can add Преимущество	29	add_benefits
114	Can change Преимущество	29	change_benefits
115	Can delete Преимущество	29	delete_benefits
116	Can view Преимущество	29	view_benefits
117	Can add Бренд	30	add_brands
118	Can change Бренд	30	change_brands
119	Can delete Бренд	30	delete_brands
120	Can view Бренд	30	view_brands
121	Can add Слайдер	31	add_promoslider
122	Can change Слайдер	31	change_promoslider
123	Can delete Слайдер	31	delete_promoslider
124	Can view Слайдер	31	view_promoslider
125	Can add Список новостей	32	add_newslistpage
126	Can change Список новостей	32	change_newslistpage
127	Can delete Список новостей	32	delete_newslistpage
128	Can view Список новостей	32	view_newslistpage
129	Can add Новость	33	add_newspage
130	Can change Новость	33	change_newspage
131	Can delete Новость	33	delete_newspage
132	Can view Новость	33	view_newspage
133	Can add Категория	26	add_productscategorypage
134	Can change Категория	26	change_productscategorypage
135	Can delete Категория	26	delete_productscategorypage
136	Can view Категория	26	view_productscategorypage
137	Can add Список брендов	34	add_brandlistpage
138	Can change Список брендов	34	change_brandlistpage
139	Can delete Список брендов	34	delete_brandlistpage
140	Can view Список брендов	34	view_brandlistpage
141	Can add Бренд	25	add_brandpage
142	Can change Бренд	25	change_brandpage
143	Can delete Бренд	25	delete_brandpage
144	Can view Бренд	25	view_brandpage
145	Can add Распродажа	35	add_promopage
146	Can change Распродажа	35	change_promopage
147	Can delete Распродажа	35	delete_promopage
148	Can view Распродажа	35	view_promopage
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-08-02 06:55:53.344517+00	1	Contacts object (1)	1	[{"added": {}}]	28	1
2	2021-08-02 06:59:36.746132+00	1	Главная	1	[{"added": {}}]	22	1
3	2021-08-02 07:00:15.992425+00	2	Каталог	1	[{"added": {}}]	23	1
4	2021-08-02 11:08:13.698116+00	1	Apc	1	[{"added": {}}]	30	1
5	2021-08-02 11:09:07.134249+00	2	Apple	1	[{"added": {}}]	30	1
6	2021-08-02 11:09:21.486637+00	3	Digma	1	[{"added": {}}]	30	1
7	2021-08-02 11:09:34.292547+00	4	lg	1	[{"added": {}}]	30	1
8	2021-08-02 11:09:50.91935+00	5	lg-oled	1	[{"added": {}}]	30	1
9	2021-08-02 11:10:05.307511+00	6	oral-b	1	[{"added": {}}]	30	1
10	2021-08-02 11:10:19.921048+00	7	samsung	1	[{"added": {}}]	30	1
11	2021-08-02 11:10:35.444951+00	8	xiaomi	1	[{"added": {}}]	30	1
12	2021-08-02 15:46:20.909336+00	3	Смартфоны	1	[{"added": {}}]	26	1
13	2021-08-02 15:47:15.691485+00	4	Телевизоры	1	[{"added": {}}]	26	1
14	2021-08-02 15:47:42.964751+00	5	Ноутбуки	1	[{"added": {}}]	26	1
15	2021-08-02 15:48:23.69337+00	6	Стиральные машины	1	[{"added": {}}]	26	1
16	2021-08-02 15:48:51.481194+00	7	Холодильники	1	[{"added": {}}]	26	1
17	2021-08-02 15:49:55.048613+00	8	Пылесосы	1	[{"added": {}}]	26	1
18	2021-08-02 15:50:32.49143+00	9	Микроволновки	1	[{"added": {}}]	26	1
19	2021-08-02 15:52:11.294695+00	10	Москва	1	[{"added": {}}]	24	1
20	2021-08-02 15:53:51.655082+00	10	Москва	2	[{"changed": {"fields": ["\\u0410\\u0434\\u0440\\u0435\\u0441 [ru]", "\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430", "E-mail", "\\u0427\\u0430\\u0441\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b"]}}]	24	1
21	2021-08-02 15:55:55.186822+00	11	Apc	1	[{"added": {}}]	25	1
22	2021-08-02 15:56:40.802121+00	12	Apple	1	[{"added": {}}]	25	1
23	2021-08-02 15:57:13.846049+00	13	Digma	1	[{"added": {}}]	25	1
24	2021-08-02 15:57:34.302384+00	14	LG	1	[{"added": {}}]	25	1
25	2021-08-02 15:58:07.270502+00	15	Lg-oled	1	[{"added": {}}]	25	1
26	2021-08-02 15:58:44.65508+00	16	Oral-B	1	[{"added": {}}]	25	1
27	2021-08-02 15:59:10.860238+00	17	Samsung	1	[{"added": {}}]	25	1
28	2021-08-02 15:59:33.912251+00	18	Xiaomi	1	[{"added": {}}]	25	1
29	2021-08-02 16:10:47.902861+00	19	Мультиварка Redmond 0 	1	[{"added": {}}]	27	1
30	2021-08-02 16:12:48.867324+00	20	Смартфон Huawei Mate 40 Pro 128 Mystic Silver	1	[{"added": {}}]	27	1
31	2021-08-02 16:13:49.374031+00	21	Электрочайник Moulinex 0 	1	[{"added": {}}]	27	1
32	2021-08-02 16:15:55.46493+00	23	Пылесос с контейнером для пыли Tefal City Space 0 	1	[{"added": {}}]	27	1
33	2021-08-02 16:18:57.035568+00	24	Смартфон Samsung Galaxy S21 128 Phantom Violet	1	[{"added": {}}]	27	1
34	2021-08-02 16:19:41.452754+00	21	Электрочайник Moulinex 0 	2	[{"changed": {"fields": ["Image"]}}]	27	1
35	2021-08-02 16:19:58.24684+00	23	Пылесос с контейнером для пыли Tefal City Space 0 	2	[{"changed": {"fields": ["Image"]}}]	27	1
36	2021-08-02 16:21:47.614069+00	25	Смартфон Apple iPhone 11 128 White	1	[{"added": {}}]	27	1
37	2021-08-02 16:23:16.616038+00	26	Смартфон Samsung Galaxy A52 128 Awesome Black	1	[{"added": {}}]	27	1
38	2021-08-02 16:24:28.421593+00	27	Смартфон Samsung Galaxy S21 128 Phantom Gray	1	[{"added": {}}]	27	1
39	2021-08-02 16:25:41.90834+00	28	Смартфон Huawei Mate 40 Pro (NOH-NX9) 128 Mystic Silver	1	[{"added": {}}]	27	1
40	2021-08-04 11:09:55.207594+00	29	Смартфон Honor 10X Lite 4 128 Icelandic Frost	1	[{"added": {}}]	27	1
41	2021-08-04 11:15:12.469964+00	30	Смартфон Huawei P40 Pro 128 Silver Fros	1	[{"added": {}}]	27	1
42	2021-08-04 11:16:36.461624+00	31	Смартфон Honor 9X 4 128 Sapphire Blue	1	[{"added": {}}]	27	1
43	2021-08-04 11:17:03.702034+00	31	Смартфон Honor 9X 4 128 Sapphire Blue	2	[{"changed": {"fields": ["Image"]}}]	27	1
44	2021-08-04 11:19:04.138882+00	32	Смартфон Apple iPhone SE 64 Black	1	[{"added": {}}]	27	1
45	2021-08-04 11:20:15.109921+00	27	Смартфон Samsung Galaxy S21 128 Phantom Gray	2	[{"changed": {"fields": ["Image"]}}]	27	1
46	2021-08-05 06:10:52.965377+00	1	Смартфоны	1	[{"added": {}}]	9	1
47	2021-08-05 19:36:08.719743+00	2	Телевизоры	1	[{"added": {}}]	9	1
48	2021-08-05 19:37:24.069504+00	3	Ноутбуки	1	[{"added": {}}]	9	1
49	2021-08-05 19:37:41.086328+00	4	Стиральные машины	1	[{"added": {}}]	9	1
50	2021-08-05 19:37:59.060963+00	5	Холодильники	1	[{"added": {}}]	9	1
51	2021-08-05 19:38:19.677456+00	6	Пылесосы	1	[{"added": {}}]	9	1
52	2021-08-05 19:40:18.013427+00	7	Микроволновки	1	[{"added": {}}]	9	1
53	2021-08-05 19:59:10.938818+00	33	Скидки	1	[{"added": {}}]	26	1
54	2021-08-05 20:24:06.817396+00	8	Скидки	1	[{"added": {}}]	9	1
55	2021-08-05 20:24:15.088171+00	8	Скидки	2	[{"changed": {"fields": ["tree_id"]}}]	9	1
56	2021-08-05 20:26:30.781792+00	8	Скидки	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
57	2021-08-05 20:26:30.881235+00	1	Смартфоны	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
58	2021-08-05 20:27:31.366365+00	2	Телевизоры	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
59	2021-08-05 20:27:31.509471+00	3	Ноутбуки	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
60	2021-08-05 20:27:31.632145+00	4	Стиральные машины	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
61	2021-08-05 20:27:31.749497+00	5	Холодильники	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
62	2021-08-05 20:27:31.917644+00	6	Пылесосы	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
63	2021-08-05 20:27:32.036486+00	7	Микроволновки	2	[{"changed": {"fields": ["\\u0421\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u043a\\u0430"]}}]	9	1
64	2021-08-05 21:24:44.46353+00	19	Мультиварка Redmond 0 	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
65	2021-08-05 21:24:56.717243+00	20	Смартфон Huawei Mate 40 Pro 128 Mystic Silver	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
66	2021-08-05 21:34:09.91118+00	21	Электрочайник Moulinex 0 	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
67	2021-08-05 21:34:29.774651+00	23	Пылесос с контейнером для пыли Tefal City Space 0 	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
68	2021-08-05 21:34:41.412929+00	24	Смартфон Samsung Galaxy S21 128 Phantom Violet	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
69	2021-08-05 21:34:53.820473+00	25	Смартфон Apple iPhone 11 128 White	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
70	2021-08-05 21:35:08.834509+00	26	Смартфон Samsung Galaxy A52 128 Awesome Black	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
71	2021-08-05 21:35:21.96201+00	27	Смартфон Samsung Galaxy S21 128 Phantom Gray	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
72	2021-08-05 21:35:34.010427+00	28	Смартфон Huawei Mate 40 Pro (NOH-NX9) 128 Mystic Silver	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
73	2021-08-05 21:35:44.96415+00	29	Смартфон Honor 10X Lite 4 128 Icelandic Frost	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
74	2021-08-05 21:36:01.405418+00	30	Смартфон Huawei P40 Pro 128 Silver Fros	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
75	2021-08-05 21:36:13.925577+00	31	Смартфон Honor 9X 4 128 Sapphire Blue	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
76	2021-08-05 21:36:31.034422+00	32	Смартфон Apple iPhone SE 64 Black	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	27	1
77	2021-08-05 21:47:54.99956+00	25	Смартфон Apple iPhone 11 128 White	2	[{"changed": {"fields": ["Image"]}}]	27	1
78	2021-08-05 22:06:08.86842+00	1	Микроволновая печь HUNDAI (2021-08-06 01:03:50+03:00)	1	[{"added": {}}]	31	1
79	2021-08-05 22:06:59.001439+00	2	Микроволновая печь HUNDAI (2021-08-06 01:06:25+03:00)	1	[{"added": {}}]	31	1
80	2021-08-07 08:37:49.190312+00	34	Все бренды	1	[{"added": {}}]	34	1
81	2021-08-07 08:38:13.579777+00	11	Apc	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	25	1
82	2021-08-07 08:38:26.531417+00	12	Apple	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	25	1
83	2021-08-07 08:38:37.954299+00	13	Digma	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	25	1
84	2021-08-07 08:38:50.806215+00	14	LG	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	25	1
85	2021-08-07 08:39:06.181209+00	15	Lg-oled	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	25	1
86	2021-08-07 08:39:21.807332+00	16	Oral-B	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	25	1
87	2021-08-07 08:39:57.212557+00	18	Xiaomi	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
88	2021-08-07 08:40:33.038945+00	17	Samsung	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 [ru]", "\\u0427\\u041f\\u0423", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
89	2021-08-07 08:40:55.267363+00	17	Samsung	2	[{"changed": {"fields": ["\\u0427\\u041f\\u0423", "\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"]}}]	25	1
90	2021-08-07 08:42:00.054274+00	11	Apc	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
91	2021-08-07 08:43:32.421334+00	12	Apple	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
92	2021-08-07 08:46:37.831722+00	13	Digma	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
93	2021-08-07 08:47:53.313032+00	14	LG	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
94	2021-08-07 08:48:38.991416+00	15	Lg-oled	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
95	2021-08-07 08:50:27.785942+00	16	Oral-B	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	25	1
96	2021-08-07 11:55:53.430688+00	23	Пылесос с контейнером для пыли Tefal City Space 0 Space grey	2	[{"changed": {"fields": ["\\u0426\\u0432\\u0435\\u0442"]}}]	27	1
97	2021-08-07 11:56:18.887301+00	19	Мультиварка Redmond 0 Black	2	[{"changed": {"fields": ["\\u0426\\u0432\\u0435\\u0442"]}}]	27	1
98	2021-08-07 11:56:51.709237+00	21	Электрочайник Moulinex 0 White	2	[{"changed": {"fields": ["\\u0426\\u0432\\u0435\\u0442"]}}]	27	1
99	2021-08-07 19:03:33.281984+00	1	Простая и удобная система заказа товара	1	[{"added": {}}]	29	1
100	2021-08-07 19:04:00.008844+00	2	Оповещаем о состоянии заказа по SMS	1	[{"added": {}}]	29	1
101	2021-08-07 19:04:34.799702+00	3	Оперативная доставка	1	[{"added": {}}]	29	1
102	2021-08-07 19:06:54.771541+00	3	Оперативная доставка	2	[{"changed": {"fields": ["\\u0422\\u0435\\u043a\\u0441\\u0442"]}}]	29	1
103	2021-08-07 19:09:57.161796+00	35	Все новости	1	[{"added": {}}]	32	1
104	2021-08-07 19:20:22.091582+00	36	Бренд BLOODY представил мышь W60 Pro	1	[{"added": {}}]	33	1
105	2021-08-07 19:20:56.127801+00	36	Бренд BLOODY представил мышь W60 Pro	2	[{"changed": {"fields": ["\\u0420\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430", "Image"]}}]	33	1
106	2021-08-07 19:22:16.680518+00	37	Плата asus	1	[{"added": {}}]	33	1
107	2021-08-07 19:23:35.376143+00	38	Системный блок acer	1	[{"added": {}}]	33	1
108	2021-08-07 19:24:38.44541+00	39	Планшет samsung	1	[{"added": {}}]	33	1
109	2021-08-07 19:25:41.193252+00	40	Новые наушники Razer	1	[{"added": {}}]	33	1
110	2021-08-07 19:26:35.556676+00	41	Мультипекарь Redmond плюс	1	[{"added": {}}]	33	1
111	2021-08-07 19:28:24.890565+00	38	Системный блок acer	2	[{"changed": {"fields": ["Image"]}}]	33	1
112	2021-08-07 19:28:39.002084+00	39	Планшет samsung	2	[{"changed": {"fields": ["Image"]}}]	33	1
113	2021-08-07 19:28:53.318398+00	40	Новые наушники Razer	2	[{"changed": {"fields": ["Image"]}}]	33	1
114	2021-08-07 19:29:03.453169+00	41	Мультипекарь Redmond плюс	2	[]	33	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	sites	site
7	fcm_django	fcmdevice
8	garpix_page	basepage
9	garpix_menu	menuitem
10	garpix_notify	notify
11	garpix_notify	notifycategory
12	garpix_notify	notifyconfig
13	garpix_notify	notifyerrorlog
14	garpix_notify	notifyfile
15	garpix_notify	notifytemplate
16	garpix_notify	notifyuserlist
17	garpix_notify	notifyuserlistparticipant
18	garpix_notify	notifydevice
19	garpix_notify	smtpaccount
20	garpixcms	page
21	user	user
22	electroplace	homepage
23	electroplace	catalogpage
24	electroplace	contactpage
27	electroplace	productpage
28	electroplace	contacts
29	electroplace	benefits
30	electroplace	brands
31	electroplace	promoslider
26	electroplace	productscategorypage
32	electroplace	newslistpage
33	electroplace	newspage
25	electroplace	brandpage
34	electroplace	brandlistpage
35	electroplace	promopage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-08-01 22:12:43.902964+00
2	contenttypes	0002_remove_content_type_name	2021-08-01 22:12:43.933162+00
3	auth	0001_initial	2021-08-01 22:12:44.015851+00
4	auth	0002_alter_permission_name_max_length	2021-08-01 22:12:44.166166+00
5	auth	0003_alter_user_email_max_length	2021-08-01 22:12:44.18275+00
6	auth	0004_alter_user_username_opts	2021-08-01 22:12:44.202871+00
7	auth	0005_alter_user_last_login_null	2021-08-01 22:12:44.226059+00
8	auth	0006_require_contenttypes_0002	2021-08-01 22:12:44.246879+00
9	auth	0007_alter_validators_add_error_messages	2021-08-01 22:12:44.269734+00
10	auth	0008_alter_user_username_max_length	2021-08-01 22:12:44.34639+00
11	auth	0009_alter_user_last_name_max_length	2021-08-01 22:12:44.365818+00
12	auth	0010_alter_group_name_max_length	2021-08-01 22:12:44.396468+00
13	auth	0011_update_proxy_permissions	2021-08-01 22:12:44.418846+00
14	auth	0012_alter_user_first_name_max_length	2021-08-01 22:12:44.442404+00
15	user	0001_initial	2021-08-01 22:12:44.577155+00
16	admin	0001_initial	2021-08-01 22:12:44.800056+00
17	admin	0002_logentry_remove_auto_add	2021-08-01 22:12:44.859157+00
18	admin	0003_logentry_add_action_flag_choices	2021-08-01 22:12:44.915107+00
19	sites	0001_initial	2021-08-01 22:12:44.982736+00
20	sites	0002_alter_domain_unique	2021-08-01 22:12:45.052869+00
21	garpix_page	0001_initial	2021-08-01 22:12:45.150749+00
22	electroplace	0001_initial	2021-08-01 22:12:45.425462+00
23	electroplace	0002_catalogpage	2021-08-01 22:12:45.486972+00
24	electroplace	0003_auto_20210802_0002	2021-08-01 22:12:45.694797+00
25	electroplace	0004_brandspage_productpage_productscategory	2021-08-01 22:12:45.878421+00
26	fcm_django	0001_initial	2021-08-01 22:12:46.05939+00
27	fcm_django	0002_auto_20160808_1645	2021-08-01 22:12:46.171987+00
28	fcm_django	0003_auto_20170313_1314	2021-08-01 22:12:46.196728+00
29	fcm_django	0004_auto_20181128_1642	2021-08-01 22:12:46.217616+00
30	fcm_django	0005_auto_20170808_1145	2021-08-01 22:12:46.293573+00
31	garpix_menu	0001_initial	2021-08-01 22:12:46.337852+00
32	garpix_menu	0002_auto_20210730_0021	2021-08-01 22:12:46.438643+00
33	garpix_notify	0001_initial	2021-08-01 22:12:46.840348+00
34	garpix_notify	0002_auto_20210730_0021	2021-08-01 22:12:47.219805+00
35	garpixcms	0001_initial	2021-08-01 22:12:47.610044+00
36	sessions	0001_initial	2021-08-01 22:12:47.697854+00
37	electroplace	0005_contacts	2021-08-02 06:52:51.423601+00
38	electroplace	0006_auto_20210802_1405	2021-08-02 11:05:49.368945+00
39	electroplace	0007_auto_20210802_1445	2021-08-02 11:46:07.758533+00
40	electroplace	0008_auto_20210806_2134	2021-08-06 18:35:50.368752+00
41	electroplace	0009_auto_20210807_1136	2021-08-07 08:36:28.794832+00
42	electroplace	0010_promopage	2021-08-07 19:35:27.106542+00
43	electroplace	0011_delete_promopage	2021-08-07 21:29:34.765842+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
l9ad7pmjx0z6rlkhtekzp4m0qqrts1e4	.eJxVjEEOwiAQRe_C2hCmhUFcuu8ZmoEBqRpISrsy3l1JutDtf-_9l5hp3_K8t7jOC4uLAHH63TyFRywd8J3KrcpQy7YuXnZFHrTJqXJ8Xg_37yBTy9_aKdLoPYIbGbxVoDWy0tol5U0cIqQBR8vOElAKBoM5a2M7cAmcQvH-AMW0NxM:1mAJjj:9HG0sLT1Gij64ck_6EdIf-Mi7vSzpOlHkmoiiYKMdHY	2021-08-15 22:15:11.780796+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: electroplace_benefits; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_benefits (id, title, "desc") FROM stdin;
1	Простая и удобная система заказа товара	Мы знаем, как важна простая система регистрации и оформления заказа, поэтому делаем все для того, чтобы оформить заказ было удобно (и быстро!).
2	Оповещаем о состоянии заказа по SMS	Для тех, кто всегда хочет быть в курсе: вы сами можете контролировать свой заказ, получая статус о его формировании посредством sms-сообщений.
3	Оперативная доставка	Мы привыкли работать с большими объемами заказов, поэтому вам не стоит беспокоиться о том, что ваш заказ будет обработан не вовремя.
\.


--
-- Data for Name: electroplace_brandlistpage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_brandlistpage (basepage_ptr_id) FROM stdin;
34
\.


--
-- Data for Name: electroplace_brandpage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_brandpage (basepage_ptr_id, name, desc_brands, image) FROM stdin;
18	Xiaomi	Xiaomi Corporation — китайская корпорация, основанная Лэй Цзюнем в 2010 году, занимает третье место в мире и Китае по объёму производства смартфонов. Также производит бытовую технику, планшеты, смарт-часы, электронные самокаты и тому подобное. С 2018 года является публичной.	Изображение/xiaomi-logo_iW6dmsu.png
17	Samsung	Samsung Electronics Co., Ltd — транснациональная компания по производству электроники, полупроводников, телекоммуникационного оборудования, чипов памяти, жидкокристаллических дисплеев, мобильных телефонов и мониторов. Входит в состав чеболя Samsung. Сегодня в компании работают более 309 630 человек в 74 странах мира.	Изображение/samsung-logo_IvKgbGm.png
11	Apc	American Power Conversion (APC) — американская компания, наиболее известная как производитель источников бесперебойного питания, существовавшая в период 1981—2007 годов, в конце 2006 года поглощена Schneider Electric, торговая марка сохранена в виде «APC by Schneider Electric». Производственные мощности располагались в США, Ирландии, Швейцарии, на Филиппинах, в Китае, Индии и Бразилии; по состоянию на конец 2004 год в компании работало около 6365 сотрудников.	Изображение/apc-logo_Od1AE84.png
12	Apple	Apple — американская корпорация, производитель персональных и планшетных компьютеров, аудиоплееров, смартфонов, программного обеспечения. Один из пионеров в области персональных компьютеров и современных многозадачных операционных систем с графическим интерфейсом. Штаб-квартира — в Купертино, штат Калифорния.	Изображение/apple-logo_epBrDUc.png
13	Digma	DIGMA — международный производитель цифровых устройств и потребительской электроники для дома и бизнеса. DIGMA существует на российском рынке с 2005 года, завоевав признание потребителей и партнёров как производитель технологических и качественных продуктов по разумной цене. Все устройства DIGMA проходят сертификацию и несколько этапов контроля качества, от завода до магазина.	Изображение/digma-logo_aA0lBBw.png
14	LG	LG Group (кор. LG) — четвёртая по величине южнокорейская финансово-промышленная группа (в Южной Корее такие группы называются чеболь). Основные направления деятельности — электроника, химическая продукция и телекоммуникационное оборудование.\r\nШтаб-квартира находится в Сеуле, Республика Корея, кроме того, у компании более 200 представительств и подразделений в 80 странах мира.	Изображение/lg-logo_3zmarsv.png
15	Lg-oled	LG OLED позволяют получать потрясающие впечатления от фильмов и сериалов. Мельчайшие детали и самые глубокие оттенки черного в 4К. Быстрые движения без размытия. Узнайте о телевизорах LG OLED больше уже сегодня.	Изображение/lg-oled-logo_theNMAw.png
16	Oral-B	Компания Oral-B была основана стоматологом, и каждый ее продукт разрабатывается совместно со стоматологами. Неудивительно, что Oral-B является брендом № 1, который рекомендуют стоматологи по всему миру.	Изображение/oral-b-logo_ynwvYAa.png
\.


--
-- Data for Name: electroplace_catalogpage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_catalogpage (basepage_ptr_id) FROM stdin;
2
\.


--
-- Data for Name: electroplace_contactpage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_contactpage (basepage_ptr_id, city, address, address_ru, phone, email, tabletime) FROM stdin;
10	г.Москва	ул.Петровская, д.9, (этаж 1)	ул.Петровская, д.9, (этаж 1)	84954448885	info@store.ru	ПН-ПТ 9:00-19:00
\.


--
-- Data for Name: electroplace_homepage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_homepage (basepage_ptr_id) FROM stdin;
1
\.


--
-- Data for Name: electroplace_newslistpage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_newslistpage (basepage_ptr_id) FROM stdin;
35
\.


--
-- Data for Name: electroplace_newspage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_newspage (basepage_ptr_id, title_news, subtitle, text, image) FROM stdin;
36	Бренд BLOODY представил мышь W60 Pro	Популярный бренд компьютерных аксессуаров	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo neque fuga consectetur eligendi! Distinctio dolor blanditiis voluptatum aperiam! Nobis eligendi voluptatem placeat, repudiandae aliquid nihil voluptate sint soluta atque sequi culpa inventore corrupti quis mollitia beatae adipisci. Rem placeat facere ipsa eveniet, maiores dolor, voluptas natus officia praesentium animi eos suscipit non repudiandae dolore corrupti soluta aliquam amet sapiente eius sint est! Deleniti, accusantium. Est quas nulla commodi consequatur cumque saepe voluptate, dicta accusamus harum. Possimus cum a maiores velit expedita architecto ut odit praesentium fuga repudiandae eveniet rem tempora placeat, alias optio. Hic, atque illum eveniet earum assumenda esse consequatur excepturi. Ab corporis beatae dolore similique possimus reprehenderit exercitationem numquam totam repellendus, ducimus, placeat ipsa adipisci harum expedita eaque omnis non, laudantium vitae incidunt aut architecto quos voluptas repellat? Dolores maiores at deleniti, cupiditate quaerat, voluptatem pariatur tenetur esse sapiente repudiandae error odio mollitia aspernatur in fugiat facere quibusdam sequi, provident quisquam. Perspiciatis iste laudantium ex vitae. At iure eligendi unde officiis accusamus debitis fugiat saepe dignissimos ipsa, nam sequi pariatur molestias incidunt voluptates, totam cupiditate laudantium eius maiores numquam voluptate itaque commodi iusto fuga! Commodi vitae delectus porro nisi modi distinctio nostrum aliquid consequuntur sunt, ad illum iusto at molestiae amet quis sed dolores voluptatum dicta, culpa velit odio quod minus aspernatur. Ea cum tenetur pariatur dicta soluta ratione rerum, id, nostrum eveniet ipsum quasi blanditiis eos error eligendi, in voluptatum eum quia facilis! Architecto aut in nam amet possimus magnam temporibus. Doloremque a autem voluptate ad sequi ipsam laboriosam reiciendis sint non cum officia suscipit fuga maiores excepturi quo, possimus fugiat quasi aut soluta commodi error quibusdam molestias odit. Ad vero id cum magni? Possimus, modi molestiae distinctio ea sunt neque accusantium numquam magnam in porro impedit eveniet asperiores est laborum laboriosam esse. Veritatis, maiores! Deserunt reprehenderit itaque voluptate sed dolorem doloremque accusamus tempora quasi, iste, omnis cumque consectetur possimus quo consequatur! Nihil, enim ea quod a, cupiditate dignissimos, doloribus velit labore autem adipisci sed distinctio non voluptatibus voluptates libero quasi repellat inventore quibusdam rem. Aliquid dolores ipsam iure hic, magnam ab vel porro reprehenderit ex doloremque nesciunt nisi, ipsa doloribus totam. Minus, corrupti. Repudiandae aliquid iusto repellendus aut qui nisi voluptatum odio animi labore impedit officia architecto nobis ut ad nostrum voluptatem delectus, beatae velit maiores voluptatibus error ipsam dicta? In possimus optio et officia. Veritatis tenetur ea rem aspernatur consequuntur numquam enim temporibus quia voluptate officia ipsa repudiandae, suscipit totam atque quod quaerat necessitatibus nemo non fugit dignissimos at consectetur. Nemo incidunt cum reprehenderit vero repellat perspiciatis obcaecati minus explicabo, illum quia fugiat, fuga, doloremque error exercitationem dolorum unde magni soluta fugit ab quo porro quibusdam alias. Ipsa exercitationem delectus cumque impedit accusantium. Officia fugiat sunt, mollitia inventore pariatur nesciunt, quasi, quas voluptates id blanditiis placeat qui quam at illo et saepe. Provident in, veniam commodi culpa laudantium voluptatem dolorum eius placeat aperiam? Voluptatum quibusdam voluptas repellendus voluptatem maxime architecto rem quae molestias odio quas neque ipsa illum nulla reiciendis repudiandae ullam, tempore velit repellat?	Изображение/bloody_N3rkNPS.jpg
37	Плата asus	Производитель мощнейших плат для компьютеров	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo neque fuga consectetur eligendi! Distinctio dolor blanditiis voluptatum aperiam! Nobis eligendi voluptatem placeat, repudiandae aliquid nihil voluptate sint soluta atque sequi culpa inventore corrupti quis mollitia beatae adipisci. Rem placeat facere ipsa eveniet, maiores dolor, voluptas natus officia praesentium animi eos suscipit non repudiandae dolore corrupti soluta aliquam amet sapiente eius sint est! Deleniti, accusantium. Est quas nulla commodi consequatur cumque saepe voluptate, dicta accusamus harum. Possimus cum a maiores velit expedita architecto ut odit praesentium fuga repudiandae eveniet rem tempora placeat, alias optio. Hic, atque illum eveniet earum assumenda esse consequatur excepturi. Ab corporis beatae dolore similique possimus reprehenderit exercitationem numquam totam repellendus, ducimus, placeat ipsa adipisci harum expedita eaque omnis non, laudantium vitae incidunt aut architecto quos voluptas repellat? Dolores maiores at deleniti, cupiditate quaerat, voluptatem pariatur tenetur esse sapiente repudiandae error odio mollitia aspernatur in fugiat facere quibusdam sequi, provident quisquam. Perspiciatis iste laudantium ex vitae. At iure eligendi unde officiis accusamus debitis fugiat saepe dignissimos ipsa, nam sequi pariatur molestias incidunt voluptates, totam cupiditate laudantium eius maiores numquam voluptate itaque commodi iusto fuga! Commodi vitae delectus porro nisi modi distinctio nostrum aliquid consequuntur sunt, ad illum iusto at molestiae amet quis sed dolores voluptatum dicta, culpa velit odio quod minus aspernatur. Ea cum tenetur pariatur dicta soluta ratione rerum, id, nostrum eveniet ipsum quasi blanditiis eos error eligendi, in voluptatum eum quia facilis! Architecto aut in nam amet possimus magnam temporibus. Doloremque a autem voluptate ad sequi ipsam laboriosam reiciendis sint non cum officia suscipit fuga maiores excepturi quo, possimus fugiat quasi aut soluta commodi error quibusdam molestias odit. Ad vero id cum magni? Possimus, modi molestiae distinctio ea sunt neque accusantium numquam magnam in porro impedit eveniet asperiores est laborum laboriosam esse. Veritatis, maiores! Deserunt reprehenderit itaque voluptate sed dolorem doloremque accusamus tempora quasi, iste, omnis cumque consectetur possimus quo consequatur! Nihil, enim ea quod a, cupiditate dignissimos, doloribus velit labore autem adipisci sed distinctio non voluptatibus voluptates libero quasi repellat inventore quibusdam rem. Aliquid dolores ipsam iure hic, magnam ab vel porro reprehenderit ex doloremque nesciunt nisi, ipsa doloribus totam. Minus, corrupti. Repudiandae aliquid iusto repellendus aut qui nisi voluptatum odio animi labore impedit officia architecto nobis ut ad nostrum voluptatem delectus, beatae velit maiores voluptatibus error ipsam dicta? In possimus optio et officia. Veritatis tenetur ea rem aspernatur consequuntur numquam enim temporibus quia voluptate officia ipsa repudiandae, suscipit totam atque quod quaerat necessitatibus nemo non fugit dignissimos at consectetur. Nemo incidunt cum reprehenderit vero repellat perspiciatis obcaecati minus explicabo, illum quia fugiat, fuga, doloremque error exercitationem dolorum unde magni soluta fugit ab quo porro quibusdam alias. Ipsa exercitationem delectus cumque impedit accusantium. Officia fugiat sunt, mollitia inventore pariatur nesciunt, quasi, quas voluptates id blanditiis placeat qui quam at illo et saepe. Provident in, veniam commodi culpa laudantium voluptatem dolorum eius placeat aperiam? Voluptatum quibusdam voluptas repellendus voluptatem maxime architecto rem quae molestias odio quas neque ipsa illum nulla reiciendis repudiandae ullam, tempore velit repellat?	Изображение/asus_3HV92ev.jpg
38	Системный блок acer	Наикрутейший системный блок для геймеров	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo neque fuga consectetur eligendi! Distinctio dolor blanditiis voluptatum aperiam! Nobis eligendi voluptatem placeat, repudiandae aliquid nihil voluptate sint soluta atque sequi culpa inventore corrupti quis mollitia beatae adipisci. Rem placeat facere ipsa eveniet, maiores dolor, voluptas natus officia praesentium animi eos suscipit non repudiandae dolore corrupti soluta aliquam amet sapiente eius sint est! Deleniti, accusantium. Est quas nulla commodi consequatur cumque saepe voluptate, dicta accusamus harum. Possimus cum a maiores velit expedita architecto ut odit praesentium fuga repudiandae eveniet rem tempora placeat, alias optio. Hic, atque illum eveniet earum assumenda esse consequatur excepturi. Ab corporis beatae dolore similique possimus reprehenderit exercitationem numquam totam repellendus, ducimus, placeat ipsa adipisci harum expedita eaque omnis non, laudantium vitae incidunt aut architecto quos voluptas repellat? Dolores maiores at deleniti, cupiditate quaerat, voluptatem pariatur tenetur esse sapiente repudiandae error odio mollitia aspernatur in fugiat facere quibusdam sequi, provident quisquam. Perspiciatis iste laudantium ex vitae. At iure eligendi unde officiis accusamus debitis fugiat saepe dignissimos ipsa, nam sequi pariatur molestias incidunt voluptates, totam cupiditate laudantium eius maiores numquam voluptate itaque commodi iusto fuga! Commodi vitae delectus porro nisi modi distinctio nostrum aliquid consequuntur sunt, ad illum iusto at molestiae amet quis sed dolores voluptatum dicta, culpa velit odio quod minus aspernatur. Ea cum tenetur pariatur dicta soluta ratione rerum, id, nostrum eveniet ipsum quasi blanditiis eos error eligendi, in voluptatum eum quia facilis! Architecto aut in nam amet possimus magnam temporibus. Doloremque a autem voluptate ad sequi ipsam laboriosam reiciendis sint non cum officia suscipit fuga maiores excepturi quo, possimus fugiat quasi aut soluta commodi error quibusdam molestias odit. Ad vero id cum magni? Possimus, modi molestiae distinctio ea sunt neque accusantium numquam magnam in porro impedit eveniet asperiores est laborum laboriosam esse. Veritatis, maiores! Deserunt reprehenderit itaque voluptate sed dolorem doloremque accusamus tempora quasi, iste, omnis cumque consectetur possimus quo consequatur! Nihil, enim ea quod a, cupiditate dignissimos, doloribus velit labore autem adipisci sed distinctio non voluptatibus voluptates libero quasi repellat inventore quibusdam rem. Aliquid dolores ipsam iure hic, magnam ab vel porro reprehenderit ex doloremque nesciunt nisi, ipsa doloribus totam. Minus, corrupti. Repudiandae aliquid iusto repellendus aut qui nisi voluptatum odio animi labore impedit officia architecto nobis ut ad nostrum voluptatem delectus, beatae velit maiores voluptatibus error ipsam dicta? In possimus optio et officia. Veritatis tenetur ea rem aspernatur consequuntur numquam enim temporibus quia voluptate officia ipsa repudiandae, suscipit totam atque quod quaerat necessitatibus nemo non fugit dignissimos at consectetur. Nemo incidunt cum reprehenderit vero repellat perspiciatis obcaecati minus explicabo, illum quia fugiat, fuga, doloremque error exercitationem dolorum unde magni soluta fugit ab quo porro quibusdam alias. Ipsa exercitationem delectus cumque impedit accusantium. Officia fugiat sunt, mollitia inventore pariatur nesciunt, quasi, quas voluptates id blanditiis placeat qui quam at illo et saepe. Provident in, veniam commodi culpa laudantium voluptatem dolorum eius placeat aperiam? Voluptatum quibusdam voluptas repellendus voluptatem maxime architecto rem quae molestias odio quas neque ipsa illum nulla reiciendis repudiandae ullam, tempore velit repellat?	Изображение/acer_ovMz31A.jpg
39	Планшет samsung	Алмаз среди андроид планшетов	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo neque fuga consectetur eligendi! Distinctio dolor blanditiis voluptatum aperiam! Nobis eligendi voluptatem placeat, repudiandae aliquid nihil voluptate sint soluta atque sequi culpa inventore corrupti quis mollitia beatae adipisci. Rem placeat facere ipsa eveniet, maiores dolor, voluptas natus officia praesentium animi eos suscipit non repudiandae dolore corrupti soluta aliquam amet sapiente eius sint est! Deleniti, accusantium. Est quas nulla commodi consequatur cumque saepe voluptate, dicta accusamus harum. Possimus cum a maiores velit expedita architecto ut odit praesentium fuga repudiandae eveniet rem tempora placeat, alias optio. Hic, atque illum eveniet earum assumenda esse consequatur excepturi. Ab corporis beatae dolore similique possimus reprehenderit exercitationem numquam totam repellendus, ducimus, placeat ipsa adipisci harum expedita eaque omnis non, laudantium vitae incidunt aut architecto quos voluptas repellat? Dolores maiores at deleniti, cupiditate quaerat, voluptatem pariatur tenetur esse sapiente repudiandae error odio mollitia aspernatur in fugiat facere quibusdam sequi, provident quisquam. Perspiciatis iste laudantium ex vitae. At iure eligendi unde officiis accusamus debitis fugiat saepe dignissimos ipsa, nam sequi pariatur molestias incidunt voluptates, totam cupiditate laudantium eius maiores numquam voluptate itaque commodi iusto fuga! Commodi vitae delectus porro nisi modi distinctio nostrum aliquid consequuntur sunt, ad illum iusto at molestiae amet quis sed dolores voluptatum dicta, culpa velit odio quod minus aspernatur. Ea cum tenetur pariatur dicta soluta ratione rerum, id, nostrum eveniet ipsum quasi blanditiis eos error eligendi, in voluptatum eum quia facilis! Architecto aut in nam amet possimus magnam temporibus. Doloremque a autem voluptate ad sequi ipsam laboriosam reiciendis sint non cum officia suscipit fuga maiores excepturi quo, possimus fugiat quasi aut soluta commodi error quibusdam molestias odit. Ad vero id cum magni? Possimus, modi molestiae distinctio ea sunt neque accusantium numquam magnam in porro impedit eveniet asperiores est laborum laboriosam esse. Veritatis, maiores! Deserunt reprehenderit itaque voluptate sed dolorem doloremque accusamus tempora quasi, iste, omnis cumque consectetur possimus quo consequatur! Nihil, enim ea quod a, cupiditate dignissimos, doloribus velit labore autem adipisci sed distinctio non voluptatibus voluptates libero quasi repellat inventore quibusdam rem. Aliquid dolores ipsam iure hic, magnam ab vel porro reprehenderit ex doloremque nesciunt nisi, ipsa doloribus totam. Minus, corrupti. Repudiandae aliquid iusto repellendus aut qui nisi voluptatum odio animi labore impedit officia architecto nobis ut ad nostrum voluptatem delectus, beatae velit maiores voluptatibus error ipsam dicta? In possimus optio et officia. Veritatis tenetur ea rem aspernatur consequuntur numquam enim temporibus quia voluptate officia ipsa repudiandae, suscipit totam atque quod quaerat necessitatibus nemo non fugit dignissimos at consectetur. Nemo incidunt cum reprehenderit vero repellat perspiciatis obcaecati minus explicabo, illum quia fugiat, fuga, doloremque error exercitationem dolorum unde magni soluta fugit ab quo porro quibusdam alias. Ipsa exercitationem delectus cumque impedit accusantium. Officia fugiat sunt, mollitia inventore pariatur nesciunt, quasi, quas voluptates id blanditiis placeat qui quam at illo et saepe. Provident in, veniam commodi culpa laudantium voluptatem dolorum eius placeat aperiam? Voluptatum quibusdam voluptas repellendus voluptatem maxime architecto rem quae molestias odio quas neque ipsa illum nulla reiciendis repudiandae ullam, tempore velit repellat?	Изображение/samsung_Pub81CT.jpg
40	Новые наушники Razer	Оркестр у тебя дома	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo neque fuga consectetur eligendi! Distinctio dolor blanditiis voluptatum aperiam! Nobis eligendi voluptatem placeat, repudiandae aliquid nihil voluptate sint soluta atque sequi culpa inventore corrupti quis mollitia beatae adipisci. Rem placeat facere ipsa eveniet, maiores dolor, voluptas natus officia praesentium animi eos suscipit non repudiandae dolore corrupti soluta aliquam amet sapiente eius sint est! Deleniti, accusantium. Est quas nulla commodi consequatur cumque saepe voluptate, dicta accusamus harum. Possimus cum a maiores velit expedita architecto ut odit praesentium fuga repudiandae eveniet rem tempora placeat, alias optio. Hic, atque illum eveniet earum assumenda esse consequatur excepturi. Ab corporis beatae dolore similique possimus reprehenderit exercitationem numquam totam repellendus, ducimus, placeat ipsa adipisci harum expedita eaque omnis non, laudantium vitae incidunt aut architecto quos voluptas repellat? Dolores maiores at deleniti, cupiditate quaerat, voluptatem pariatur tenetur esse sapiente repudiandae error odio mollitia aspernatur in fugiat facere quibusdam sequi, provident quisquam. Perspiciatis iste laudantium ex vitae. At iure eligendi unde officiis accusamus debitis fugiat saepe dignissimos ipsa, nam sequi pariatur molestias incidunt voluptates, totam cupiditate laudantium eius maiores numquam voluptate itaque commodi iusto fuga! Commodi vitae delectus porro nisi modi distinctio nostrum aliquid consequuntur sunt, ad illum iusto at molestiae amet quis sed dolores voluptatum dicta, culpa velit odio quod minus aspernatur. Ea cum tenetur pariatur dicta soluta ratione rerum, id, nostrum eveniet ipsum quasi blanditiis eos error eligendi, in voluptatum eum quia facilis! Architecto aut in nam amet possimus magnam temporibus. Doloremque a autem voluptate ad sequi ipsam laboriosam reiciendis sint non cum officia suscipit fuga maiores excepturi quo, possimus fugiat quasi aut soluta commodi error quibusdam molestias odit. Ad vero id cum magni? Possimus, modi molestiae distinctio ea sunt neque accusantium numquam magnam in porro impedit eveniet asperiores est laborum laboriosam esse. Veritatis, maiores! Deserunt reprehenderit itaque voluptate sed dolorem doloremque accusamus tempora quasi, iste, omnis cumque consectetur possimus quo consequatur! Nihil, enim ea quod a, cupiditate dignissimos, doloribus velit labore autem adipisci sed distinctio non voluptatibus voluptates libero quasi repellat inventore quibusdam rem. Aliquid dolores ipsam iure hic, magnam ab vel porro reprehenderit ex doloremque nesciunt nisi, ipsa doloribus totam. Minus, corrupti. Repudiandae aliquid iusto repellendus aut qui nisi voluptatum odio animi labore impedit officia architecto nobis ut ad nostrum voluptatem delectus, beatae velit maiores voluptatibus error ipsam dicta? In possimus optio et officia. Veritatis tenetur ea rem aspernatur consequuntur numquam enim temporibus quia voluptate officia ipsa repudiandae, suscipit totam atque quod quaerat necessitatibus nemo non fugit dignissimos at consectetur. Nemo incidunt cum reprehenderit vero repellat perspiciatis obcaecati minus explicabo, illum quia fugiat, fuga, doloremque error exercitationem dolorum unde magni soluta fugit ab quo porro quibusdam alias. Ipsa exercitationem delectus cumque impedit accusantium. Officia fugiat sunt, mollitia inventore pariatur nesciunt, quasi, quas voluptates id blanditiis placeat qui quam at illo et saepe. Provident in, veniam commodi culpa laudantium voluptatem dolorum eius placeat aperiam? Voluptatum quibusdam voluptas repellendus voluptatem maxime architecto rem quae molestias odio quas neque ipsa illum nulla reiciendis repudiandae ullam, tempore velit repellat?	Изображение/razer_Vw7cKOc.jpg
41	Мультипекарь Redmond плюс	Твой личный шей-повар	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo neque fuga consectetur eligendi! Distinctio dolor blanditiis voluptatum aperiam! Nobis eligendi voluptatem placeat, repudiandae aliquid nihil voluptate sint soluta atque sequi culpa inventore corrupti quis mollitia beatae adipisci. Rem placeat facere ipsa eveniet, maiores dolor, voluptas natus officia praesentium animi eos suscipit non repudiandae dolore corrupti soluta aliquam amet sapiente eius sint est! Deleniti, accusantium. Est quas nulla commodi consequatur cumque saepe voluptate, dicta accusamus harum. Possimus cum a maiores velit expedita architecto ut odit praesentium fuga repudiandae eveniet rem tempora placeat, alias optio. Hic, atque illum eveniet earum assumenda esse consequatur excepturi. Ab corporis beatae dolore similique possimus reprehenderit exercitationem numquam totam repellendus, ducimus, placeat ipsa adipisci harum expedita eaque omnis non, laudantium vitae incidunt aut architecto quos voluptas repellat? Dolores maiores at deleniti, cupiditate quaerat, voluptatem pariatur tenetur esse sapiente repudiandae error odio mollitia aspernatur in fugiat facere quibusdam sequi, provident quisquam. Perspiciatis iste laudantium ex vitae. At iure eligendi unde officiis accusamus debitis fugiat saepe dignissimos ipsa, nam sequi pariatur molestias incidunt voluptates, totam cupiditate laudantium eius maiores numquam voluptate itaque commodi iusto fuga! Commodi vitae delectus porro nisi modi distinctio nostrum aliquid consequuntur sunt, ad illum iusto at molestiae amet quis sed dolores voluptatum dicta, culpa velit odio quod minus aspernatur. Ea cum tenetur pariatur dicta soluta ratione rerum, id, nostrum eveniet ipsum quasi blanditiis eos error eligendi, in voluptatum eum quia facilis! Architecto aut in nam amet possimus magnam temporibus. Doloremque a autem voluptate ad sequi ipsam laboriosam reiciendis sint non cum officia suscipit fuga maiores excepturi quo, possimus fugiat quasi aut soluta commodi error quibusdam molestias odit. Ad vero id cum magni? Possimus, modi molestiae distinctio ea sunt neque accusantium numquam magnam in porro impedit eveniet asperiores est laborum laboriosam esse. Veritatis, maiores! Deserunt reprehenderit itaque voluptate sed dolorem doloremque accusamus tempora quasi, iste, omnis cumque consectetur possimus quo consequatur! Nihil, enim ea quod a, cupiditate dignissimos, doloribus velit labore autem adipisci sed distinctio non voluptatibus voluptates libero quasi repellat inventore quibusdam rem. Aliquid dolores ipsam iure hic, magnam ab vel porro reprehenderit ex doloremque nesciunt nisi, ipsa doloribus totam. Minus, corrupti. Repudiandae aliquid iusto repellendus aut qui nisi voluptatum odio animi labore impedit officia architecto nobis ut ad nostrum voluptatem delectus, beatae velit maiores voluptatibus error ipsam dicta? In possimus optio et officia. Veritatis tenetur ea rem aspernatur consequuntur numquam enim temporibus quia voluptate officia ipsa repudiandae, suscipit totam atque quod quaerat necessitatibus nemo non fugit dignissimos at consectetur. Nemo incidunt cum reprehenderit vero repellat perspiciatis obcaecati minus explicabo, illum quia fugiat, fuga, doloremque error exercitationem dolorum unde magni soluta fugit ab quo porro quibusdam alias. Ipsa exercitationem delectus cumque impedit accusantium. Officia fugiat sunt, mollitia inventore pariatur nesciunt, quasi, quas voluptates id blanditiis placeat qui quam at illo et saepe. Provident in, veniam commodi culpa laudantium voluptatem dolorum eius placeat aperiam? Voluptatum quibusdam voluptas repellendus voluptatem maxime architecto rem quae molestias odio quas neque ipsa illum nulla reiciendis repudiandae ullam, tempore velit repellat?	Изображение/redmond_sOtyhtq.jpg
\.


--
-- Data for Name: electroplace_productpage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_productpage (basepage_ptr_id, name, image, price, old_price, screen, sim, storage, color, quantity, is_stock, is_new, brand_id) FROM stdin;
20	Смартфон Huawei Mate 40 Pro	Изображение/huawei-mate.jpg	5533.00	6990.00	6.00	2	128	Mystic Silver	30	t	t	13
24	Смартфон Samsung Galaxy S21	Изображение/smart1.jpg	54440.00	0.00	6.00	2	128	Phantom Violet	10	f	f	17
26	Смартфон Samsung Galaxy A52	Изображение/smart3.jpg	26790.00	32990.00	6.00	2	128	Awesome Black	10	t	f	17
27	Смартфон Samsung Galaxy S21	Изображение/smart4.jpg	61990.00	65990.00	6.00	2	128	Phantom Gray	0	t	f	17
28	Смартфон Huawei Mate 40 Pro (NOH-NX9)	Изображение/smart5.jpg	54990.00	65990.00	6.00	2	128	Mystic Silver	25	t	f	14
29	Смартфон Honor 10X Lite 4	Изображение/smart6.jpg	15990.00	0.00	6.00	2	128	Icelandic Frost	10	f	f	13
30	Смартфон Huawei P40 Pro	Изображение/smart7.jpg	65990.00	70990.00	6.00	1	128	Silver Fros	0	t	f	17
31	Смартфон Honor 9X 4	Изображение/smart8.jpg	15000.00	0.00	6.00	2	128	Sapphire Blue	0	f	f	13
32	Смартфон Apple iPhone SE	Изображение/smart9.jpg	39990.00	0.00	6.00	2	64	Black	0	f	f	12
25	Смартфон Apple iPhone 11	Изображение/smart2.jpg	59990.00	62990.00	6.00	1	128	White	10	t	f	12
23	Пылесос с контейнером для пыли Tefal City Space	Изображение/tefal-vacuum-cleaner.jpg	14990.00	16990.00	0.00	0	0	Space grey	20	t	f	15
19	Мультиварка Redmond	Изображение/redmond-multi.jpg	5533.00	6990.00	0.00	0	0	Black	20	t	f	11
21	Электрочайник Moulinex	Изображение/moulinex-teapot.jpg	1990.00	3990.00	0.00	0	0	White	20	t	f	13
\.


--
-- Data for Name: electroplace_productscategorypage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_productscategorypage (basepage_ptr_id, name, desc_category) FROM stdin;
3	Смартфоны	
4	Телевизоры	
5	Ноутбуки	
6	Стиральные машины	
7	Холодильники	
8	Пылесосы	
9	Микроволновки	
33	Скидки	
\.


--
-- Data for Name: electroplace_promoslider; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.electroplace_promoslider (id, name, sort_desc, image, is_active, public_date, updated_at, brand_id) FROM stdin;
1	Микроволновая печь HUNDAI	Готовьте вкусно и быстро	Изображение/slide-bg_AcBZK4k.jpg	t	2021-08-05 22:03:50+00	2021-08-05 22:06:08.860355+00	11
2	Микроволновая печь HUNDAI	Готовьте вкусно и быстро	Изображение/slide-bg_xDGNDAT.jpg	t	2021-08-05 22:06:25+00	2021-08-05 22:06:58.990787+00	11
\.


--
-- Data for Name: fcm_django_fcmdevice; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.fcm_django_fcmdevice (id, name, active, date_created, device_id, registration_id, type, user_id) FROM stdin;
\.


--
-- Data for Name: garpix_menu_menuitem; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_menu_menuitem (id, title_for_admin, title, title_ru, menu_type, url, is_active, target_blank, created_at, updated_at, sort, lft, rght, tree_id, level, page_id, parent_id) FROM stdin;
8	Скидки	Скидки	Скидки	header_menu	\N	t	f	2021-08-05 20:24:06.814159+00	2021-08-05 20:26:30.774889+00	20	1	2	1	0	33	\N
1	Смартфоны	Смартфоны	Смартфоны	header_menu	\N	t	f	2021-08-05 06:10:52.829693+00	2021-08-05 20:26:30.874358+00	30	1	2	2	0	3	\N
2	Телевизоры	Телевизоры	Телевизоры	header_menu	\N	t	f	2021-08-05 19:36:08.699707+00	2021-08-05 20:27:31.359723+00	40	1	2	3	0	4	\N
3	Ноутбуки	Ноутбуки	Ноутбуки	header_menu	\N	t	f	2021-08-05 19:37:24.066166+00	2021-08-05 20:27:31.502405+00	50	1	2	4	0	5	\N
4	Стиральные машины	Стиральные машины	Стиральные машины	header_menu	\N	t	f	2021-08-05 19:37:41.083966+00	2021-08-05 20:27:31.624939+00	60	1	2	5	0	6	\N
5	Холодильники	Холодильники	Холодильники	header_menu	\N	t	f	2021-08-05 19:37:59.058581+00	2021-08-05 20:27:31.728769+00	70	1	2	6	0	7	\N
6	Пылесосы	Пылесосы	Пылесосы	header_menu	\N	t	f	2021-08-05 19:38:19.673489+00	2021-08-05 20:27:31.908325+00	80	1	2	7	0	8	\N
7	Микроволновки	Микроволновки	Микроволновки	header_menu	\N	t	f	2021-08-05 19:40:18.011263+00	2021-08-05 20:27:32.026977+00	90	1	2	8	0	9	\N
\.


--
-- Data for Name: garpix_notify_notify; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notify (id, phone, telegram_chat_id, viber_chat_id, viber_secret_key, subject, text, html, email, sender_email, type, state, event, is_read, data_json, created_at, send_at, sent_at, category_id, user_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notify_files; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notify_files (id, notify_id, notifyfile_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifycategory; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifycategory (id, title, template, created_at) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyconfig; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifyconfig (id, periodic, email_max_day_limit, email_max_hour_limit, sms_url, sms_api_id, sms_from, telegram_api_key, viber_api_key, viber_bot_name, is_email_enabled, is_sms_enabled, is_push_enabled, is_telegram_enabled, is_viber_enabled, viber_success_added_text, viber_failed_added_text, viber_text_for_new_sub, viber_welcome_text) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyerrorlog; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifyerrorlog (id, error, created_at, notify_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyfile; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifyfile (id, file, created_at) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifytemplate; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifytemplate (id, phone, telegram_chat_id, viber_chat_id, viber_secret_key, title, subject, text, html, email, type, event, created_at, is_active, send_at, category_id, user_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifytemplate_user_lists; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifytemplate_user_lists (id, notifytemplate_id, notifyuserlist_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyuserlist; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifyuserlist (id, title, created_at, mail_to_all) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyuserlist_user_groups; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifyuserlist_user_groups (id, notifyuserlist_id, group_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyuserlistparticipant; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_notifyuserlistparticipant (id, phone, telegram_chat_id, viber_chat_id, viber_secret_key, created_at, email, user_id, user_list_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_smtpaccount; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_notify_smtpaccount (id, host, port, is_use_tls, is_use_ssl, sender, username, password, timeout, is_active, email_hour_used_times, email_day_used_times, email_hour_used_date, email_day_used_date, created_at, category_id) FROM stdin;
\.


--
-- Data for Name: garpix_page_basepage; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_page_basepage (id, title, title_ru, is_active, display_on_sitemap, slug, created_at, updated_at, seo_title, seo_title_ru, seo_keywords, seo_keywords_ru, seo_description, seo_description_ru, seo_author, seo_author_ru, seo_og_type, seo_image, lft, rght, tree_id, level, parent_id, polymorphic_ctype_id) FROM stdin;
1	Главная	Главная	t	t		2021-08-02 06:59:36.729411+00	2021-08-02 06:59:36.72945+00		\N		\N				\N	website		1	2	1	0	\N	22
2	Каталог	Каталог	t	t	catalog	2021-08-02 07:00:15.972557+00	2021-08-02 07:00:15.972638+00		\N		\N				\N	website		1	2	2	0	\N	23
4	Телевизоры	Телевизоры	t	t	televizory	2021-08-02 15:47:15.675263+00	2021-08-02 15:47:15.675287+00		\N		\N				\N	website		1	2	4	0	\N	26
5	Ноутбуки	Ноутбуки	t	t	noutbuki	2021-08-02 15:47:42.913238+00	2021-08-02 15:47:42.91326+00		\N		\N				\N	website		1	2	5	0	\N	26
6	Стиральные машины	Стиральные машины	t	t	stiralnye-mashiny	2021-08-02 15:48:23.676299+00	2021-08-02 15:48:23.676318+00		\N		\N				\N	website		1	2	6	0	\N	26
7	Холодильники	Холодильники	t	t	holodilniki	2021-08-02 15:48:51.463899+00	2021-08-02 15:48:51.463918+00		\N		\N				\N	website		1	2	7	0	\N	26
10	Москва	Москва	t	t	moskva	2021-08-02 15:52:11.267673+00	2021-08-02 15:53:51.643686+00		\N		\N				\N	website		1	2	10	0	\N	24
24	Смартфон Samsung Galaxy S21 128GB Phantom Violet	Смартфон Samsung Galaxy S21 128GB Phantom Violet	t	t	smartfon-samsung-galaxy-s21-128gb-phantom-violet	2021-08-02 16:18:57.020749+00	2021-08-05 21:34:41.40451+00		\N		\N				\N	website		4	5	3	1	3	27
25	Смартфон Apple iPhone 11 128GB White	Смартфон Apple iPhone 11 128GB White	t	t	smartfon-apple-iphone-11-128gb-white	2021-08-02 16:21:47.598331+00	2021-08-05 21:47:54.958296+00		\N		\N				\N	website		6	7	3	1	3	27
33	Скидки	Скидки	t	t	skidki	2021-08-05 19:59:10.762407+00	2021-08-05 19:59:10.762427+00		\N		\N				\N	website		1	2	32	0	\N	26
20	Смартфон Huawei Mate 40 Pro	Смартфон Huawei Mate 40 Pro	t	t	smartfon-huawei-mate-40-pro	2021-08-02 16:12:48.830024+00	2021-08-05 21:24:56.708859+00		\N		\N				\N	website		2	3	3	1	3	27
9	Микроволновки	Микроволновки	t	t	mikrovolnovki	2021-08-02 15:50:32.475106+00	2021-08-02 15:50:32.475144+00		\N		\N				\N	website		1	6	9	0	\N	26
8	Пылесосы	Пылесосы	t	t	pylesosy	2021-08-02 15:49:55.032543+00	2021-08-02 15:49:55.032561+00		\N		\N				\N	website		1	4	8	0	\N	26
27	Смартфон Samsung Galaxy S21 128GB Phantom Gray	Смартфон Samsung Galaxy S21 128GB Phantom Gray	t	t	smartfon-samsung-galaxy-s21-128gb-phantom-gray	2021-08-02 16:24:28.405538+00	2021-08-05 21:35:21.953486+00		\N		\N				\N	website		10	11	3	1	3	27
30	Смартфон Huawei P40 Pro Silver Fros	Смартфон Huawei P40 Pro Silver Fros	t	t	smartfon-huawei-p40-pro-silver-fros	2021-08-04 11:15:12.438557+00	2021-08-05 21:36:01.395701+00		\N		\N				\N	website		16	17	3	1	3	27
26	Смартфон Samsung Galaxy A52 128GB Awesome Black	Смартфон Samsung Galaxy A52 128GB Awesome Black	t	t	smartfon-samsung-galaxy-a52-128gb-awesome-black	2021-08-02 16:23:16.599022+00	2021-08-05 21:35:08.824563+00		\N		\N				\N	website		8	9	3	1	3	27
28	Смартфон Huawei Mate 40 Pro Mystic Silver	Смартфон Huawei Mate 40 Pro Mystic Silver	t	t	smartfon-huawei-mate-40-pro-mystic-silver	2021-08-02 16:25:41.890191+00	2021-08-05 21:35:34.001046+00		\N		\N				\N	website		12	13	3	1	3	27
29	Смартфон Honor 10X Lite 4	Смартфон Honor 10X Lite 4	t	t	smartfon-honor-10x-lite-4	2021-08-04 11:09:55.12627+00	2021-08-05 21:35:44.956231+00		\N		\N				\N	website		14	15	3	1	3	27
31	Смартфон Honor 9X 4+128GB Sapphire Blue	Смартфон Honor 9X 4+128GB Sapphire Blue	t	t	smartfon-honor-9x-4128gb-sapphire-blue	2021-08-04 11:16:36.427306+00	2021-08-05 21:36:13.916168+00		\N		\N				\N	website		18	19	3	1	3	27
3	Смартфоны	Смартфоны	t	t	smartfony	2021-08-02 15:46:20.865+00	2021-08-02 15:46:20.865071+00		\N		\N				\N	website		1	22	3	0	\N	26
32	Смартфон Apple iPhone SE 64GB Black	Смартфон Apple iPhone SE 64GB Black	t	t	smartfon-apple-iphone-se-64gb-black	2021-08-04 11:19:04.09808+00	2021-08-05 21:36:31.025322+00		\N		\N				\N	website		20	21	3	1	3	27
34	Все бренды	Все бренды	t	t	vse-brendy	2021-08-07 08:37:49.044265+00	2021-08-07 08:37:49.044287+00		\N		\N				\N	website		1	18	33	0	\N	34
17	Samsung	Samsung	t	t	samsung	2021-08-02 15:59:10.847181+00	2021-08-07 08:40:55.256573+00		\N		\N				\N	website		16	17	33	1	34	25
21	Электрочайник Moulinex	Электрочайник Moulinex	t	t	elektrochajnik-moulinex	2021-08-02 16:13:49.362109+00	2021-08-07 11:56:51.675874+00		\N		\N				\N	website		4	5	9	1	9	27
18	Xiaomi	Xiaomi	t	t	xiaomi	2021-08-02 15:59:33.896434+00	2021-08-07 08:39:57.195097+00		\N		\N				\N	website		14	15	33	1	34	25
11	Apc	Apc	t	t	apc	2021-08-02 15:55:55.100942+00	2021-08-07 08:42:00.042621+00		\N		\N				\N	website		2	3	33	1	34	25
12	Apple	Apple	t	t	apple	2021-08-02 15:56:40.781428+00	2021-08-07 08:43:32.41146+00		\N		\N				\N	website		4	5	33	1	34	25
13	Digma	Digma	t	t	digma	2021-08-02 15:57:13.695555+00	2021-08-07 08:46:37.821292+00		\N		\N				\N	website		6	7	33	1	34	25
14	LG	LG	t	t	lg	2021-08-02 15:57:34.282722+00	2021-08-07 08:47:53.302473+00		\N		\N				\N	website		8	9	33	1	34	25
15	Lg-oled	Lg-oled	t	t	lg-oled	2021-08-02 15:58:07.247984+00	2021-08-07 08:48:38.973652+00		\N		\N				\N	website		10	11	33	1	34	25
16	Oral-B	Oral-B	t	t	oral-b	2021-08-02 15:58:44.518745+00	2021-08-07 08:50:27.751879+00		\N		\N				\N	website		12	13	33	1	34	25
23	Пылесос Tefal City Space	Пылесос Tefal City Space	t	t	pylesos-tefal-city-space	2021-08-02 16:15:55.452071+00	2021-08-07 11:55:53.235379+00		\N		\N				\N	website		2	3	8	1	8	27
19	Мультиварка Redmond	Мультиварка Redmond	t	t	multivarka-redmond	2021-08-02 16:10:47.50533+00	2021-08-07 11:56:18.760027+00		\N		\N				\N	website		2	3	9	1	9	27
35	Все новости	Все новости	t	t	vse-novosti	2021-08-07 19:09:57.147218+00	2021-08-07 19:09:57.147238+00		\N		\N				\N	website		1	14	34	0	\N	32
36	Бренд BLOODY представил мышь W60 Pro	Бренд BLOODY представил мышь W60 Pro	t	t	brend-bloody-predstavil-mysh-w60-pro	2021-08-07 19:20:22.072374+00	2021-08-07 19:20:56.117518+00		\N		\N				\N	website		2	3	34	1	35	33
37	Плата asus	Плата asus	t	t	plata-asus	2021-08-07 19:22:16.666152+00	2021-08-07 19:22:16.66618+00		\N		\N				\N	website		4	5	34	1	35	33
38	Системный блок acer	Системный блок acer	t	t	sistemnyj-blok-acer	2021-08-07 19:23:35.364037+00	2021-08-07 19:28:24.880107+00		\N		\N				\N	website		6	7	34	1	35	33
39	Планшет samsung	Планшет samsung	t	t	planshet-samsung	2021-08-07 19:24:38.433155+00	2021-08-07 19:28:38.987619+00		\N		\N				\N	website		8	9	34	1	35	33
40	Новые наушники Razer	Новые наушники Razer	t	t	novye-naushniki-razer	2021-08-07 19:25:41.180935+00	2021-08-07 19:28:53.305836+00		\N		\N				\N	website		10	11	34	1	35	33
41	Мультипекарь Redmond плюс	Мультипекарь Redmond плюс	t	t	multipekar-redmond-plyus	2021-08-07 19:26:35.54207+00	2021-08-07 19:29:03.444784+00		\N		\N				\N	website		12	13	34	1	35	33
\.


--
-- Data for Name: garpix_page_basepage_sites; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpix_page_basepage_sites (id, basepage_id, site_id) FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	1
9	9	1
10	10	1
11	11	1
12	12	1
13	13	1
14	14	1
15	15	1
16	16	1
17	17	1
18	18	1
19	19	1
20	20	1
21	21	1
22	23	1
23	24	1
24	25	1
25	26	1
26	27	1
27	28	1
28	29	1
29	30	1
30	31	1
31	32	1
32	33	1
33	34	1
34	35	1
35	36	1
36	37	1
37	38	1
38	39	1
39	40	1
40	41	1
\.


--
-- Data for Name: garpixcms_page; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.garpixcms_page (basepage_ptr_id, content, content_ru) FROM stdin;
\.


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.user_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, phone, telegram_chat_id, viber_chat_id, viber_secret_key) FROM stdin;
1	pbkdf2_sha256$216000$LPhTeaYzYOyW$EBEnPnIouJPbKZc9v3d4txEZutLEOgm+Gtoq1XOjBSU=	2021-08-01 22:15:11.765777+00	t	admin			admin@admin.ru	t	t	2021-08-01 22:14:01.233044+00				
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: user_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 148, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 114, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 35, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: electroplace_benefits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.electroplace_benefits_id_seq', 3, true);


--
-- Name: electroplace_promoslider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.electroplace_promoslider_id_seq', 2, true);


--
-- Name: fcm_django_fcmdevice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.fcm_django_fcmdevice_id_seq', 1, false);


--
-- Name: garpix_menu_menuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_menu_menuitem_id_seq', 8, true);


--
-- Name: garpix_notify_notify_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notify_files_id_seq', 1, false);


--
-- Name: garpix_notify_notify_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notify_id_seq', 1, false);


--
-- Name: garpix_notify_notifycategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifycategory_id_seq', 1, false);


--
-- Name: garpix_notify_notifyconfig_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifyconfig_id_seq', 1, false);


--
-- Name: garpix_notify_notifyerrorlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifyerrorlog_id_seq', 1, false);


--
-- Name: garpix_notify_notifyfile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifyfile_id_seq', 1, false);


--
-- Name: garpix_notify_notifytemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifytemplate_id_seq', 1, false);


--
-- Name: garpix_notify_notifytemplate_user_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifytemplate_user_lists_id_seq', 1, false);


--
-- Name: garpix_notify_notifyuserlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifyuserlist_id_seq', 1, false);


--
-- Name: garpix_notify_notifyuserlist_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifyuserlist_user_groups_id_seq', 1, false);


--
-- Name: garpix_notify_notifyuserlistparticipant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_notifyuserlistparticipant_id_seq', 1, false);


--
-- Name: garpix_notify_smtpaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_notify_smtpaccount_id_seq', 1, false);


--
-- Name: garpix_page_basepage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_page_basepage_id_seq', 41, true);


--
-- Name: garpix_page_basepage_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.garpix_page_basepage_sites_id_seq', 40, true);


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: electroplace_benefits electroplace_benefits_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_benefits
    ADD CONSTRAINT electroplace_benefits_pkey PRIMARY KEY (id);


--
-- Name: electroplace_brandlistpage electroplace_brandlistpage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_brandlistpage
    ADD CONSTRAINT electroplace_brandlistpage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_brandpage electroplace_brandspage_name_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_brandpage
    ADD CONSTRAINT electroplace_brandspage_name_key UNIQUE (name);


--
-- Name: electroplace_brandpage electroplace_brandspage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_brandpage
    ADD CONSTRAINT electroplace_brandspage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_catalogpage electroplace_catalogpage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_catalogpage
    ADD CONSTRAINT electroplace_catalogpage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_contactpage electroplace_contactpage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_contactpage
    ADD CONSTRAINT electroplace_contactpage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_homepage electroplace_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_homepage
    ADD CONSTRAINT electroplace_homepage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_newslistpage electroplace_newslistpage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_newslistpage
    ADD CONSTRAINT electroplace_newslistpage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_newspage electroplace_newspage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_newspage
    ADD CONSTRAINT electroplace_newspage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_productpage electroplace_productpage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_productpage
    ADD CONSTRAINT electroplace_productpage_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_productscategorypage electroplace_productscategory_name_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_productscategorypage
    ADD CONSTRAINT electroplace_productscategory_name_key UNIQUE (name);


--
-- Name: electroplace_productscategorypage electroplace_productscategory_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_productscategorypage
    ADD CONSTRAINT electroplace_productscategory_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: electroplace_promoslider electroplace_promoslider_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_promoslider
    ADD CONSTRAINT electroplace_promoslider_pkey PRIMARY KEY (id);


--
-- Name: fcm_django_fcmdevice fcm_django_fcmdevice_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.fcm_django_fcmdevice
    ADD CONSTRAINT fcm_django_fcmdevice_pkey PRIMARY KEY (id);


--
-- Name: garpix_menu_menuitem garpix_menu_menuitem_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_menu_menuitem
    ADD CONSTRAINT garpix_menu_menuitem_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notify_files garpix_notify_notify_fil_notify_id_notifyfile_id_0c4b8664_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_fil_notify_id_notifyfile_id_0c4b8664_uniq UNIQUE (notify_id, notifyfile_id);


--
-- Name: garpix_notify_notify_files garpix_notify_notify_files_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_files_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notify garpix_notify_notify_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify
    ADD CONSTRAINT garpix_notify_notify_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifycategory garpix_notify_notifycategory_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifycategory
    ADD CONSTRAINT garpix_notify_notifycategory_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyconfig garpix_notify_notifyconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyconfig
    ADD CONSTRAINT garpix_notify_notifyconfig_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyerrorlog garpix_notify_notifyerrorlog_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyerrorlog
    ADD CONSTRAINT garpix_notify_notifyerrorlog_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyfile garpix_notify_notifyfile_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyfile
    ADD CONSTRAINT garpix_notify_notifyfile_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notifytemp_notifytemplate_id_notify_d244696d_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notifytemp_notifytemplate_id_notify_d244696d_uniq UNIQUE (notifytemplate_id, notifyuserlist_id);


--
-- Name: garpix_notify_notifytemplate garpix_notify_notifytemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate
    ADD CONSTRAINT garpix_notify_notifytemplate_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notifytemplate_user_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notifytemplate_user_lists_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyuserlist_user_groups garpix_notify_notifyuser_notifyuserlist_id_group__826a2f23_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist_user_groups
    ADD CONSTRAINT garpix_notify_notifyuser_notifyuserlist_id_group__826a2f23_uniq UNIQUE (notifyuserlist_id, group_id);


--
-- Name: garpix_notify_notifyuserlist garpix_notify_notifyuserlist_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist
    ADD CONSTRAINT garpix_notify_notifyuserlist_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyuserlist_user_groups garpix_notify_notifyuserlist_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist_user_groups
    ADD CONSTRAINT garpix_notify_notifyuserlist_user_groups_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyuserlistparticipant garpix_notify_notifyuserlistparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant
    ADD CONSTRAINT garpix_notify_notifyuserlistparticipant_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_smtpaccount garpix_notify_smtpaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_smtpaccount
    ADD CONSTRAINT garpix_notify_smtpaccount_pkey PRIMARY KEY (id);


--
-- Name: garpix_page_basepage garpix_page_basepage_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage
    ADD CONSTRAINT garpix_page_basepage_pkey PRIMARY KEY (id);


--
-- Name: garpix_page_basepage_sites garpix_page_basepage_sites_basepage_id_site_id_5e80fdb2_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage_sites
    ADD CONSTRAINT garpix_page_basepage_sites_basepage_id_site_id_5e80fdb2_uniq UNIQUE (basepage_id, site_id);


--
-- Name: garpix_page_basepage_sites garpix_page_basepage_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage_sites
    ADD CONSTRAINT garpix_page_basepage_sites_pkey PRIMARY KEY (id);


--
-- Name: garpixcms_page garpixcms_page_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpixcms_page
    ADD CONSTRAINT garpixcms_page_pkey PRIMARY KEY (basepage_ptr_id);


--
-- Name: user_user_groups user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_user_id_group_id_bb60391f_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);


--
-- Name: user_user user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);


--
-- Name: user_user user_user_username_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: electroplace_brandspage_name_924d44ae_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX electroplace_brandspage_name_924d44ae_like ON public.electroplace_brandpage USING btree (name varchar_pattern_ops);


--
-- Name: electroplace_productpage_brands_id_4b40567f; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX electroplace_productpage_brands_id_4b40567f ON public.electroplace_productpage USING btree (brand_id);


--
-- Name: electroplace_productpage_is_new_5fd8cccd; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX electroplace_productpage_is_new_5fd8cccd ON public.electroplace_productpage USING btree (is_new);


--
-- Name: electroplace_productpage_is_stock_53a3e200; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX electroplace_productpage_is_stock_53a3e200 ON public.electroplace_productpage USING btree (is_stock);


--
-- Name: electroplace_productscategory_name_81c204af_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX electroplace_productscategory_name_81c204af_like ON public.electroplace_productscategorypage USING btree (name varchar_pattern_ops);


--
-- Name: electroplace_promoslider_brand_id_722e04ef; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX electroplace_promoslider_brand_id_722e04ef ON public.electroplace_promoslider USING btree (brand_id);


--
-- Name: electroplace_promoslider_is_active_47e93355; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX electroplace_promoslider_is_active_47e93355 ON public.electroplace_promoslider USING btree (is_active);


--
-- Name: fcm_django_fcmdevice_device_id_a9406c36; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX fcm_django_fcmdevice_device_id_a9406c36 ON public.fcm_django_fcmdevice USING btree (device_id);


--
-- Name: fcm_django_fcmdevice_user_id_6cdfc0a2; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX fcm_django_fcmdevice_user_id_6cdfc0a2 ON public.fcm_django_fcmdevice USING btree (user_id);


--
-- Name: garpix_menu_menuitem_page_id_ee746656; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_menu_menuitem_page_id_ee746656 ON public.garpix_menu_menuitem USING btree (page_id);


--
-- Name: garpix_menu_menuitem_parent_id_0fa7f5f4; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_menu_menuitem_parent_id_0fa7f5f4 ON public.garpix_menu_menuitem USING btree (parent_id);


--
-- Name: garpix_menu_menuitem_tree_id_c2fc2f46; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_menu_menuitem_tree_id_c2fc2f46 ON public.garpix_menu_menuitem USING btree (tree_id);


--
-- Name: garpix_notify_notify_category_id_0a47804b; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notify_category_id_0a47804b ON public.garpix_notify_notify USING btree (category_id);


--
-- Name: garpix_notify_notify_files_notify_id_60e05d3f; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notify_files_notify_id_60e05d3f ON public.garpix_notify_notify_files USING btree (notify_id);


--
-- Name: garpix_notify_notify_files_notifyfile_id_3caa1c8f; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notify_files_notifyfile_id_3caa1c8f ON public.garpix_notify_notify_files USING btree (notifyfile_id);


--
-- Name: garpix_notify_notify_user_id_2415ab78; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notify_user_id_2415ab78 ON public.garpix_notify_notify USING btree (user_id);


--
-- Name: garpix_notify_notifyerrorlog_notify_id_4fda0b60; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifyerrorlog_notify_id_4fda0b60 ON public.garpix_notify_notifyerrorlog USING btree (notify_id);


--
-- Name: garpix_notify_notifytempla_notifytemplate_id_5468a3e9; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifytempla_notifytemplate_id_5468a3e9 ON public.garpix_notify_notifytemplate_user_lists USING btree (notifytemplate_id);


--
-- Name: garpix_notify_notifytempla_notifyuserlist_id_08fe5004; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifytempla_notifyuserlist_id_08fe5004 ON public.garpix_notify_notifytemplate_user_lists USING btree (notifyuserlist_id);


--
-- Name: garpix_notify_notifytemplate_category_id_409f148a; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifytemplate_category_id_409f148a ON public.garpix_notify_notifytemplate USING btree (category_id);


--
-- Name: garpix_notify_notifytemplate_user_id_00054b59; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifytemplate_user_id_00054b59 ON public.garpix_notify_notifytemplate USING btree (user_id);


--
-- Name: garpix_notify_notifyuserli_notifyuserlist_id_e03ca697; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifyuserli_notifyuserlist_id_e03ca697 ON public.garpix_notify_notifyuserlist_user_groups USING btree (notifyuserlist_id);


--
-- Name: garpix_notify_notifyuserlist_user_groups_group_id_2c906db3; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifyuserlist_user_groups_group_id_2c906db3 ON public.garpix_notify_notifyuserlist_user_groups USING btree (group_id);


--
-- Name: garpix_notify_notifyuserlistparticipant_user_id_d32d21eb; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifyuserlistparticipant_user_id_d32d21eb ON public.garpix_notify_notifyuserlistparticipant USING btree (user_id);


--
-- Name: garpix_notify_notifyuserlistparticipant_user_list_id_58577a9f; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_notifyuserlistparticipant_user_list_id_58577a9f ON public.garpix_notify_notifyuserlistparticipant USING btree (user_list_id);


--
-- Name: garpix_notify_smtpaccount_category_id_5e9a374c; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_notify_smtpaccount_category_id_5e9a374c ON public.garpix_notify_smtpaccount USING btree (category_id);


--
-- Name: garpix_page_basepage_parent_id_7b55a93d; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_page_basepage_parent_id_7b55a93d ON public.garpix_page_basepage USING btree (parent_id);


--
-- Name: garpix_page_basepage_polymorphic_ctype_id_dfa626b6; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_page_basepage_polymorphic_ctype_id_dfa626b6 ON public.garpix_page_basepage USING btree (polymorphic_ctype_id);


--
-- Name: garpix_page_basepage_sites_basepage_id_57ebf6fc; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_page_basepage_sites_basepage_id_57ebf6fc ON public.garpix_page_basepage_sites USING btree (basepage_id);


--
-- Name: garpix_page_basepage_sites_site_id_4e21af6e; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_page_basepage_sites_site_id_4e21af6e ON public.garpix_page_basepage_sites USING btree (site_id);


--
-- Name: garpix_page_basepage_slug_cb93d5dd; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_page_basepage_slug_cb93d5dd ON public.garpix_page_basepage USING btree (slug);


--
-- Name: garpix_page_basepage_slug_cb93d5dd_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_page_basepage_slug_cb93d5dd_like ON public.garpix_page_basepage USING btree (slug varchar_pattern_ops);


--
-- Name: garpix_page_basepage_tree_id_5882a981; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX garpix_page_basepage_tree_id_5882a981 ON public.garpix_page_basepage USING btree (tree_id);


--
-- Name: user_user_groups_group_id_c57f13c0; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);


--
-- Name: user_user_groups_user_id_13f9a20d; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);


--
-- Name: user_user_user_permissions_permission_id_ce49d4de; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);


--
-- Name: user_user_user_permissions_user_id_31782f58; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);


--
-- Name: user_user_username_e2bdfe0c_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX user_user_username_e2bdfe0c_like ON public.user_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_brandlistpage electroplace_brandli_basepage_ptr_id_ffb8a3a3_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_brandlistpage
    ADD CONSTRAINT electroplace_brandli_basepage_ptr_id_ffb8a3a3_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_brandpage electroplace_brandsp_basepage_ptr_id_cb15e9e0_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_brandpage
    ADD CONSTRAINT electroplace_brandsp_basepage_ptr_id_cb15e9e0_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_catalogpage electroplace_catalog_basepage_ptr_id_df744a8f_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_catalogpage
    ADD CONSTRAINT electroplace_catalog_basepage_ptr_id_df744a8f_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_contactpage electroplace_contact_basepage_ptr_id_395ded6d_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_contactpage
    ADD CONSTRAINT electroplace_contact_basepage_ptr_id_395ded6d_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_homepage electroplace_homepag_basepage_ptr_id_06017f98_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_homepage
    ADD CONSTRAINT electroplace_homepag_basepage_ptr_id_06017f98_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_newslistpage electroplace_newslis_basepage_ptr_id_9586c944_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_newslistpage
    ADD CONSTRAINT electroplace_newslis_basepage_ptr_id_9586c944_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_newspage electroplace_newspag_basepage_ptr_id_9aed3846_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_newspage
    ADD CONSTRAINT electroplace_newspag_basepage_ptr_id_9aed3846_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_productscategorypage electroplace_product_basepage_ptr_id_842bc14a_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_productscategorypage
    ADD CONSTRAINT electroplace_product_basepage_ptr_id_842bc14a_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_productpage electroplace_product_basepage_ptr_id_cd1e474b_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_productpage
    ADD CONSTRAINT electroplace_product_basepage_ptr_id_cd1e474b_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: electroplace_promoslider electroplace_promosl_brand_id_722e04ef_fk_electropl; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.electroplace_promoslider
    ADD CONSTRAINT electroplace_promosl_brand_id_722e04ef_fk_electropl FOREIGN KEY (brand_id) REFERENCES public.electroplace_brandpage(basepage_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fcm_django_fcmdevice fcm_django_fcmdevice_user_id_6cdfc0a2_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.fcm_django_fcmdevice
    ADD CONSTRAINT fcm_django_fcmdevice_user_id_6cdfc0a2_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_menu_menuitem garpix_menu_menuitem_page_id_ee746656_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_menu_menuitem
    ADD CONSTRAINT garpix_menu_menuitem_page_id_ee746656_fk_garpix_pa FOREIGN KEY (page_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_menu_menuitem garpix_menu_menuitem_parent_id_0fa7f5f4_fk_garpix_me; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_menu_menuitem
    ADD CONSTRAINT garpix_menu_menuitem_parent_id_0fa7f5f4_fk_garpix_me FOREIGN KEY (parent_id) REFERENCES public.garpix_menu_menuitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify garpix_notify_notify_category_id_0a47804b_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify
    ADD CONSTRAINT garpix_notify_notify_category_id_0a47804b_fk_garpix_no FOREIGN KEY (category_id) REFERENCES public.garpix_notify_notifycategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate garpix_notify_notify_category_id_409f148a_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate
    ADD CONSTRAINT garpix_notify_notify_category_id_409f148a_fk_garpix_no FOREIGN KEY (category_id) REFERENCES public.garpix_notify_notifycategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifyuserlist_user_groups garpix_notify_notify_group_id_2c906db3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist_user_groups
    ADD CONSTRAINT garpix_notify_notify_group_id_2c906db3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifyerrorlog garpix_notify_notify_notify_id_4fda0b60_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyerrorlog
    ADD CONSTRAINT garpix_notify_notify_notify_id_4fda0b60_fk_garpix_no FOREIGN KEY (notify_id) REFERENCES public.garpix_notify_notify(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify_files garpix_notify_notify_notify_id_60e05d3f_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_notify_id_60e05d3f_fk_garpix_no FOREIGN KEY (notify_id) REFERENCES public.garpix_notify_notify(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify_files garpix_notify_notify_notifyfile_id_3caa1c8f_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_notifyfile_id_3caa1c8f_fk_garpix_no FOREIGN KEY (notifyfile_id) REFERENCES public.garpix_notify_notifyfile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notify_notifytemplate_id_5468a3e9_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notify_notifytemplate_id_5468a3e9_fk_garpix_no FOREIGN KEY (notifytemplate_id) REFERENCES public.garpix_notify_notifytemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notify_notifyuserlist_id_08fe5004_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notify_notifyuserlist_id_08fe5004_fk_garpix_no FOREIGN KEY (notifyuserlist_id) REFERENCES public.garpix_notify_notifyuserlist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifyuserlist_user_groups garpix_notify_notify_notifyuserlist_id_e03ca697_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist_user_groups
    ADD CONSTRAINT garpix_notify_notify_notifyuserlist_id_e03ca697_fk_garpix_no FOREIGN KEY (notifyuserlist_id) REFERENCES public.garpix_notify_notifyuserlist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify garpix_notify_notify_user_id_2415ab78_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notify
    ADD CONSTRAINT garpix_notify_notify_user_id_2415ab78_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifyuserlistparticipant garpix_notify_notify_user_id_d32d21eb_fk_user_user; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant
    ADD CONSTRAINT garpix_notify_notify_user_id_d32d21eb_fk_user_user FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifyuserlistparticipant garpix_notify_notify_user_list_id_58577a9f_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant
    ADD CONSTRAINT garpix_notify_notify_user_list_id_58577a9f_fk_garpix_no FOREIGN KEY (user_list_id) REFERENCES public.garpix_notify_notifyuserlist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate garpix_notify_notifytemplate_user_id_00054b59_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate
    ADD CONSTRAINT garpix_notify_notifytemplate_user_id_00054b59_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_smtpaccount garpix_notify_smtpac_category_id_5e9a374c_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_notify_smtpaccount
    ADD CONSTRAINT garpix_notify_smtpac_category_id_5e9a374c_fk_garpix_no FOREIGN KEY (category_id) REFERENCES public.garpix_notify_notifycategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_page_basepage_sites garpix_page_basepage_basepage_id_57ebf6fc_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage_sites
    ADD CONSTRAINT garpix_page_basepage_basepage_id_57ebf6fc_fk_garpix_pa FOREIGN KEY (basepage_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_page_basepage garpix_page_basepage_parent_id_7b55a93d_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage
    ADD CONSTRAINT garpix_page_basepage_parent_id_7b55a93d_fk_garpix_pa FOREIGN KEY (parent_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_page_basepage garpix_page_basepage_polymorphic_ctype_id_dfa626b6_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage
    ADD CONSTRAINT garpix_page_basepage_polymorphic_ctype_id_dfa626b6_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_page_basepage_sites garpix_page_basepage_sites_site_id_4e21af6e_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpix_page_basepage_sites
    ADD CONSTRAINT garpix_page_basepage_sites_site_id_4e21af6e_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpixcms_page garpixcms_page_basepage_ptr_id_7d163ae4_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.garpixcms_page
    ADD CONSTRAINT garpixcms_page_basepage_ptr_id_7d163ae4_fk_garpix_pa FOREIGN KEY (basepage_ptr_id) REFERENCES public.garpix_page_basepage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permi_permission_id_ce49d4de_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: post
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO post;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: post
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

