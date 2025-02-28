DROP TABLE IF EXISTS public.users CASCADE;
DROP TABLE IF EXISTS public.type_product CASCADE;
DROP TABLE IF EXISTS public.products;

CREATE TABLE public.users
(id bigserial PRIMARY KEY,
username varchar(255) unique
);
CREATE INDEX idx_users_id ON public.users(id);

insert into public.users (username)
values
    ('Evgen'),
    ('Vasia'),
    ('Sergey'),
    ('Aleksey'),
    ('Katya'),
    ('Vladimir'),
    ('Denis');

CREATE TABLE public.type_product
(id bigserial PRIMARY KEY,
 product varchar(25) unique);

insert into public.type_product (product)
values
    ('account'),
    ('card');

CREATE TABLE public.products
(id bigserial PRIMARY KEY,
 account_number varchar(25),
 balance money,
 type_product bigint references public.type_product (id),
 user_id bigint references public.users (id));
CREATE INDEX idx_products_id ON public.products(id);

insert into public.products (account_number, balance, type_product, user_id)
values
    ('40802810345124535123', 123.12, 1, 1),
    ('6453411547575745431', 323.44, 2, 3),
    ('1234567889', 53535.00, 2, 3),
    ('40802810233223322122', 555.12, 1, 1)
;
