CREATE DATABASE if not exists MARKET;

CREATE TABLE if not exists customers(
customer_id INT primary key,
customer_name varchar(255) default null,
phone varchar(255) NOT NULL
);


CREATE TABLE if not exists orders(
 order_id INT primary key,
order_date date not null,
customer_id INT,
 constraint fk_orders foreign key (customer_id) references customers (customer_id)
 );


 CREATE TABLE if not exists products(
   product_id INT primary key, 
   category varchar(255) not null default "food",
   order_id INT,
  foreign key (order_id) references orders (order_id)
  );