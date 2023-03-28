-- Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными

-- Выведите название, производителя и цену для товаров, количество которых превышает 2

-- Выведите весь ассортимент товаров марки “Samsung”


DROP DATABASE IF EXISTS hw1;
CREATE DATABASE hw1;
USE hw1;

-- мобилки
CREATE TABLE mobile_phones(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	product_name VARCHAR(45) NOT NULL, 
	manufacter VARCHAR(45) NOT NULL,
    product_count INT NOT NULL,
	price INT NOT NULL
);


-- наполнение
INSERT INTO mobile_phones (product_name, manufacter, product_count, price)
VALUES 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);	


SELECT manufacter, price FROM mobile_phones WHERE product_count > 2;


SELECT * FROM mobile_phones WHERE manufacter = 'Samsung';

