PGDMP     0                     {            laboratorio    15.1    15.1 !    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    33173    laboratorio    DATABASE        CREATE DATABASE laboratorio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE laboratorio;
                postgres    false            ?            1259    33175    carrera    TABLE     t   CREATE TABLE public.carrera (
    id_carrera integer NOT NULL,
    nombre_carrera character varying(50) NOT NULL
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            ?            1259    33174    carrera_id_carrera_seq    SEQUENCE     ?   ALTER TABLE public.carrera ALTER COLUMN id_carrera ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.carrera_id_carrera_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            ?            1259    33189    grupo    TABLE     ?   CREATE TABLE public.grupo (
    id_grupo integer NOT NULL,
    nombre_grupo character varying(5) NOT NULL,
    id_semestre integer NOT NULL
);
    DROP TABLE public.grupo;
       public         heap    postgres    false            ?            1259    33188    grupo_id_grupo_seq    SEQUENCE     ?   ALTER TABLE public.grupo ALTER COLUMN id_grupo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.grupo_id_grupo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            ?            1259    33181    semestre    TABLE     p   CREATE TABLE public.semestre (
    id_semestre integer NOT NULL,
    nombre_semestre character varying(1050)
);
    DROP TABLE public.semestre;
       public         heap    postgres    false            ?            1259    33180    semestre_id_semestre_seq    SEQUENCE     ?   ALTER TABLE public.semestre ALTER COLUMN id_semestre ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.semestre_id_semestre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            ?            1259    33199    tipo_usuario    TABLE     q   CREATE TABLE public.tipo_usuario (
    id_usuario integer NOT NULL,
    nombre character varying(10) NOT NULL
);
     DROP TABLE public.tipo_usuario;
       public         heap    postgres    false            ?            1259    33230    tipo_usuario_id_usuario_seq    SEQUENCE     ?   ALTER TABLE public.tipo_usuario ALTER COLUMN id_usuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipo_usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            ?            1259    33233    usuarios    TABLE     X  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellidos character varying(50) NOT NULL,
    matricula_clave character varying(9) NOT NULL,
    telefono character varying(10),
    id_grupo integer NOT NULL,
    id_tipo_usuario integer NOT NULL,
    id_carrera integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            ?            1259    33232    usuarios_id_usuario_seq    SEQUENCE     ?   ALTER TABLE public.usuarios ALTER COLUMN id_usuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223                      0    33175    carrera 
   TABLE DATA           =   COPY public.carrera (id_carrera, nombre_carrera) FROM stdin;
    public          postgres    false    215   b%                 0    33189    grupo 
   TABLE DATA           D   COPY public.grupo (id_grupo, nombre_grupo, id_semestre) FROM stdin;
    public          postgres    false    219   &                 0    33181    semestre 
   TABLE DATA           @   COPY public.semestre (id_semestre, nombre_semestre) FROM stdin;
    public          postgres    false    217   '                 0    33199    tipo_usuario 
   TABLE DATA           :   COPY public.tipo_usuario (id_usuario, nombre) FROM stdin;
    public          postgres    false    220   ?'                 0    33233    usuarios 
   TABLE DATA           ?   COPY public.usuarios (id_usuario, nombre, apellidos, matricula_clave, telefono, id_grupo, id_tipo_usuario, id_carrera) FROM stdin;
    public          postgres    false    223   ?'       %           0    0    carrera_id_carrera_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.carrera_id_carrera_seq', 6, true);
          public          postgres    false    214            &           0    0    grupo_id_grupo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.grupo_id_grupo_seq', 120, true);
          public          postgres    false    218            '           0    0    semestre_id_semestre_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.semestre_id_semestre_seq', 11, true);
          public          postgres    false    216            (           0    0    tipo_usuario_id_usuario_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tipo_usuario_id_usuario_seq', 2, true);
          public          postgres    false    221            )           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 24, true);
          public          postgres    false    222            z           2606    33179    carrera carrera_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (id_carrera);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public            postgres    false    215            ~           2606    33193    grupo grupo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT grupo_pkey PRIMARY KEY (id_grupo);
 :   ALTER TABLE ONLY public.grupo DROP CONSTRAINT grupo_pkey;
       public            postgres    false    219            |           2606    33185    semestre semestre_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.semestre
    ADD CONSTRAINT semestre_pkey PRIMARY KEY (id_semestre);
 @   ALTER TABLE ONLY public.semestre DROP CONSTRAINT semestre_pkey;
       public            postgres    false    217            ?           2606    33203    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id_usuario);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public            postgres    false    220            ?           2606    33237    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    223            ?           2606    33248    usuarios id_carrera    FK CONSTRAINT        ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT id_carrera FOREIGN KEY (id_carrera) REFERENCES public.carrera(id_carrera);
 =   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT id_carrera;
       public          postgres    false    3194    215    223            ?           2606    33238    usuarios id_grupo    FK CONSTRAINT     w   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT id_grupo FOREIGN KEY (id_grupo) REFERENCES public.grupo(id_grupo);
 ;   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT id_grupo;
       public          postgres    false    219    223    3198            ?           2606    33194    grupo id_semestre    FK CONSTRAINT     ?   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT id_semestre FOREIGN KEY (id_semestre) REFERENCES public.semestre(id_semestre);
 ;   ALTER TABLE ONLY public.grupo DROP CONSTRAINT id_semestre;
       public          postgres    false    219    3196    217            ?           2606    33243    usuarios id_tipo_usuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT id_tipo_usuario FOREIGN KEY (id_tipo_usuario) REFERENCES public.tipo_usuario(id_usuario);
 B   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT id_tipo_usuario;
       public          postgres    false    3200    220    223               ?   x?e?M
1?דS????Qt??Ml?褐v?\y?^?2?????޷?Y???	??8e
??.?X?P???O??	??Q???&6?3?T^Y???G?!?U??qE7v?????<??Y??$*)9)?Z??HZ?? |??N?         
  x???u!D?5?Lh ??????X0?b?}?????-F?????9J??k,?e?Fk?u?????8????q??<?i{???\????c;do쐽?C???;do쐽??;e??}?S??ֱ???v?>?)?`?생?ϳ?b???]?/vɾ?%?b???.??d_??}?K?}va?ֵ???C+???Zi???*?,?e??-K	?4?>?,E|??z??T?JSq*Mũ4??T?JSq*Mũ4??T?U?Ub?ߟ?p?????y?W{         n   x?U?;?0??zu
N@0y e??0.,YΤ???A:D?Ϳ?jʬ?ʙ?)???M????}4 ?Y?5#>-???<?=<NX-eGO?h???)??p???o??t\???.0?         !   x?3?t?)????2?(?OK-?/?????? `??         U   x?E?1
?0????@Llb;*R?*?I??9??7?F?Z???V|ٻ?o?J??FR??I?!`x?rbk???8i??/2==???     