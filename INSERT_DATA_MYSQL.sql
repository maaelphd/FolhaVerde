INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(1,
'PRATO - 1',
15.55,
'/imgs/PRATO1.jpg',
'1');
INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(2,
'PRATO - 2',
18.90,
'/imgs/PRATO2.jpg',
'1');

INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(3,
'PRATO - 3',
20.80,
'/imgs/PRATO3.png',
'1');

INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(4,
'SALADA - 1',
10.00,
'/imgs/SALADA1.jpg',
'0');
INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(5,
'SALADA - 2',
25.70,
'/imgs/SALADA2.jpg',
'0');

INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(6,
'SALADA - 3',
08.00,
'/imgs/SALADA3.jpg',
'0');

INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(7,
'SOBREMESA - 1',
15.50,
'/imgs/SOBREMESA1.jpg',
'2');
INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(8,
'SOBREMESA - 2',
30.00,
'/imgs/SOBREMESA2.jpg',
'2');

INSERT INTO `folhaverde`.`tb_product`
(`id_product`,
`product_name`,
`product_price`,
`product_product_path_image`,
`product_type`)
VALUES
(9,
'SOBREMESA - 3',
11.70,
'/imgs/SOBREMESA3.jpg',
'2');

select * from tb_product;
SELECT id_product, product_name, product_price, product_product_path_image, product_type from folhaverde.tb_product where product_type = '0';