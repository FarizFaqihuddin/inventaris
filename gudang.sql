PGDMP                         v            gudang    10.4    10.4 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16384    gudang    DATABASE     �   CREATE DATABASE gudang WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE gudang;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12278    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16751    barangs    TABLE     �  CREATE TABLE public.barangs (
    id integer NOT NULL,
    kode_barang character varying(255),
    featured_image character varying(255),
    nama_barang character varying(255),
    jenis_barang character varying(255),
    status character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);
    DROP TABLE public.barangs;
       public         postgres    false    3            �            1259    16749    barangs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.barangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.barangs_id_seq;
       public       postgres    false    204    3            �           0    0    barangs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.barangs_id_seq OWNED BY public.barangs.id;
            public       postgres    false    203            �            1259    16387 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            �            1259    16385    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    3    197            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    16731    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            �            1259    16740 	   pelanggan    TABLE     �  CREATE TABLE public.pelanggan (
    id integer NOT NULL,
    nama_outlet character varying(255) NOT NULL,
    kode_outlet character varying(255) NOT NULL,
    npwp bigint NOT NULL,
    no_telp integer NOT NULL,
    contact_person character varying(255) NOT NULL,
    alamat text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pelanggan;
       public         postgres    false    3            �            1259    16738    pelanggan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pelanggan_id_seq;
       public       postgres    false    3    202            �           0    0    pelanggan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pelanggan_id_seq OWNED BY public.pelanggan.id;
            public       postgres    false    201            �            1259    16720    users    TABLE     C  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    16718    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    3    199            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    198                       2604    16754 
   barangs id    DEFAULT     h   ALTER TABLE ONLY public.barangs ALTER COLUMN id SET DEFAULT nextval('public.barangs_id_seq'::regclass);
 9   ALTER TABLE public.barangs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204                       2604    16390    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197                       2604    16743    pelanggan id    DEFAULT     l   ALTER TABLE ONLY public.pelanggan ALTER COLUMN id SET DEFAULT nextval('public.pelanggan_id_seq'::regclass);
 ;   ALTER TABLE public.pelanggan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202                       2604    16723    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �          0    16751    barangs 
   TABLE DATA               �   COPY public.barangs (id, kode_barang, featured_image, nama_barang, jenis_barang, status, created_at, updated_at, deleted_at) FROM stdin;
    public       postgres    false    204   �*       �          0    16387 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   +       �          0    16731    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    200   �+       �          0    16740 	   pelanggan 
   TABLE DATA               �   COPY public.pelanggan (id, nama_outlet, kode_outlet, npwp, no_telp, contact_person, alamat, created_at, updated_at) FROM stdin;
    public       postgres    false    202   �+       �          0    16720    users 
   TABLE DATA               b   COPY public.users (id, name, email, password, remember_token, created_at, updated_at) FROM stdin;
    public       postgres    false    199   �+       �           0    0    barangs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.barangs_id_seq', 1, true);
            public       postgres    false    203            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 35, true);
            public       postgres    false    196            �           0    0    pelanggan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pelanggan_id_seq', 1, false);
            public       postgres    false    201            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
            public       postgres    false    198                       2606    16759    barangs barangs_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.barangs
    ADD CONSTRAINT barangs_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.barangs DROP CONSTRAINT barangs_pkey;
       public         postgres    false    204                       2606    16392    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197                       2606    16748    pelanggan pelanggan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public         postgres    false    202            	           2606    16730    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    199                       2606    16728    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199                       1259    16737    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    200            �   S   x�3�4000�4642�+�K�(ʯL�.�/΂ԢĤ���<N����bN#C] 2V00�2��24F36�2�*����� ���      �   m   x�U�A
�0��=�$mE#�8ܔ�$�of�>�����<`$BOp�^*\�v5*�$�Ѕ�J|ȍ͎��IŤ4M����>�Èï��y]97|x��#�/�����;�NJ8�      �      x������ � �      �      x������ � �      �   ^   x�3�LL��̃�`R/9?�SŨR��@E?�22��-?�94��'7+;��+�߰�в<L�1���(8�Š0��=�ؼ4%�'0)ٝ3���b���� ZC     