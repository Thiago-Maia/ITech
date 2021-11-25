
CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL,
                nk_data DATE NOT NULL,
                desc_data_completa VARCHAR(60) NOT NULL,
                nr_ano INTEGER NOT NULL,
                nm_trimestre VARCHAR(20) NOT NULL,
                nr_ano_trimestre VARCHAR(20) NOT NULL,
                nr_mes INTEGER NOT NULL,
                nm_mes VARCHAR(20) NOT NULL,
                ano_mes VARCHAR(20) NOT NULL,
                nr_semana INTEGER NOT NULL,
                ano_semana VARCHAR(20) NOT NULL,
                nr_dia INTEGER NOT NULL,
                nr_dia_ano INTEGER NOT NULL,
                nm_dia_semana VARCHAR(20) NOT NULL,
                flag_final_semana CHAR(3) NOT NULL,
                flag_feriado CHAR(3) NOT NULL,
                nm_feriado VARCHAR(60) NOT NULL,
                etl_dt_inicio TIMESTAMP NOT NULL,
                etl_dt_fim TIMESTAMP NOT NULL,
                CONSTRAINT sk_data_pk PRIMARY KEY (sk_data)
);


CREATE SEQUENCE public.dm_vendedor_sk_vendedor_seq;

CREATE TABLE public.dm_vendedor (
                sk_vendedor INTEGER NOT NULL DEFAULT nextval('public.dm_vendedor_sk_vendedor_seq'),
                nk_vendedor INTEGER NOT NULL,
                nm_vendedor VARCHAR(50) NOT NULL,
                etl_versao INTEGER NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                nota VARCHAR(10) NOT NULL,
                cpf_vendedor VARCHAR(50) NOT NULL,
                sexo CHAR(1) NOT NULL,
                CONSTRAINT sk_vendedor PRIMARY KEY (sk_vendedor)
);


ALTER SEQUENCE public.dm_vendedor_sk_vendedor_seq OWNED BY public.dm_vendedor.sk_vendedor;

CREATE SEQUENCE public.dm_produto_sk_produto_seq;

CREATE TABLE public.dm_produto (
                sk_produto INTEGER NOT NULL DEFAULT nextval('public.dm_produto_sk_produto_seq'),
                nk_produto INTEGER NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                nome_produto VARCHAR(50) NOT NULL,
                valor INTEGER NOT NULL,
                etl_versao INTEGER NOT NULL,
                CONSTRAINT sk_produto PRIMARY KEY (sk_produto)
);


ALTER SEQUENCE public.dm_produto_sk_produto_seq OWNED BY public.dm_produto.sk_produto;

CREATE SEQUENCE public.dm_cliente_sk_cliente_seq;

CREATE TABLE public.dm_cliente (
                sk_cliente INTEGER NOT NULL DEFAULT nextval('public.dm_cliente_sk_cliente_seq'),
                nk_cliente INTEGER NOT NULL,
                etl_versao INTEGER NOT NULL,
                cidade VARCHAR(50) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                etl_dt_fim DATE NOT NULL,
                nome_cliente VARCHAR(50) NOT NULL,
                sexo VARCHAR(50) NOT NULL,
                cpf_cliente VARCHAR(50) NOT NULL,
                CONSTRAINT sk_cliente PRIMARY KEY (sk_cliente)
);


ALTER SEQUENCE public.dm_cliente_sk_cliente_seq OWNED BY public.dm_cliente.sk_cliente;

CREATE TABLE public.ft_compra (
                sk_produto INTEGER NOT NULL,
                sk_cliente INTEGER NOT NULL,
                sk_vendedor INTEGER NOT NULL,
                sk_data INTEGER NOT NULL,
                dd_codCompra INTEGER NOT NULL,
                dd_horaCompra VARCHAR(50) NOT NULL,
                qtd INTEGER NOT NULL,
                md_valortotal INTEGER NOT NULL
);


ALTER TABLE public.ft_compra ADD CONSTRAINT dim_data_ft_compra_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_compra ADD CONSTRAINT dm_vendedor_ft_compra_fk
FOREIGN KEY (sk_vendedor)
REFERENCES public.dm_vendedor (sk_vendedor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_compra ADD CONSTRAINT dm_produto_ft_compra_fk
FOREIGN KEY (sk_produto)
REFERENCES public.dm_produto (sk_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_compra ADD CONSTRAINT dm_cliente_ft_compra_fk
FOREIGN KEY (sk_cliente)
REFERENCES public.dm_cliente (sk_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;