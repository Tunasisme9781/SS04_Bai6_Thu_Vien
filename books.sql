create table books(
                      id serial primary key,
                      title varchar(150),
                      author varchar(100),
                      category varchar(50),
                      publish_year int,
                      price decimal(10,2),
                      stock int
);
insert into books(title, author, category, publish_year, price, stock) values
                                                                           ('Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),
                                                                           ('Học SQL qua ví dụ', 'Trần Thị Hạnh', 'CSDL', 2020, 125000, 12),
                                                                           ('Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),
                                                                           ('Phân tích dữ liệu với Python', 'Lê Quốc Bảo', 'CNTT', 2022, 180000, null),
                                                                           ('Quản trị cơ sở dữ liệu', 'Nguyễn Thị Minh', 'CSDL', 2021, 150000, 5),
                                                                           ('Học máy cho người mới bắt đầu', 'Nguyễn Văn Nam', 'AI', 2023, 220000, 8),
                                                                           ('Khoa học dữ liệu cơ bản', 'Nguyễn Văn Nam', 'AI', 2023, 220000, null);
update books set price = price + price * 0.1
where publish_year >= 2021 and price < 200000;

update books set stock=0 where stock is null;

select  author, category, price from books
where category in ('CNTT', 'AI') and price between 100000 and 250000;

select *from books order by price desc ,title asc ;

select title from books where title ilike '%học%';

select distinct category from books where publish_year > 2020;

select * from books order by id asc limit 2 offset 1;