CREATE TABLE IF NOT EXISTS product(
p_id VARCHAR(10) NOT NULL,
p_name VARCHAR(100),
p_unitPrice INTEGER,
p_description TEXT,
p_category VARCHAR(20),
p_manufacturer VARCHAR(20),
p_unitsInStock LONG,
p_condition VARCHAR(20),
p_fileName VARCHAR(20),
PRIMARY KEY (p_id)
)default CHARSET=utf8;

create table member(
id varchar(10) not null,
password varchar(10) not null,
name varchar(10) not null,
gender varchar(4),
birth varchar(10),
mail varchar(30),
phone varchar(20),
address varchar(90),
regist_day varchar(50),
primary key(id)
)default CHARSET=utf8;
