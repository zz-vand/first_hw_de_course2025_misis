create table users(
	id integer primary key,
	name character varying(100) not NULL,
	email character varying(150) not null,
	created_at timestamp default current_timestamp
);

INSERT INTO users (id, name, email, created_at) VALUES
(1, 'Иван Иванов', 'ivan@example.com', '2023-01-15 10:00:00'),
(2, 'Петр Петров', 'petr@example.com', '2023-02-10 11:00:00'),
(3, 'Сидор Сидоров', 'sidor@example.com', '2023-03-05 12:00:00'),
(4, 'Анна Аннова', 'anna@example.com', '2023-04-20 13:00:00'),
(5, 'Мария Морина', 'maria@example.com', '2023-05-25 14:00:00'),
(6, 'Дементий Деменьтев', 'dementiy@example.com', '2023-01-07 17:00:00');

select * from users; 


create table categories(
	id integer primary key,
	name varchar(100) not null
);

INSERT INTO categories (id, name) VALUES
(1, 'Электроника'),
(2, 'Одежда'),
(3, 'Книги'),
(4, 'Мебель'),
(5, 'Спорт');


select * from categories;



create table products(
	id integer primary key,
	name varchar(100) not null,
	price numeric(10, 2),
	category_id integer not null
);

INSERT INTO products (id, name, price, category_id) VALUES
(1, 'Смартфон', 29999.99, 1),
(2, 'Ноутбук', 59999.99, 1),
(3, 'Футболка', 1999.99, 2),
(4, 'Джинсы', 4999.99, 2),
(5, 'Книга "SQL для начинающих"', 999.99, 3),
(6, 'Книга "Python для профессионалов"', 1499.99, 3),
(7, 'Диван', 29999.99, 4),
(8, 'Стул', 4999.99, 4),
(9, 'Велосипед', 19999.99, 5),
(10, 'Гантели', 2999.99, 5);


create table orders(
	id integer primary key,
	user_id integer not null,
	status varchar(50),
	created_at timestamp default current_timestamp
) 




INSERT INTO orders (id, user_id, status, created_at) VALUES
(1, 1, 'Оплачен', '2023-01-20 10:00:00'),
(2, 2, 'Ожидает оплаты', '2023-02-15 11:00:00'),
(3, 3, 'Доставлен', '2023-03-10 12:00:00'),
(4, 4, 'Оплачен', '2023-04-05 13:00:00'),
(5, 5, 'Ожидает оплаты', '2023-05-01 14:00:00'),
(6, 1, 'Доставлен', '2023-01-25 15:00:00'),
(7, 2, 'Оплачен', '2023-02-20 16:00:00'),
(8, 3, 'Ожидает оплаты', '2023-03-15 17:00:00'),
(9, 4, 'Доставлен', '2023-04-10 18:00:00'),
(10, 5, 'Оплачен', '2023-05-05 19:00:00'),
(11, 1, 'Ожидает оплаты', '2023-01-30 20:00:00'),
(12, 2, 'Доставлен', '2023-03-25 21:00:00'),
(13, 3, 'Оплачен', '2023-03-20 22:00:00'),
(14, 4, 'Ожидает оплаты', '2023-04-15 23:00:00'),
(15, 5, 'Доставлен', '2023-05-10 10:00:00'),
(16, 1, 'Оплачен', '2023-01-05 11:00:00'),
(17, 2, 'Ожидает оплаты', '2023-02-28 12:00:00'),
(18, 3, 'Доставлен', '2023-03-25 13:00:00'),
(19, 4, 'Оплачен', '2023-04-20 14:00:00'),
(20, 5, 'Ожидает оплаты', '2023-06-15 15:00:00');



create table order_items(
	id integer primary key,
	order_id integer not null,
	product_id integer,
	quantity integer
	
) 


INSERT INTO order_items (id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 3, 2),
(4, 2, 4, 1),
(5, 3, 5, 1),
(6, 3, 6, 1),
(7, 4, 7, 1),
(8, 4, 8, 2),
(9, 5, 9, 1),
(10, 5, 10, 1),
(11, 6, 1, 1),
(12, 6, 3, 1),
(13, 7, 2, 1),
(14, 7, 4, 1),
(15, 8, 5, 1),
(16, 8, 7, 1),
(17, 9, 6, 1),
(18, 9, 8, 1),
(19, 10, 9, 1),
(20, 10, 10, 1),
(21, 11, 1, 1),
(22, 11, 2, 1),
(23, 12, 3, 1),
(24, 12, 4, 1),
(25, 13, 5, 1),
(26, 13, 6, 1),
(27, 14, 7, 1),
(28, 14, 8, 1),
(29, 15, 9, 1),
(30, 15, 10, 1),
(31, 16, 1, 1),
(32, 16, 3, 1),
(33, 17, 2, 1),
(34, 17, 4, 1),
(35, 18, 5, 1),
(36, 18, 7, 1),
(37, 19, 6, 1),
(38, 19, 8, 1),
(39, 20, 9, 1),
(40, 20, 10, 1);


create table payments(
	id integer primary key,
	order_id integer,
	amount numeric(10, 2),
	payment_date timestamp default current_timestamp
)


INSERT INTO payments (id, order_id, amount, payment_date) VALUES
(1, 1, 89999.98, '2023-01-20 10:05:00'),
(2, 2, 8999.97, NULL),
(3, 3, 2499.98, '2023-03-10 12:05:00'),
(4, 4, 39999.97, '2023-04-05 13:05:00'),
(5, 5, 22999.98, NULL),
(6, 6, 31999.98, '2023-01-25 15:05:00'),
(7, 7, 64999.98, '2023-02-20 16:05:00'),
(8, 8, 30999.98, NULL),
(9, 9, 6499.98, '2023-04-10 18:05:00'),
(10, 10, 22999.98, '2023-05-05 19:05:00'),
(11, 11, 89999.98, NULL),
(12, 12, 6999.98, '2023-02-25 21:05:00'),
(13, 13, 2499.98, '2023-03-20 22:05:00'),
(14, 14, 34999.98, NULL),
(15, 15, 22999.98, '2023-05-10 10:05:00'),
(16, 16, 31999.98, '2023-01-05 11:05:00'),
(17, 17, 64999.98, NULL),
(18, 18, 30999.98, '2023-03-25 13:05:00'),
(19, 19, 6499.98, '2023-04-20 14:05:00'),
(20, 20, 22999.98, NULL);


--2 часть

--1
WITH order_totals AS (
    SELECT
        o.id AS order_id,
        c.name AS category_name,
        SUM(oi.quantity * p.price) AS total_amount
    FROM
        orders o
    JOIN
        order_items oi ON o.id = oi.order_id
    JOIN
        products p ON oi.product_id = p.id
    JOIN
        categories c ON p.category_id = c.id
    WHERE
        o.created_at >= '2023-03-01' AND o.created_at < '2023-04-01'
    GROUP BY
        o.id, c.name
)
SELECT
    category_name,
    AVG(total_amount) AS avg_order_amount
FROM
    order_totals
GROUP BY
    category_name;

--2


WITH paid_orders AS (
    SELECT o.user_id, o.id AS order_id
    FROM orders o
    WHERE o.status = 'Оплачен'
),
order_totals AS (
    SELECT po.user_id, po.order_id, SUM(p.amount) AS total_amount
    FROM paid_orders po
    JOIN payments p ON po.order_id = p.order_id
    GROUP BY po.user_id, po.order_id
),
user_totals AS (
    SELECT ot.user_id, SUM(ot.total_amount) AS total_spent
    FROM order_totals ot
    GROUP BY ot.user_id
),
ranked_users AS (
    SELECT 
        ut.user_id,
        ut.total_spent,
        RANK() OVER (ORDER BY ut.total_spent DESC) AS rank
    FROM user_totals ut
)
SELECT 
    u.name AS user_name,
    ru.total_spent,
    ru.rank
FROM ranked_users ru
JOIN users u ON ru.user_id = u.id
WHERE ru.rank <= 3
ORDER BY ru.rank;


--3


with mounth_orders as (
	select to_char(created_at, 'YYYY-MM') as date, id as order_id
	from orders 
),
mounth_orders_money as (
	select mo.date as month, mo.order_id as order_id, p.amount as spent_order
	from mounth_orders mo
	join
		payments p on p.order_id = mo.order_id
)
select 
	month, count(order_id) as total_orders, sum(spent_order) as total_payments
from mounth_orders_money
GROUP BY month
order by month;


--4 не понял, что является продажей, типо все что есть в orders? 

with items as (
	select o.id order_id
	from orders o
	join 


)


--5


WITH paid_orders AS (
    SELECT o.user_id, o.id AS order_id
    FROM orders o
    WHERE o.status = 'Оплачен'
),
order_totals AS (
    SELECT po.user_id, po.order_id, SUM(p.amount) AS total_amount
    FROM paid_orders po
    JOIN payments p ON po.order_id = p.order_id
    GROUP BY po.user_id, po.order_id
),
user_totals AS (
    SELECT ot.user_id as us_id, SUM(ot.total_amount) AS total_spent
    FROM order_totals ot
    GROUP BY ot.user_id
)
select 
	u.name as user_name, ut.total_spent total_spent
from user_totals ut 
JOIN users u ON ut.us_id = u.id
where total_spent > (SELECT AVG(total_spent) from user_totals);
	

--6
WITH product_sales AS (
    SELECT
        p.category_id,
        p.id AS product_id,
        p.name AS product_name,
        SUM(oi.quantity) AS total_quantity
    FROM order_items oi
    JOIN products p ON oi.product_id = p.id
    GROUP BY p.category_id, p.id, p.name
),
ranked_products AS (
    SELECT
        ps.category_id,
        ps.product_id,
        ps.product_name,
        ps.total_quantity,
        RANK() OVER (PARTITION BY ps.category_id ORDER BY ps.total_quantity DESC) AS rank
    FROM product_sales ps
)
SELECT
    c.name AS category_name,
    rp.product_name,
    rp.total_quantity,
    rp.rank
FROM ranked_products rp
JOIN categories c ON rp.category_id = c.id
WHERE rp.rank <= 3
ORDER BY c.name, rp.rank;














